// Analytics — 서버측 custom stats (Google Analytics 대체용)
//
// 클라이언트 이벤트 수집:
//   POST /app/member/event.json      — body: { userId, eventName, payload, sessionId }
//
// 어드민 집계:
//   GET  /admin/analytics/overview   — 오늘/어제/7일 요약
//   GET  /admin/analytics/dau        — 최근 N일 DAU
//   GET  /admin/analytics/revenue    — IAP 매출
//   GET  /admin/analytics/events     — 이벤트 카운트 (event_name groupby)
//   GET  /admin/analytics/ads        — 광고 CTR/노출

const express = require('express');
const { query } = require('../db');

const publicRouter = express.Router();
const adminRouter = express.Router();

// -----------------------------------------------------
// 클라 이벤트 보고 (공개)
// -----------------------------------------------------
publicRouter.all('/member/event.json', async (req, res, next) => {
  try {
    const p = { ...req.query, ...req.body };
    const { userId, eventName, payload, sessionId } = p;
    if (!eventName) return res.json({ result: '999', error: 'missing_event_name' });
    let payloadStr = null;
    if (payload != null) {
      try {
        payloadStr = typeof payload === 'string' ? payload : JSON.stringify(payload);
        if (payloadStr.length > 4000) payloadStr = payloadStr.slice(0, 4000);
      } catch (_) { payloadStr = null; }
    }
    await query(
      `INSERT INTO event_log(user_id, event_name, payload, session_id) VALUES(?, ?, ?, ?)`,
      [userId || null, String(eventName).slice(0, 63), payloadStr, sessionId || null]
    );
    // 활성 사용자 마킹
    if (userId) {
      await query(`UPDATE members SET last_active_at = NOW() WHERE user_id = ?`, [userId]);
    }
    res.json({ result: '000' });
  } catch (e) { next(e); }
});

// -----------------------------------------------------
// /admin/analytics/* — admin.js 의 인증 미들웨어 재사용 위해
// 별도 파일에서 export 하고 index.js 에서 use 순서 중요
// -----------------------------------------------------

adminRouter.get('/overview', async (_req, res, next) => {
  try {
    const [[members]] = [await query(`SELECT COUNT(*) AS c FROM members`)];
    const [[dauToday]] = [await query(
      `SELECT COUNT(DISTINCT user_id) AS c FROM event_log
        WHERE created_at >= CURDATE()`
    )];
    const [[dauYday]] = [await query(
      `SELECT COUNT(DISTINCT user_id) AS c FROM event_log
        WHERE created_at >= DATE_SUB(CURDATE(), INTERVAL 1 DAY)
          AND created_at <  CURDATE()`
    )];
    const [[wau]] = [await query(
      `SELECT COUNT(DISTINCT user_id) AS c FROM event_log
        WHERE created_at >= DATE_SUB(NOW(), INTERVAL 7 DAY)`
    )];
    const [[iapToday]] = [await query(
      `SELECT COUNT(*) AS c, COALESCE(SUM(amount_coin),0) AS coin, COALESCE(SUM(amount_gem),0) AS gem
         FROM iap_receipts WHERE verified = 1 AND created_at >= CURDATE()`
    )];
    const [[newJoins]] = [await query(
      `SELECT COUNT(*) AS c FROM members WHERE created_at >= DATE_SUB(NOW(), INTERVAL 1 DAY)`
    )];
    res.json({
      members: members.c,
      new_joins_24h: newJoins.c,
      dau_today: dauToday.c,
      dau_yesterday: dauYday.c,
      wau_7d: wau.c,
      iap_today: { count: iapToday.c, coin: Number(iapToday.coin), gem: Number(iapToday.gem) },
    });
  } catch (e) { next(e); }
});

adminRouter.get('/dau', async (req, res, next) => {
  try {
    const days = Math.min(90, Math.max(1, Number(req.query.days) || 14));
    const rows = await query(
      `SELECT DATE(created_at) AS day, COUNT(DISTINCT user_id) AS dau
         FROM event_log
        WHERE created_at >= DATE_SUB(CURDATE(), INTERVAL ? DAY)
        GROUP BY DATE(created_at)
        ORDER BY day DESC`,
      [days]
    );
    res.json({ list: rows });
  } catch (e) { next(e); }
});

adminRouter.get('/revenue', async (req, res, next) => {
  try {
    const days = Math.min(365, Math.max(1, Number(req.query.days) || 30));
    const rows = await query(
      `SELECT DATE(created_at) AS day, store, COUNT(*) AS cnt,
              COALESCE(SUM(amount_coin),0) AS coin,
              COALESCE(SUM(amount_gem),0) AS gem
         FROM iap_receipts
        WHERE verified = 1
          AND created_at >= DATE_SUB(CURDATE(), INTERVAL ? DAY)
        GROUP BY DATE(created_at), store
        ORDER BY day DESC, store`,
      [days]
    );
    res.json({ list: rows });
  } catch (e) { next(e); }
});

adminRouter.get('/events', async (req, res, next) => {
  try {
    const hours = Math.min(24 * 30, Math.max(1, Number(req.query.hours) || 24));
    const rows = await query(
      `SELECT event_name, COUNT(*) AS cnt, COUNT(DISTINCT user_id) AS users
         FROM event_log
        WHERE created_at >= DATE_SUB(NOW(), INTERVAL ? HOUR)
        GROUP BY event_name
        ORDER BY cnt DESC
        LIMIT 50`,
      [hours]
    );
    res.json({ list: rows });
  } catch (e) { next(e); }
});

adminRouter.get('/ads', async (_req, res, next) => {
  try {
    const rows = await query(
      `SELECT ad_id, ad_name, view_count, click_count,
              CASE WHEN view_count = 0 THEN NULL ELSE ROUND(click_count * 100.0 / view_count, 2) END AS ctr_pct,
              expire_date
         FROM ad_images
        ORDER BY view_count DESC
        LIMIT 100`
    );
    res.json({ list: rows });
  } catch (e) { next(e); }
});

module.exports = { publicRouter, adminRouter };
