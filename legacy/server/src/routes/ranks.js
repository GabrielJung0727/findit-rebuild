// 친구 랭킹 (1.12)
//
// GET /app/member/rankListFriends.json?userId=xxx&fbFriends=uid1,uid2,uid3
//   응답: { list: [{ranking, friendId, userNick, level, sumpoint, delta}] }
//   - ranking: 친구 그룹 내에서의 순위
//   - delta: 어제 대비 변동(+/- 순위)

const express = require('express');
const { query } = require('../db');
const C = require('../util/codes');

const router = express.Router();

router.get('/member/rankListFriends.json', async (req, res, next) => {
  try {
    const { userId, fbFriends } = req.query;
    if (!userId) return res.json({ result: C.RESULT_NOID });

    // fbFriends 는 CSV: Facebook uid 목록. 내부 user_id 는 "fb_<uid>" 형식 (facebook.json 에서 생성).
    const friendIds = (fbFriends || '')
      .split(',')
      .map((s) => s.trim())
      .filter(Boolean)
      .map((uid) => `fb_${uid}`);

    // 본인 포함 (항상 순위표에 보이게)
    const candidates = Array.from(new Set([userId, ...friendIds]));
    if (candidates.length === 0) return res.json({ result: C.RESULT_PASS, list: [] });

    const placeholders = candidates.map(() => '?').join(',');
    const rows = await query(
      `SELECT m.user_id AS friendId, m.user_nick AS userNick, w.level, w.score AS sumpoint
         FROM wallets w JOIN members m ON m.user_id = w.user_id
        WHERE w.user_id IN (${placeholders})
        ORDER BY w.score DESC`,
      candidates
    );

    // 어제 랭킹 조회 (delta 계산)
    const yesterdayRows = await query(
      `SELECT user_id, rank_no FROM rankings
        WHERE period = 'daily' AND period_date = DATE_SUB(CURDATE(), INTERVAL 1 DAY)
          AND user_id IN (${placeholders})`,
      candidates
    );
    const yMap = Object.fromEntries(yesterdayRows.map((r) => [r.user_id, r.rank_no]));

    const list = rows.map((r, i) => {
      const ranking = i + 1;
      const prev = yMap[r.friendId] || ranking;
      return {
        ranking,
        friendId: r.friendId,
        userNick: r.userNick,
        level: r.level,
        sumpoint: Number(r.sumpoint),
        delta: prev - ranking, // +: 상승, -: 하락
      };
    });
    res.json({ result: C.RESULT_PASS, list });
  } catch (e) { next(e); }
});

// 전체 랭킹 top N (기존 /rankList 보강)
router.get('/member/rankListTop.json', async (req, res, next) => {
  try {
    const { limit = '50' } = req.query;
    const n = Math.min(200, Math.max(1, Number(limit) || 50));
    const rows = await query(
      `SELECT RANK() OVER (ORDER BY w.score DESC) AS ranking,
              m.user_id AS friendId, m.user_nick AS userNick, w.level, w.score AS sumpoint
         FROM wallets w JOIN members m ON m.user_id = w.user_id
        ORDER BY w.score DESC
        LIMIT ${n}`
    );
    res.json({ result: C.RESULT_PASS, list: rows });
  } catch (e) { next(e); }
});

module.exports = router;
