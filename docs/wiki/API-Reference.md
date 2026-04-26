# API Reference

서버 27개 REST 엔드포인트 상세. 모든 응답은 JSON, `result` 필드로 상태 표현.

## Result 코드 컨벤션

| 코드 | 의미 |
|---|---|
| `'000'` | 성공 (`RESULT_PASS`) |
| `'101'` | 일반 오류 / ID 없음 / 검증 실패 (`RESULT_NOID`) |
| `'102'` | 비밀번호 틀림 (`RESULT_NOPASSWORD`) |
| `'103'` | 이미 가입됨 (`RESULT_ALREADYJOINED`) |
| `'900'` | 방 이탈됨 (`FAIL_ALREADYEXIT`) — WS 전용 |
| `'911'` | 이미 게임 중 (`FAIL_ALREADYGAME`) — WS 전용 |
| `'999'` | 서버 에러 / 미인증 |

소스: [`server/src/util/codes.js`](https://github.com/GabrielJung0727/findit-rebuild/blob/main/server/src/util/codes.js)

---

## 인증 / 세션 — `routes/member.js`

### `POST /app/member/checkUserId.json`

가입 전 ID/닉네임 사전 중복·형식 검증.

**Request**:
```json
{"userId":"new@findit.com","userNick":"newbie"}
```

`userId` / `userNick` 둘 중 하나만 보내도 OK — 응답에 해당 키만 포함됨.

**Response**:
```json
{
  "result": "000",
  "userId": {"valid": true, "taken": false},
  "userNick": {"valid": true, "taken": false}
}
```

`valid: false` 시 `error` 필드: `email_invalid` / `email_too_long` / `nickname_length` 등.

---

### `POST /app/member/join.json`

회원가입. recaptcha middleware 적용 (`RECAPTCHA_SECRET` 미설정 시 no-op).

**Request**:
```json
{
  "userId":"new@findit.com",
  "userPass":"abcd1234",
  "userNick":"새유저",
  "userCharacter":0,
  "userDevice":"1",
  "recaptchaToken":"<v3 token>"
}
```

**검증** (서버 `validation.js`):
- 이메일 정규식 `/^[^\s@]+@[^\s@]+\.[^\s@]+$/`
- 비밀번호 4~12자
- 닉네임 1~20자 (trim 후)
- 캐릭터 0~2 정수

**Response 성공**:
```json
{"result":"000"}
```

**Response 실패**:
```json
{"result":"101","field":"email","error":"email_invalid"}
{"result":"103","field":"nickname","error":"nickname_taken"}
```

---

### `POST /app/member/login.json`

이메일/비번 로그인. opaque 토큰 발급.

**Request**:
```json
{"userId":"test@findit.com","userPass":"1234","userDevice":"1"}
```

**Response 성공**:
```json
{
  "result": "000",
  "token": "abc123...",        // 24바이트 opaque, 클라가 secure_storage 저장
  "user": {
    "userId": "test@findit.com",
    "userNick": "tester",
    "userCharacter": 0,
    "level": 1,
    "score": 0,
    "coin": 10,
    "point": 2,
    "gem": 0,
    "hp": 110,
    "authType": "email"
  },
  "item": [
    {"itemNo": 38, "itemType": "PEN", "quantity": 1, "upgradeLevel": 0}
  ],
  "skill": [
    {"skillId": 14}
  ]
}
```

**Response 실패**:
- `{"result":"101"}` — 아이디 없음
- `{"result":"102"}` — 비번 틀림

부수 효과: 기존 active 세션 모두 `logged_out_at = NOW()` (중복 로그인 강제 종료).

---

### `POST /app/member/guest.json`

비회원 입장. recaptcha middleware 적용.

**Request**:
```json
{"deviceId":"abc123"}
```
또는 빈 body — 서버가 랜덤 `guest_<rand12>` 생성.

**Response**: login.json 과 동일 (`token` + `user` + `item:[]` + `skill:[]`).

`auth_type = 'guest'`. 자동로그인 흔적 남기지 않음 (정책).

---

### `POST /app/member/facebook.json`

Facebook 로그인 (1.3 후속).

**Request**:
```json
{"fbUserId":"123456","fbToken":"<access_token>","userNick":"new","userCharacter":0}
```

**최초 가입 시** `userNick` + `userCharacter` 필요 → 없으면 `{result:'101', needsSignup:true}`.
**재로그인 시** fbUserId 만 있으면 됨.

`user_id` = `fb_<fbUserId>` 매핑. `auth_type = 'facebook'`.

> ⚠ 현재 fbToken 검증 미구현 (TODO) — 운영 전 Facebook Graph API 로 `/me?access_token=` 검증 필수.

---

### `POST /app/member/logout.json`

세션 무효화.

**Request**: `{"token":"<현재 토큰>"}`

**Response**: `{"result":"000"}`

DB 처리: `UPDATE login_logs SET logged_out_at = NOW() WHERE session_token = ?`

---

## 지갑 — `routes/member.js` + `routes/economy.js`

### `POST /app/member/addCoin.json`

광고 보상 등으로 코인 적립. 음수 차단.

**Request**: `{"userId":"u","coin":50}`

**Response**: `{"result":"000","coin":150}` (적립 후 잔액)

---

### `POST /app/member/spendCoin.json`

코인 차감. 트랜잭션 + `FOR UPDATE` 락. 부족 시 실패.

**Request**: `{"userId":"u","coin":100}`

**Response**: `{"result":"000","coin":50}` 또는 `{"result":"101"}` (잔액 부족).

---

### `POST /app/member/spendGem.json`

보석 차감.

**Request**: `{"userId":"u","gem":10}`

**Response**: `{"result":"000","gem":90}` 또는 `{"result":"101","reason":"not_enough_gem"}`.

---

### `POST /app/member/addGem.json`

보석 적립 — **admin-only** (어드민 토큰 필요). IAP 검증 후 내부 호출.

---

## 상점 / 인벤토리 — `routes/member.js` + `routes/economy.js`

### `POST /app/member/buyItemAndSpendCoin.json`

코인 차감 + 인벤토리 +1 (원자적 트랜잭션).

**Request**:
```json
{"userId":"u","itemNo":38,"coin":50,"quantity":1}
```

**Response**:
```json
{"result":"000","coin":50,"itemNo":38,"quantity":1}
```

서버가 `coin` 검증 안 함 (클라 카탈로그 신뢰). 운영에서는 `Items.java` mirror 로 가격 검증 추가 권장.

`item_type` 자동 분류 (`classifyItemType`):
- 38~40 → PEN
- 41~42 → RING
- 43~48 → BERRY
- 49~54 → POTION
- 55~58 → GOLD
- 그 외 → ETC

---

### `POST /app/member/spendMyItem.json`

보유 아이템 사용 (수량 -1). 0 도달 시 row 삭제.

**Request**: `{"userId":"u","itemNo":38,"quantity":1}`

**Response**: `{"result":"000","itemNo":38,"quantity":0}` (남은 수량)

---

### `POST /app/member/upgradeItem.json`

아이템 강화 — 확률 기반. 실패 시 코인만 소모.

**Request**:
```json
{"userId":"u","itemNo":38,"fluxUsed":"flux"}
```

`fluxUsed`: `'none'` / `'flux'` (+5%) / `'advanced_flux'` (+10%).

**Response**:
```json
{
  "result": "000",
  "success": true,
  "cost": 200,
  "rate": 0.55,
  "newLevel": 2
}
```

`item_upgrade_log` 테이블에 감사 기록.

[[Game-Design#아이템-강화-시스템]] 확률 표 참조.

---

### `POST /app/member/expandInventory.json`

인벤토리 확장 (3 → 30칸, 단계당 +3).

**Request**: `{"userId":"u"}`

**Response**: `{"result":"000","inventorySize":6,"cost":50}` 또는 `{"result":"101","reason":"max_expanded"}`.

비용 공식: `cost(n) = 50 × n` (n=1..9).

---

### `POST /app/member/expandSkillDeck.json`

스킬덱 확장 (1 → 4).

**Request**: `{"userId":"u"}`

**Response**: `{"result":"000","skillDeckCount":2,"cost":100}`.

비용: 100 / 300 / 900.

---

## 스킬 — `routes/skills.js`

### `GET /app/member/skillCatalog.json`

44개 스킬 마스터 데이터. 로그인 후 1회 캐싱 권장.

**Response**:
```json
{
  "result": "000",
  "list": [
    {
      "skillId": 14,
      "code": "cat_1",
      "nameKo": "고양이발톱1",
      "nameEn": "Cat's claw 1",
      "groupCode": "cat",
      "tier": 1,
      "unlockLevel": 1,
      "attackDuration": 1.0,
      "pointCost": 1,
      "requiredSkillIds": [],
      "assetGroup": "cat"
    },
    // ... 43 more
  ]
}
```

---

### `GET /app/member/levelTable.json`

0~100 레벨 누적 점수 + 능력치 + 등급.

**Response**:
```json
{
  "result": "000",
  "list": [
    {"level": 0, "cumScore": 0, "attack": 0.50, "defense": 0.50, "hp": 100, "grade": "-"},
    {"level": 1, "cumScore": 5000, "attack": 0.50, "defense": 0.50, "hp": 110, "grade": "A"},
    // ... 99 more (총 101 항목)
    {"level": 100, "cumScore": 660000000, "attack": 1.57, "defense": 1.57, "hp": 5000, "grade": "J"}
  ]
}
```

---

### `POST /app/member/learnSkill.json`

스킬 학습 — 레벨/포인트/선행 모두 검증.

**Request**: `{"userId":"u","skillId":20}`

**검증** (트랜잭션):
1. `wallet.level >= meta.unlock_level`
2. `wallet.point >= meta.point_cost`
3. `meta.required_skill_ids` 모두 본인 `skills` 테이블에 존재

**Response 성공**:
```json
{"result":"000","skill":[{"skillId":14},{"skillId":20}],"skillId":20}
```

**Response 실패**:
- `{"result":"101","reason":"level_too_low","required_level":2}`
- `{"result":"101","reason":"not_enough_point"}`
- `{"result":"101","reason":"prereq_not_learned"}`
- `{"result":"103","reason":"already_learned"}`

---

### `POST /app/member/buySkillAndSpendPoint.json` (BC)

기존 안드 호환 — `learnSkill.json` 로 대체 권장. 선행 검증 약함.

---

## 콘텐츠 — `routes/member.js`

### `GET /app/member/newImageList.json?imgId=0`

스테이지 이미지 목록. `imgId` since-cursor (받은 마지막 imgId 이후만).

**Response**:
```json
{
  "result": "000",
  "list": [
    {
      "imgId": 1,
      "img": "market001.png",
      "xSize": 640,
      "ySize": 720,
      "x": 0,
      "y": 0,
      "imgType": 0,
      "imageCut": "[{\"x\":195,\"y\":66,\"w\":100,\"h\":100}, ...]",  // JSON 문자열
      "urlDownload": "https://cdn/market001.png",
      "urlDetail": "https://example.com/promo",
      "urlVideo": null,
      "adCaption": "위급상황시 동영상촬영",
      "view": 1,
      "viewCount": 0,
      "regDate": "2026-04-25 10:00:00"
    }
  ]
}
```

LIMIT 200. `view = 1` 만 반환.

---

### `GET /app/member/newAdImageList.json?adId=0`

만료 안 된 광고 이미지.

**Response**:
```json
{
  "result": "000",
  "list": [
    {
      "adId": 1,
      "adImage": "https://cdn/ad.png",
      "adName": "샘플 광고",
      "adUrl": "https://example.com",
      "expireDate": "2026-07-25T00:00:00.000Z"
    }
  ]
}
```

LIMIT 50. 만료된 항목 자동 제외.

---

### `GET /app/member/notice.json`

공지사항 — 서버가 HTML 직접 반환 (JSON 아님). `flutter_html` 위젯이 렌더.

**Response**: `Content-Type: text/html`
```html
<!doctype html>
<html lang="ko"><head>...</head><body>
  <div class="notice">
    <h3>서버 재구축 완료</h3>
    <div class="meta">2026-04-25</div>
    <div class="body">원본 14.63.220.39 서버 대체 ...</div>
  </div>
</body></html>
```

---

## 게임 결과 / 랭킹 — `routes/member.js` + `routes/ranks.js`

### `POST /app/member/mutiAddUp.json`

게임 결과 집계. 클라이언트가 종료 시 호출.

**Request**:
```json
{"userId":"u","level":5,"score":350,"coin":100,"point":1}
```

**처리**:
```sql
UPDATE wallets SET
  level = GREATEST(level, ?),  -- 감소 X
  score = score + ?,            -- 증분
  coin  = coin  + ?,
  point = point + ?
WHERE user_id = ?
```

**Response**: `{"result":"000","user":{...현재 wallet}}`

---

### `GET /app/member/rankList?userId=`

전체 랭킹 top 100. (응답에 `result` 없음 — 안드 BC)

**Response**:
```json
{
  "list": [
    {"ranking":1,"friendId":"alice@findit.com","sumpoint":175710}
  ]
}
```

`RANK() OVER (ORDER BY score DESC)` window function.

---

### `GET /app/member/rankListFriends.json?userId=&fbFriends=uid1,uid2`

친구 랭킹 (본인 + Facebook 친구). delta 포함.

**Response**:
```json
{
  "result": "000",
  "list": [
    {
      "ranking": 1,
      "friendId": "u@test.com",
      "userNick": "me",
      "level": 30,
      "sumpoint": 839358,
      "delta": 2     // +상승, -하락 (어제 대비)
    }
  ]
}
```

`fbFriends` 비어있으면 본인만. Facebook UID → `fb_<uid>` 내부 user_id 매핑.

---

### `GET /app/member/rankListTop.json?limit=50`

전체 top N (1 ≤ N ≤ 200, default 50).

**Response**:
```json
{
  "result": "000",
  "list": [{"ranking":1,"friendId":"alice","userNick":"alice","level":15,"sumpoint":175710}, ...]
}
```

---

### `GET /app/member/itemPurchaseHistList?userId=`

구매 내역. (응답에 `result` 없음 — 안드 BC)

**Response**:
```json
{
  "list": [
    {"regDate":"2026-04-25 10:00","itemName":"item_38","quantity":1}
  ]
}
```

---

## IAP — `routes/iap.js`

### `POST /app/member/verifyIap.json`

영수증 검증 + 재화 지급.

**Request**:
```json
{
  "userId": "u",
  "store": "google",        // "google" | "samsung" | "apple"
  "productId": "coin_500",
  "purchaseToken": "..."     // Google purchaseToken / Apple base64 receipt / Samsung purchaseId
}
```

**처리**:
1. `iap_receipts.purchase_token` UNIQUE 체크 (중복 차단)
2. 스토어 API 검증 (`verifyGoogle` / `verifyApple` / `verifySamsung`)
3. `iap_receipts` INSERT (verified=true/false)
4. verified=true 시 wallet 재화 지급 (트랜잭션)

**Response 성공**:
```json
{
  "result": "000",
  "orderId": "GPA.1234-5678",
  "granted": {"coin": 500, "gem": 0},
  "coin": 1500,        // 적립 후 잔액
  "gem": 0
}
```

**Response 실패**:
- `{"result":"999","error":"unsupported_store"}`
- `{"result":"999","error":"unknown_product"}`
- `{"result":"999","error":"duplicate_token"}`
- `{"result":"999","error":"receipt_invalid","reason":"apple_status_21002"}`

[[IAP-Integration]] 참조.

---

## 광고 — `routes/ads.js` + `routes/member.js`

### `POST /app/member/adReward.json`

광고 시청 보상. 24h 슬라이딩 윈도우 + 일일 상한.

**Request**: `{"userId":"u","adId":1}`

**처리**:
1. `ad_reward_log` 24h 내 카운트 — 20회 이상이면 차단
2. `ad_images.view_count + 1`
3. `wallet.coin + 5`
4. `ad_reward_log` INSERT

**Response 성공**: `{"result":"000","coinReward":5,"coin":1005}`
**Response 실패**: `{"result":"101","reason":"daily_cap_reached","cap":20}`

---

### `POST /app/member/adClick.json`

광고 클릭 추적. 보상 없음.

**Request**: `{"userId":"u","adId":1}`

**처리**: `ad_images.click_count + 1` + `ad_click_log` INSERT.

---

### `POST /app/member/hitViewCount.json`

광고 조회 카운트만 증가 (보상 없음). 화면에 광고 띄울 때 1회.

**Request**: `{"adId":1}`

---

## 분석 — `routes/analytics.js`

### `POST /app/member/event.json`

클라이언트 이벤트 보고. fire-and-forget.

**Request**:
```json
{
  "userId":"u",
  "eventName":"game_end",
  "payload":{"won":true,"reason":"selfCleared","selfScore":700,"findNum":7,"elapsedSeconds":32.5},
  "sessionId":"<session-id>"
}
```

**처리**: `event_log` INSERT + `members.last_active_at` 갱신 (DAU 계산용).

`payload` 4000자 초과 시 잘림.

**Response**: `{"result":"000"}`

이벤트명 컨벤션: `login`, `join`, `game_start`, `game_end`, `purchase`, `skill_learn`, `item_upgrade`, `ad_view`, `ad_reward`, ...

[[Game-Design#분석-와이어]] / `lib/api/analytics_helper.dart` 참조.

---

## FCM 푸시 — `routes/fcm.js`

### `POST /app/member/registerFcmToken.json`

FCM 토큰 등록. Firebase Messaging `getToken()` 후 1회.

**Request**: `{"userId":"u","fcmToken":"<FCM token>"}`

**Response**: `{"result":"000"}`

DB: `UPDATE members SET fcm_token = ? WHERE user_id = ?`

[[Push-Notifications]] 참조.

---

## 어드민 — `routes/admin.js`

모든 어드민 엔드포인트는 **`X-Admin-Token` 헤더** 필요.

### 이미지 CRUD
- `GET /admin/images` — 200 row
- `POST /admin/images` — `{img, xSize, ySize, imageCut[7], urlDownload?, urlDetail?, adCaption?, view?}` 검증 후 INSERT
- `PUT /admin/images/:id` — 부분 업데이트
- `DELETE /admin/images/:id` — soft delete (`view = 0`)

### 광고 CRUD
- `GET /admin/ads`
- `POST /admin/ads` — `{adImage, adName, adUrl?, expireDate}`
- `DELETE /admin/ads/:id`

### 공지 CRUD
- `GET /admin/notices`
- `POST /admin/notices` — `{title, body, isVisible?}`
- `DELETE /admin/notices/:id`

### 통계
- `GET /admin/analytics/overview` — 회원수 / DAU / WAU / 24h IAP
- `GET /admin/analytics/dau?days=N` — 일별 DAU 추이
- `GET /admin/analytics/revenue?days=N` — 스토어·일자별 IAP
- `GET /admin/analytics/events?hours=N` — 이벤트명 top 50
- `GET /admin/analytics/ads` — 광고 노출/클릭/CTR

### 푸시
- `POST /admin/push/user/:userId` — `{title, body, type?, data?}`
- `POST /admin/push/broadcast` — `{title, body, userIds?[], type?, data?}`
- `GET /admin/push/logs`

---

## Health Check

### `GET /healthz`

DB 핑 후 응답.

**Response 정상**: `200 {"ok":true}`
**Response DB 다운**: `503 {"ok":false,"error":"..."}`

Cloud Run / Kubernetes liveness probe 용.

---

## 클라 wrapper 매핑

| 서버 endpoint | Dart wrapper |
|---|---|
| `checkUserId.json` | `MemberApi.checkUserId` |
| `join.json` | `MemberApi.join` |
| `login.json` | `MemberApi.login` (token 자동 저장) |
| `guest.json` | `MemberApi.guest` |
| `facebook.json` | `MemberApi.facebook` |
| `logout.json` | `MemberApi.logout` |
| `addCoin/spendCoin/spendGem/addGem.json` | `MemberApi.addCoin` 등 |
| `buyItemAndSpendCoin.json` | `ShopApi.buyItemAndSpendCoin` |
| `spendMyItem.json` | `ShopApi.spendMyItem` |
| `learnSkill.json` | `ShopApi.learnSkill` |
| `upgradeItem.json` | `ShopApi.upgradeItem` |
| `expandInventory.json` | `ShopApi.expandInventory` |
| `expandSkillDeck.json` | `ShopApi.expandSkillDeck` |
| `skillCatalog.json` | `CatalogApi.skillCatalog` |
| `levelTable.json` | `CatalogApi.levelTable` |
| `newImageList.json` | `ContentApi.newImageList` |
| `newAdImageList.json` | `ContentApi.newAdImageList` |
| `notice.json` | `ContentApi.noticeHtml` |
| `mutiAddUp.json` | `GameApi.mutiAddUp` |
| `rankList` / `rankListFriends/Top.json` | `GameApi.rank*` |
| `itemPurchaseHistList` | `GameApi.itemPurchaseHistList` |
| `event.json` | `AnalyticsApi.event` (또는 `AnalyticsHelper.*` 권장) |
| `adClick/adReward/hitViewCount.json` | `AnalyticsApi.adClick` 등 |
| `verifyIap.json` | `IapApi.verifyIap` (또는 `IapService.buy` 자동) |
| `registerFcmToken.json` | `PushApi.registerFcmToken` (또는 `PushService.init` 자동) |
