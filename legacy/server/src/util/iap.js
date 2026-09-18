// IAP 영수증 서버 재검증 — Google Play / Samsung / Apple App Store
//
// 목적:
//   1) 클라가 전달한 purchase_token 을 실제 스토어 API 로 검증
//   2) 중복 토큰 사용 차단 (iap_receipts.purchase_token UNIQUE)
//   3) verified=true 일 때만 재화 지급
//
// 환경변수:
//   GOOGLE_PLAY_SERVICE_ACCOUNT_JSON — Google Play Developer API 서비스 계정 JSON
//   GOOGLE_PLAY_PACKAGE_NAME         — 앱 패키지명 (예: com.findit.battle)
//   SAMSUNG_IAP_MODE                 — "0"=production, "1"=test
//   SAMSUNG_IAP_API_KEY              — Samsung Checkout API 키
//   APPLE_SHARED_SECRET              — App Store Connect "App-Specific Shared Secret".
//                                       Apple `/verifyReceipt` 의 password 필드.
//   APPLE_USE_SANDBOX                — "1" 이면 sandbox 만 사용 (개발).
//                                       기본은 production 시도 후 21007 응답 시 sandbox 자동 fallback.
//
// 실제 호출 라이브러리 (옵션): `googleapis` 패키지.
// 미설치 시 stub 으로 동작 (verified=false, 로그 남김).

const { query } = require('../db');

/**
 * Google Play 영수증 검증.
 * 참조: https://developers.google.com/android-publisher/api-ref/rest/v3/purchases.products/get
 */
async function verifyGoogle({ productId, purchaseToken }) {
  if (!process.env.GOOGLE_PLAY_SERVICE_ACCOUNT_JSON || !process.env.GOOGLE_PLAY_PACKAGE_NAME) {
    return { verified: false, reason: 'credentials_missing', raw: null };
  }
  try {
    // eslint-disable-next-line global-require
    const { google } = require('googleapis');
    const creds = JSON.parse(process.env.GOOGLE_PLAY_SERVICE_ACCOUNT_JSON);
    const auth = new google.auth.GoogleAuth({
      credentials: creds,
      scopes: ['https://www.googleapis.com/auth/androidpublisher'],
    });
    const androidpublisher = google.androidpublisher({ version: 'v3', auth });
    const resp = await androidpublisher.purchases.products.get({
      packageName: process.env.GOOGLE_PLAY_PACKAGE_NAME,
      productId,
      token: purchaseToken,
    });
    const data = resp.data;
    // purchaseState: 0=Purchased, 1=Canceled, 2=Pending
    const verified = data.purchaseState === 0 && data.consumptionState === 0;
    return { verified, raw: data, orderId: data.orderId };
  } catch (e) {
    return { verified: false, reason: 'api_error', error: e.message, raw: null };
  }
}

/**
 * Samsung IAP 영수증 검증 (Samsung Checkout).
 * 참조: https://developer.samsung.com/iap/product-guide/server-verify.html
 */
async function verifySamsung({ purchaseToken }) {
  if (!process.env.SAMSUNG_IAP_API_KEY) {
    return { verified: false, reason: 'credentials_missing', raw: null };
  }
  try {
    // Samsung 은 공식 SDK 가 없음 — HTTP 직접 호출
    const mode = process.env.SAMSUNG_IAP_MODE || '0';
    const host = mode === '1' ? 'sbox-iap.samsungapps.com' : 'iap.samsungapps.com';
    const url = `https://${host}/iap/appsItemVerifyIAPReceipt.as?protocolVersion=2.0&purchaseID=${encodeURIComponent(purchaseToken)}`;
    const resp = await fetch(url, {
      headers: { 'Authorization': `Bearer ${process.env.SAMSUNG_IAP_API_KEY}` },
    });
    const data = await resp.json();
    const verified = data?.status === 'true' || data?.status === true;
    return { verified, raw: data, orderId: data?.paymentID };
  } catch (e) {
    return { verified: false, reason: 'api_error', error: e.message, raw: null };
  }
}

/**
 * Apple 영수증 검증 — `/verifyReceipt` (legacy) 또는 v2 JWS.
 *
 * 클라가 보내는 purchaseToken 은 base64 로 인코딩된 receipt-data 또는
 * StoreKit2 의 jwsRepresentation. 둘 다 우선 `/verifyReceipt` 로 검증.
 *
 * 응답 status 코드:
 *   0     성공
 *   21007 sandbox receipt 인데 production 으로 보냄 → sandbox 재시도
 *   21008 production receipt 인데 sandbox 로 보냄 → 무시 (운영 환경 오류)
 *   기타  실패 (21000-21010)
 *
 * Apple 권장: 운영 production 먼저 시도, 21007 면 sandbox 재시도.
 * 참조: https://developer.apple.com/documentation/appstorereceipts/verifyreceipt
 */
async function verifyApple({ productId, purchaseToken, useSandbox }) {
  if (!process.env.APPLE_SHARED_SECRET) {
    return { verified: false, reason: 'credentials_missing', raw: null };
  }
  const body = JSON.stringify({
    'receipt-data': purchaseToken,
    'password': process.env.APPLE_SHARED_SECRET,
    'exclude-old-transactions': true,
  });

  async function postTo(host) {
    const resp = await fetch(`https://${host}/verifyReceipt`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body,
    });
    return resp.json();
  }

  try {
    const forceSandbox = useSandbox || process.env.APPLE_USE_SANDBOX === '1';
    let data = await postTo(forceSandbox ? 'sandbox.itunes.apple.com' : 'buy.itunes.apple.com');
    // 21007 → sandbox 로 재시도
    if (!forceSandbox && data?.status === 21007) {
      data = await postTo('sandbox.itunes.apple.com');
    }
    if (data?.status !== 0) {
      return { verified: false, reason: `apple_status_${data?.status}`, raw: data };
    }
    // in_app 배열에서 product_id 일치 + 가장 최신 transaction 추출
    const inApp = Array.isArray(data?.receipt?.in_app) ? data.receipt.in_app : [];
    const match = productId
      ? inApp.find((t) => t.product_id === productId)
      : inApp[inApp.length - 1];
    if (!match) {
      return { verified: false, reason: 'product_not_in_receipt', raw: data };
    }
    return {
      verified: true,
      raw: data,
      orderId: match.transaction_id,
    };
  } catch (e) {
    return { verified: false, reason: 'api_error', error: e.message, raw: null };
  }
}

/**
 * 스토어별 검증 + DB 기록.
 * 동일 purchase_token 중복 사용 방지.
 */
async function verifyAndRecord({ userId, store, productId, purchaseToken, amountCoin = 0, amountGem = 0 }) {
  if (!userId || !store || !purchaseToken) {
    return { ok: false, reason: 'missing_params' };
  }
  // 중복 검사
  const dup = await query(
    `SELECT id, user_id, verified FROM iap_receipts WHERE purchase_token = ? LIMIT 1`,
    [purchaseToken]
  );
  if (dup.length > 0) {
    return { ok: false, reason: 'duplicate_token', existingUserId: dup[0].user_id };
  }

  let out;
  if (store === 'google')       out = await verifyGoogle({ productId, purchaseToken });
  else if (store === 'samsung') out = await verifySamsung({ purchaseToken });
  else if (store === 'apple')   out = await verifyApple({ productId, purchaseToken });
  else out = { verified: false, reason: 'unsupported_store' };

  const orderId = out.orderId || null;
  const rawStr = out.raw ? JSON.stringify(out.raw).slice(0, 4000) : null;

  try {
    await query(
      `INSERT INTO iap_receipts(user_id, store, product_id, purchase_token, order_id,
                                amount_coin, amount_gem, verified, verified_at, raw_response)
       VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`,
      [userId, store, productId || '', purchaseToken, orderId,
       amountCoin, amountGem, !!out.verified, out.verified ? new Date() : null, rawStr]
    );
  } catch (e) {
    // UNIQUE(store, order_id) 충돌 시도 → duplicate
    if (e.code === 'ER_DUP_ENTRY') {
      return { ok: false, reason: 'duplicate_order' };
    }
    throw e;
  }

  return { ok: true, verified: out.verified, reason: out.reason, orderId };
}

module.exports = { verifyGoogle, verifySamsung, verifyApple, verifyAndRecord };
