// FCM (푸시 알림)
//
// 공개:
//   POST /app/member/registerFcmToken.json  — body: { userId, fcmToken }
//
// 어드민:
//   POST /admin/push/user/:userId — body: { title, body, type, data }
//   POST /admin/push/broadcast    — body: { title, body, userIds[] }
//   GET  /admin/push/logs         — 최근 푸시 로그

const express = require('express');
const { query } = require('../db');
const fcm = require('../util/fcm');

const publicRouter = express.Router();
const adminRouter = express.Router();

publicRouter.all('/member/registerFcmToken.json', async (req, res, next) => {
  try {
    const { userId, fcmToken } = { ...req.query, ...req.body };
    if (!userId || !fcmToken) return res.json({ result: '999', error: 'missing_params' });
    await fcm.registerToken(userId, fcmToken);
    res.json({ result: '000' });
  } catch (e) { next(e); }
});

adminRouter.post('/user/:userId', async (req, res, next) => {
  try {
    const userId = req.params.userId;
    const { title, body, type = 'custom', data } = req.body;
    if (!title || !body) return res.status(400).json({ error: 'missing_params' });
    const out = await fcm.sendToUser(userId, { type, title, body, data });
    res.json({ ok: true, ...out });
  } catch (e) { next(e); }
});

adminRouter.post('/broadcast', async (req, res, next) => {
  try {
    const { title, body, userIds = [], type = 'notice', data } = req.body;
    if (!title || !body) return res.status(400).json({ error: 'missing_params' });
    let targets = userIds;
    if (!Array.isArray(targets) || targets.length === 0) {
      // 전체 활성 사용자 (최근 30일)
      const rows = await query(
        `SELECT user_id FROM members WHERE fcm_token IS NOT NULL
                                       AND last_active_at >= DATE_SUB(NOW(), INTERVAL 30 DAY)
         LIMIT 10000`
      );
      targets = rows.map((r) => r.user_id);
    }
    const results = [];
    for (const uid of targets) {
      const out = await fcm.sendToUser(uid, { type, title, body, data });
      results.push({ userId: uid, ...out });
    }
    const summary = results.reduce((acc, r) => { acc[r.status] = (acc[r.status] || 0) + 1; return acc; }, {});
    res.json({ ok: true, total: targets.length, summary, results: results.slice(0, 50) });
  } catch (e) { next(e); }
});

adminRouter.get('/logs', async (req, res, next) => {
  try {
    const limit = Math.min(500, Math.max(1, Number(req.query.limit) || 100));
    const rows = await query(
      `SELECT id, user_id, type, title, body, status, error, created_at
         FROM push_log ORDER BY id DESC LIMIT ${limit}`
    );
    res.json({ list: rows });
  } catch (e) { next(e); }
});

module.exports = { publicRouter, adminRouter };
