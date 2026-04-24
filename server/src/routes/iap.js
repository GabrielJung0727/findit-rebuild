// IAP 영수증 검증 + 재화 지급 (2순위 "부정결제 차단")
//
// 플로우:
//   1) 클라에서 스토어(Google Play/Samsung)로 결제 완료
//   2) 클라 → 서버 POST /app/member/verifyIap.json (purchase_token 등)
//   3) 서버가 스토어 API 호출로 진위 확인
//   4) verified=true 시에만 iap_receipts INSERT + wallet 재화 지급
//   5) 중복 토큰/주문은 차단

const express = require('express');
const { query, tx } = require('../db');
const iapUtil = require('../util/iap');

const router = express.Router();

// 코인팩 상품 정의 — Items.java GOLD 배열과 동기화
// productId 는 스토어 SKU. 실제 스토어 등록값과 일치해야 함.
const PRODUCT_CATALOG = {
  'coin_100':  { coin: 100,  gem: 0 },
  'coin_250':  { coin: 250,  gem: 0 },
  'coin_500':  { coin: 500,  gem: 0 },
  'coin_650':  { coin: 650,  gem: 0 },
  // Samsung 구 SKU 호환 (Property.java)
  '000001005358': { coin: 100, gem: 0 },
  '000001005359': { coin: 250, gem: 0 },
  '000001005360': { coin: 500, gem: 0 },
  '000001005361': { coin: 650, gem: 0 },
  // 보석팩 (향후)
  'gem_100':   { coin: 0, gem: 100 },
  'gem_1000':  { coin: 0, gem: 1000 },
};

function productEntitlement(productId) {
  return PRODUCT_CATALOG[productId] || null;
}

router.all('/member/verifyIap.json', async (req, res, next) => {
  try {
    const p = { ...req.query, ...req.body };
    const { userId, store, productId, purchaseToken } = p;
    if (!userId || !store || !productId || !purchaseToken) {
      return res.json({ result: '999', error: 'missing_params' });
    }
    if (!['google', 'samsung'].includes(store)) {
      return res.json({ result: '999', error: 'unsupported_store' });
    }
    const entitlement = productEntitlement(productId);
    if (!entitlement) {
      return res.json({ result: '999', error: 'unknown_product' });
    }

    const verify = await iapUtil.verifyAndRecord({
      userId, store, productId, purchaseToken,
      amountCoin: entitlement.coin, amountGem: entitlement.gem,
    });

    if (!verify.ok) {
      return res.json({ result: '999', error: verify.reason || 'verify_failed', detail: verify });
    }
    if (!verify.verified) {
      return res.json({ result: '999', error: 'receipt_invalid', reason: verify.reason });
    }

    // 재화 지급
    await tx(async (conn) => {
      if (entitlement.coin > 0) {
        await conn.execute(`UPDATE wallets SET coin = coin + ? WHERE user_id = ?`, [entitlement.coin, userId]);
      }
      if (entitlement.gem > 0) {
        await conn.execute(`UPDATE wallets SET gem = gem + ? WHERE user_id = ?`, [entitlement.gem, userId]);
      }
    });

    const [[w]] = [await query(`SELECT coin, gem FROM wallets WHERE user_id = ?`, [userId])];
    res.json({
      result: '000',
      orderId: verify.orderId,
      granted: entitlement,
      coin: Number(w.coin),
      gem: Number(w.gem),
    });
  } catch (e) { next(e); }
});

module.exports = { router, PRODUCT_CATALOG };
