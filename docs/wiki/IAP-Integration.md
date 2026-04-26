# IAP Integration

3 스토어 (Google Play / Apple App Store / Samsung Galaxy Store) 영수증 검증 + 재화 지급 통합 가이드.

## 아키텍처

```
[클라]                         [서버]                    [스토어 API]
  in_app_purchase 패키지
       │
       │ 1. 결제 시도 → 스토어 결제 다이얼로그 노출
       │
       │ 2. 결제 완료 → purchaseStream 콜백
       │
       │ 3. POST /verifyIap.json
       │   {userId, store, productId, purchaseToken}
       │ ─────────────────────────► 4. iap_receipts UNIQUE 체크
       │                            5. verify<Store> 호출
       │                                  ├─► Google: androidpublisher.purchases.products.get
       │                                  ├─► Apple: POST /verifyReceipt
       │                                  └─► Samsung: GET appsItemVerifyIAPReceipt
       │                            6. 응답 받아서:
       │                                - iap_receipts INSERT
       │                                - verified=true 시 wallet 재화 지급
       │ ◄────── {result:'000', granted, coin, gem} ──┤
       │                                              │
       │ 7. completePurchase / finishTransaction
       │
       │ 8. PurchaseEvent broadcast → ShopScreen 잔액 갱신
```

## 4 코인팩 SKU

서버 [`routes/iap.js PRODUCT_CATALOG`](https://github.com/GabrielJung0727/findit-rebuild/blob/main/server/src/routes/iap.js):

| SKU | 코인 | USD | 등록 스토어 |
|---|---:|---:|---|
| `coin_100` | 100 | $0.99 | Google + Apple |
| `coin_250` | 250 | $1.99 | Google + Apple |
| `coin_500` | 500 | $3.99 | Google + Apple |
| `coin_650` | 650 | $4.99 | Google + Apple |
| `000001005358` | 100 | — | Samsung (구 SKU 호환) |
| `000001005359` | 250 | — | Samsung |
| `000001005360` | 500 | — | Samsung |
| `000001005361` | 650 | — | Samsung |

클라 측 SKU set: `IapService.coinSkus = {coin_100, coin_250, coin_500, coin_650}` — Google/Apple 만 활성. Samsung 은 별도 `flutter_samsung_iap` 패키지 (후속).

---

## 클라 측 — `IapService`

`lib/api/iap_service.dart` — `in_app_purchase` 패키지 통합.

### 초기화

```dart
// main.dart 의 auth 변화 listener
if (next.isLoggedIn) {
  await ref.read(iapServiceProvider).init(userId: next.user!.userId);
}
```

내부 동작:
1. `InAppPurchase.isAvailable()` — 스토어 가용성
2. `purchaseStream` 구독 (이후 모든 결제 결과 콜백)
3. `_userId` 저장 (서버 검증 시 첨부)

### 상품 메타 로드

```dart
// shop_screen.dart::_initIap()
final res = await ref.read(iapServiceProvider).loadProducts();
final products = {for (final p in res.productDetails) p.id: p};
// 사용자에게 가격 표시 ($0.99 등) 시 product.price 사용
```

`queryProductDetails` 가 4 SKU 의 메타 (제목/가격/설명/통화) 일괄 조회.

### 결제

```dart
// shop_screen.dart::_buyCoinPack
final product = _products['coin_500'];
await ref.read(iapServiceProvider).buy(product);
// 비동기: OS 결제 다이얼로그 노출 → 사용자 입력 → purchaseStream 콜백
```

`buyConsumable` 호출 — 코인은 소모성(consumable). 비-소모성(보석팩 영구 등) 은 `buyNonConsumable`.

### 결제 결과 처리

`IapService._onUpdates(updates)`:
```dart
for (final pd in updates) {
  switch (pd.status) {
    case PurchaseStatus.pending: break;          // UI spinner
    case PurchaseStatus.purchased: 
    case PurchaseStatus.restored:
      await _handleVerified(pd);
      break;
    case PurchaseStatus.error:
    case PurchaseStatus.canceled:
      if (pd.pendingCompletePurchase) await _iap.completePurchase(pd);
      break;
  }
}
```

`_handleVerified`:
```dart
final receipt = pd.verificationData.serverVerificationData;
final body = await _api.verifyIap(
  userId: _userId,
  store: currentStore,           // 'apple' | 'google'
  productId: pd.productID,
  purchaseToken: receipt,
);
_events.add(PurchaseEvent(
  ok: true,
  productId: pd.productID,
  coin: body['coin'],
  gem: body['gem'],
));
await _iap.completePurchase(pd);    // ← 반드시 호출 (Apple finishTransaction)
```

### 이벤트 broadcast

ShopScreen 이 listen:
```dart
ref.read(iapServiceProvider).events.listen((PurchaseEvent e) {
  if (e.ok) {
    ref.read(authControllerProvider.notifier).applyWalletDelta(
      coin: e.coin, gem: e.gem,
    );
    showSnackBar(l.dlgMsgPaymentSuccess);
  } else {
    showSnackBar(l.msgInvalidPurchase);
  }
});
```

---

## 서버 측 — `verifyIap` 흐름

`routes/iap.js`:
```js
router.all('/member/verifyIap.json', async (req, res, next) => {
  const { userId, store, productId, purchaseToken } = req.body;
  
  if (!['google','samsung','apple'].includes(store)) return fail('unsupported_store');
  
  const entitlement = PRODUCT_CATALOG[productId];
  if (!entitlement) return fail('unknown_product');
  
  const verify = await iapUtil.verifyAndRecord({...});
  if (!verify.ok) return fail(verify.reason);
  if (!verify.verified) return fail('receipt_invalid');
  
  // 재화 지급 트랜잭션
  await tx(async (conn) => {
    if (entitlement.coin > 0) await conn.execute(
      'UPDATE wallets SET coin = coin + ? WHERE user_id = ?',
      [entitlement.coin, userId]
    );
    if (entitlement.gem > 0) await conn.execute(
      'UPDATE wallets SET gem = gem + ? WHERE user_id = ?',
      [entitlement.gem, userId]
    );
  });
  
  res.json({result:'000', orderId, granted: entitlement, coin, gem});
});
```

---

## 스토어별 검증 — `util/iap.js`

### `verifyAndRecord` (공통)

1. `iap_receipts.purchase_token` UNIQUE 체크 → 중복 차단
2. 스토어별 `verifyXxx` 호출
3. `iap_receipts` INSERT (verified=true/false 모두 기록)
4. (UNIQUE 충돌 시 `duplicate_order` 반환)

```js
async function verifyAndRecord({userId, store, productId, purchaseToken, amountCoin, amountGem}) {
  const dup = await query(`SELECT id FROM iap_receipts WHERE purchase_token = ?`, [purchaseToken]);
  if (dup.length > 0) return { ok: false, reason: 'duplicate_token' };
  
  let out;
  if (store === 'google')       out = await verifyGoogle({productId, purchaseToken});
  else if (store === 'samsung') out = await verifySamsung({purchaseToken});
  else if (store === 'apple')   out = await verifyApple({productId, purchaseToken});
  
  await query(`INSERT INTO iap_receipts(...) VALUES(...)`, [...]);
  return { ok: true, verified: out.verified, reason: out.reason, orderId: out.orderId };
}
```

---

## Google Play

### 환경변수
```ini
GOOGLE_PLAY_SERVICE_ACCOUNT_JSON='{"type":"service_account",...}'
GOOGLE_PLAY_PACKAGE_NAME=com.findit.battle
```

### 서비스 계정 발급
1. Google Cloud Console → IAM & Admin → Service Accounts
2. CREATE SERVICE ACCOUNT → Roles: `Pub/Sub` 등 (실제 필요 권한 X)
3. KEYS → ADD KEY → JSON 다운로드
4. Google Play Console → API access → 위 서비스 계정 link → Permissions: "View financial data" + "Manage orders and subscriptions"

### 검증 코드
```js
async function verifyGoogle({productId, purchaseToken}) {
  const { google } = require('googleapis');
  const creds = JSON.parse(process.env.GOOGLE_PLAY_SERVICE_ACCOUNT_JSON);
  const auth = new google.auth.GoogleAuth({
    credentials: creds,
    scopes: ['https://www.googleapis.com/auth/androidpublisher'],
  });
  const androidpublisher = google.androidpublisher({version:'v3', auth});
  
  const resp = await androidpublisher.purchases.products.get({
    packageName: process.env.GOOGLE_PLAY_PACKAGE_NAME,
    productId,
    token: purchaseToken,
  });
  
  // purchaseState: 0=Purchased, 1=Canceled, 2=Pending
  // consumptionState: 0=Yet to be consumed, 1=Consumed
  const verified = resp.data.purchaseState === 0 && resp.data.consumptionState === 0;
  return { verified, raw: resp.data, orderId: resp.data.orderId };
}
```

### 응답 예
```json
{
  "purchaseState": 0,
  "consumptionState": 0,
  "purchaseTimeMillis": "1714305600000",
  "orderId": "GPA.1234-5678-9012-34567",
  "productId": "coin_500",
  ...
}
```

`googleapis` 패키지는 optionalDependency — 미설치 시 `verified=false` 로 fallback (개발 호환).

---

## Apple App Store

### 환경변수
```ini
APPLE_SHARED_SECRET=<App-Specific Shared Secret 32자리 hex>
APPLE_USE_SANDBOX=1   # 개발 시 1, 운영 시 빈 값(=production 우선)
```

### Shared Secret 발급
1. App Store Connect → My Apps → 앱 선택
2. App Information → "App-Specific Shared Secret" → Generate (32자리 hex)
3. **공유 안 함** — 서버 환경변수에만 등록

### 검증 코드 — `/verifyReceipt` (legacy API)
```js
async function verifyApple({productId, purchaseToken, useSandbox}) {
  const body = JSON.stringify({
    'receipt-data': purchaseToken,           // base64 인코딩된 receipt 또는 JWS
    'password': process.env.APPLE_SHARED_SECRET,
    'exclude-old-transactions': true,
  });
  
  async function postTo(host) {
    const resp = await fetch(`https://${host}/verifyReceipt`, {
      method:'POST', body,
      headers: {'Content-Type':'application/json'},
    });
    return resp.json();
  }
  
  const forceSandbox = useSandbox || process.env.APPLE_USE_SANDBOX === '1';
  let data = await postTo(forceSandbox ? 'sandbox.itunes.apple.com' : 'buy.itunes.apple.com');
  
  // 21007: sandbox receipt 인데 production 으로 보냄 → sandbox 재시도
  if (!forceSandbox && data?.status === 21007) {
    data = await postTo('sandbox.itunes.apple.com');
  }
  
  if (data?.status !== 0) {
    return { verified: false, reason: `apple_status_${data?.status}`, raw: data };
  }
  
  // in_app[] 에서 productId 일치 항목 찾기
  const inApp = Array.isArray(data?.receipt?.in_app) ? data.receipt.in_app : [];
  const match = productId
    ? inApp.find(t => t.product_id === productId)
    : inApp[inApp.length - 1];
  
  if (!match) {
    return { verified: false, reason: 'product_not_in_receipt', raw: data };
  }
  return { verified: true, raw: data, orderId: match.transaction_id };
}
```

### Apple status 코드
| 코드 | 의미 |
|---:|---|
| 0 | 성공 |
| 21000 | App Store 가 receipt 못 읽음 |
| 21002 | receipt-data malformed |
| 21003 | receipt 인증 실패 |
| 21004 | shared secret 틀림 |
| 21005 | receipt 서버 일시 오류 |
| 21006 | 만료된 receipt (구독) |
| 21007 | sandbox receipt 인데 production 보냄 → sandbox 로 재시도 |
| 21008 | production receipt 인데 sandbox 보냄 |

### Sandbox vs Production 자동 fallback

Apple 권장 패턴:
1. 운영 → production endpoint 먼저 시도
2. 21007 응답 시 → sandbox 로 재시도
3. 결과 = production 또는 sandbox 둘 중 verified 한 쪽

`APPLE_USE_SANDBOX=1` 강제 시 sandbox 만 시도 (개발/CI 빠른 검증).

### Apple App Store Server API v2 (JWS)

Apple 은 `/verifyReceipt` 를 deprecated 처리 중. 향후 마이그레이션:
- v2: JWS (JSON Web Signature) 기반
- 환경변수 다른 셋: `APPLE_KEY_ID`, `APPLE_ISSUER_ID`, `APPLE_PRIVATE_KEY` (.p8)
- `app-store-server-api-node` 같은 라이브러리 활용

현재 `/verifyReceipt` 도 작동 — 운영 시작 후 안정화되면 v2 전환 권장.

---

## Samsung Galaxy Store

### 환경변수
```ini
SAMSUNG_IAP_MODE=0          # 0=production, 1=test
SAMSUNG_IAP_API_KEY=<API key>
```

### 검증 코드
```js
async function verifySamsung({purchaseToken}) {
  const mode = process.env.SAMSUNG_IAP_MODE || '0';
  const host = mode === '1' ? 'sbox-iap.samsungapps.com' : 'iap.samsungapps.com';
  const url = `https://${host}/iap/appsItemVerifyIAPReceipt.as` +
              `?protocolVersion=2.0&purchaseID=${encodeURIComponent(purchaseToken)}`;
  
  const resp = await fetch(url, {
    headers: {'Authorization': `Bearer ${process.env.SAMSUNG_IAP_API_KEY}`},
  });
  const data = await resp.json();
  const verified = data?.status === 'true' || data?.status === true;
  return { verified, raw: data, orderId: data?.paymentID };
}
```

Samsung 은 공식 SDK 가 빈약 — HTTP 직접 호출. SKU 는 구 형식 (`000001005358` 등) 으로 등록.

### 클라 통합
`in_app_purchase` Flutter 패키지는 Samsung 미지원. 별도 `flutter_samsung_iap` 같은 third-party 또는 native 코드 필요. 현재 § 후속 — 한국 갤럭시 점유율이 높아 추가 가치 있음.

---

## 보안 / 부정 결제 차단

### 1. UNIQUE purchase_token (mig 002)
같은 영수증 재사용 차단. 가장 강력한 방어.

```sql
ALTER TABLE iap_receipts ADD UNIQUE KEY uk_purchase_token (purchase_token(255));
```

### 2. 서버 측 검증 (필수)
클라가 영수증을 직접 신뢰하지 않고 무조건 스토어 API 호출. 위조 token 은 status 21003 / `purchaseState=1` 등으로 차단.

### 3. UNIQUE (store, order_id)
중복 주문 ID 차단. Apple `transaction_id`, Google `orderId` 모두 유니크.

### 4. 트랜잭션
검증 → 영수증 INSERT → 재화 지급 모두 한 트랜잭션. 중간 실패 시 rollback (재화 안 들어감).

### 5. 로그
`iap_receipts.raw_response` 4000자 자른 후 보관. 분쟁 시 추적.

### 6. 모니터링
어드민 `/admin/analytics/revenue?days=30` 으로 verified 비율 / 일자별 / store 별 매출 확인. 비정상 패턴 (특정 user 가 이상하게 많이 결제) 발견 시 수동 검토.

---

## 테스트

### Sandbox tester (Apple)

1. App Store Connect → Users and Access → Sandbox Testers → +
2. 이메일/비밀번호/지역 입력 (실제 받지 않는 가상 이메일 OK)
3. 디바이스 → 설정 → App Store → Sandbox Account → 위 이메일로 로그인
4. 이제 결제 시도 시 sandbox 다이얼로그 표시 (실제 결제 X)

### License tester (Google Play)

1. Play Console → Setup → License testing → 이메일 추가
2. Play Console 의 앱 → Internal track 에 publish
3. 해당 이메일로 로그인된 디바이스에서 Internal app sharing URL 으로 설치
4. 결제 시 "TEST" 표시 + 실제 결제 안 됨

### `coin_test` SKU
운영 SKU 와 별도로 `coin_test_99c` (₩100) 등 스토어 등록 → 실 결제 1회로 전체 흐름 테스트 가능. **운영 출시 전 unpublish 필수**.

### 자동 테스트 한계
`in_app_purchase` 는 native 의존성 + OS 결제 다이얼로그 → 실 디바이스 sandbox 만 검증 가능. Unit test 는 IapService 로직 (PurchaseEvent 파싱 등) 만.

`test/api/iap_service_test.dart`:
- `coinSkus` 셋 검증 (4 SKU)
- `PurchaseEvent` ok/error 케이스

---

## 환불 / Chargeback

### Google
- Play Console → Order management → 환불 처리
- Real-time Developer Notifications (RTDN) 로 webhook 받기 — 환불 시 wallet 차감 자동화 가능 (현재 미구현)

### Apple
- App Store Connect → Transactions → 환불 (사용자 본인이 신청한 경우만 자동 알림)
- Server-to-Server Notifications V2 — webhook 으로 환불/취소/구독 변경 받기 (구현 시 별도 endpoint 추가)

현재 환불 webhook 미구현 — 운영 시 우선 추가 권장. `iap_receipts` 에 `refunded_at` 컬럼 + wallet 차감 로직.

---

## 자주 막히는 부분

### "verified=false reason=credentials_missing"
환경변수 미설정. `GOOGLE_PLAY_SERVICE_ACCOUNT_JSON` / `APPLE_SHARED_SECRET` / `SAMSUNG_IAP_API_KEY` 확인.

### "PurchaseStatus.error message='Item already owned'"
- non-consumable 인데 consumable 처럼 두 번 사려고 함
- 이전 구매가 finishTransaction 안 됨 → `restorePurchases` 호출 후 `completePurchase`

### "Apple status 21002"
receipt-data 인코딩 문제. base64 그대로 보내야 함 (URL-safe X). `serverVerificationData` 는 이미 base64.

### "Apple status 21004"
APPLE_SHARED_SECRET 틀림. App Store Connect 에서 다시 발급.

### "Google verified true but coin 안 들어감"
서버 트랜잭션 실패 — 로그 확인. 가장 흔한 원인: `wallets` 행 없음 (가입 시 INSERT 누락). `INSERT INTO wallets ... ON DUPLICATE KEY UPDATE` 패턴으로 방어.

### "duplicate_token" 정상인데 자꾸 나옴
- 클라가 같은 영수증을 재시도 (네트워크 fail 시) — 정상. 사용자에게 "이미 처리됨" 으로 안내.
- restored 도 같은 영수증 — 이전 결제와 동일하므로 차단되는 게 맞음

---

## 후속 작업

- [ ] **Webhook 환불 처리** — Google RTDN + Apple Server-to-Server Notifications V2
- [ ] **Apple v2 API 마이그** — JWS 기반, signed transactions
- [ ] **Samsung 클라 통합** — `flutter_samsung_iap` or native 채널
- [ ] **사기 탐지** — 단시간 다중 결제, 같은 디바이스 다중 계정 등
- [ ] **구독 상품** — non-consumable + 자동 갱신 검증 (현재는 consumable 만)

운영 콘솔 셋업 단계: [[Release-Process#IAP-등록]]
