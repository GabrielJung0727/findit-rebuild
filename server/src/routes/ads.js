// 광고 보상 플로우 (1.11)
//
// POST /app/member/adReward.json
//   파라미터: userId, adId
//   동작: 광고 조회 카운트 증가 + 일일 상한 내에서 코인 보상
//
// 기존 /app/member/hitViewCount.json 은 member.js 에 유지 (조회만 카운트, 보상 없음).

const express = require('express');
const { query, tx } = require('../db');
const C = require('../util/codes');
const balance = require('../util/balance');

const router = express.Router();

router.all('/member/adReward.json', async (req, res, next) => {
  try {
    const { userId, adId } = { ...req.query, ...req.body };
    if (!userId || adId == null) return res.json({ result: C.RESULT_NOID });
    const aid = Number(adId);

    const out = await tx(async (conn) => {
      // 일일 상한 체크
      const [[row]] = await conn.execute(
        `SELECT COUNT(*) AS cnt FROM ad_reward_log
          WHERE user_id = ? AND created_at >= DATE_SUB(NOW(), INTERVAL 1 DAY)`,
        [userId]
      );
      if (row.cnt >= balance.AD_REWARD_DAILY_CAP) {
        return { err: C.RESULT_NOID, reason: 'daily_cap_reached', cap: balance.AD_REWARD_DAILY_CAP };
      }

      const reward = balance.AD_REWARD_COIN_PER_VIEW;
      await conn.execute(`UPDATE ad_images SET view_count = view_count + 1 WHERE ad_id = ?`, [aid]);
      await conn.execute(`UPDATE wallets SET coin = coin + ? WHERE user_id = ?`, [reward, userId]);
      await conn.execute(
        `INSERT INTO ad_reward_log(user_id, ad_id, coin_reward) VALUES(?, ?, ?)`,
        [userId, aid, reward]
      );
      const [[w]] = await conn.execute(`SELECT coin FROM wallets WHERE user_id = ?`, [userId]);
      return { coinReward: reward, coin: Number(w.coin) };
    });
    if (out.err) return res.json({ result: out.err, ...out });
    res.json({ result: C.RESULT_PASS, ...out });
  } catch (e) { next(e); }
});

// -----------------------------------------------------
// 광고 클릭 추적 (보상 없음)
// 파라미터: userId (선택), adId
// -----------------------------------------------------
router.all('/member/adClick.json', async (req, res, next) => {
  try {
    const { userId, adId } = { ...req.query, ...req.body };
    if (adId == null) return res.json({ result: C.RESULT_NOID });
    const aid = Number(adId);
    await query(`UPDATE ad_images SET click_count = click_count + 1 WHERE ad_id = ?`, [aid]);
    await query(`INSERT INTO ad_click_log(user_id, ad_id) VALUES(?, ?)`, [userId || null, aid]);
    res.json({ result: C.RESULT_PASS });
  } catch (e) { next(e); }
});

module.exports = router;
