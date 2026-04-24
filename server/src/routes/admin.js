// 컨텐츠 관리 어드민 API (1.13)
//
// 인증: HTTP 헤더 `X-Admin-Token: <token>` 또는 쿼리 `adminToken`
//   → admin_tokens 테이블에서 검증
//
// 엔드포인트:
//   /admin/images    (GET/POST/PUT/DELETE) — 틀린그림 스테이지 + 7개 좌표
//   /admin/ads       (GET/POST/PUT/DELETE) — 광고 배너
//   /admin/notices   (GET/POST/PUT/DELETE) — 공지사항
//   /admin/users/:id (GET)                  — 회원 조회
//   /admin/stats     (GET)                  — 요약 통계

const express = require('express');
const { query } = require('../db');

const router = express.Router();

// 인증 미들웨어
router.use(async (req, res, next) => {
  const token = req.headers['x-admin-token'] || req.query.adminToken;
  if (!token) return res.status(401).json({ error: 'admin_token_required' });
  const rows = await query(
    `SELECT token FROM admin_tokens WHERE token = ? AND revoked_at IS NULL`,
    [token]
  );
  if (rows.length === 0) return res.status(401).json({ error: 'invalid_admin_token' });
  next();
});

// -----------------------------------------------------
// Images — 틀린그림 스테이지
// -----------------------------------------------------
router.get('/images', async (_req, res, next) => {
  try {
    const rows = await query(
      `SELECT img_id, img, x_size, y_size, img_type, image_cut, url_download, view, view_count, reg_date
         FROM images ORDER BY img_id DESC LIMIT 200`
    );
    res.json({ list: rows });
  } catch (e) { next(e); }
});

router.post('/images', async (req, res, next) => {
  try {
    const { img, xSize, ySize, x = 0, y = 0, imgType = 0, imageCut, urlDownload, urlDetail, urlVideo, view = 1 } = req.body;
    if (!img || !xSize || !ySize || !imageCut) return res.status(400).json({ error: 'missing_required' });
    // imageCut 은 JSON 문자열 — 클라 7개 좌표 배열
    const r = await query(
      `INSERT INTO images(img, x_size, y_size, x, y, img_type, image_cut, url_download, url_detail, url_video, view)
       VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`,
      [img, xSize, ySize, x, y, imgType, JSON.stringify(imageCut), urlDownload, urlDetail, urlVideo, view ? 1 : 0]
    );
    res.json({ ok: true, imgId: r.insertId });
  } catch (e) { next(e); }
});

router.put('/images/:id', async (req, res, next) => {
  try {
    const id = Number(req.params.id);
    const { view, imageCut, urlDownload } = req.body;
    const updates = [];
    const values = [];
    if (view !== undefined) { updates.push('view = ?'); values.push(view ? 1 : 0); }
    if (imageCut !== undefined) { updates.push('image_cut = ?'); values.push(JSON.stringify(imageCut)); }
    if (urlDownload !== undefined) { updates.push('url_download = ?'); values.push(urlDownload); }
    if (updates.length === 0) return res.status(400).json({ error: 'no_fields' });
    values.push(id);
    await query(`UPDATE images SET ${updates.join(', ')} WHERE img_id = ?`, values);
    res.json({ ok: true });
  } catch (e) { next(e); }
});

router.delete('/images/:id', async (req, res, next) => {
  try {
    await query(`UPDATE images SET view = 0 WHERE img_id = ?`, [Number(req.params.id)]);
    res.json({ ok: true });
  } catch (e) { next(e); }
});

// -----------------------------------------------------
// Ads
// -----------------------------------------------------
router.get('/ads', async (_req, res, next) => {
  try {
    const rows = await query(
      `SELECT ad_id, ad_image, ad_name, ad_url, expire_date, view_count, created_at
         FROM ad_images ORDER BY ad_id DESC LIMIT 200`
    );
    res.json({ list: rows });
  } catch (e) { next(e); }
});

router.post('/ads', async (req, res, next) => {
  try {
    const { adImage, adName, adUrl, expireDate } = req.body;
    if (!adImage || !adName || !expireDate) return res.status(400).json({ error: 'missing_required' });
    const r = await query(
      `INSERT INTO ad_images(ad_image, ad_name, ad_url, expire_date) VALUES(?, ?, ?, ?)`,
      [adImage, adName, adUrl || null, expireDate]
    );
    res.json({ ok: true, adId: r.insertId });
  } catch (e) { next(e); }
});

router.delete('/ads/:id', async (req, res, next) => {
  try {
    await query(`DELETE FROM ad_images WHERE ad_id = ?`, [Number(req.params.id)]);
    res.json({ ok: true });
  } catch (e) { next(e); }
});

// -----------------------------------------------------
// Notices
// -----------------------------------------------------
router.get('/notices', async (_req, res, next) => {
  try {
    const rows = await query(`SELECT * FROM notices ORDER BY id DESC LIMIT 100`);
    res.json({ list: rows });
  } catch (e) { next(e); }
});

router.post('/notices', async (req, res, next) => {
  try {
    const { title, body, isVisible = true } = req.body;
    if (!title || !body) return res.status(400).json({ error: 'missing_required' });
    const r = await query(
      `INSERT INTO notices(title, body, is_visible) VALUES(?, ?, ?)`,
      [title, body, !!isVisible]
    );
    res.json({ ok: true, id: r.insertId });
  } catch (e) { next(e); }
});

router.put('/notices/:id', async (req, res, next) => {
  try {
    const id = Number(req.params.id);
    const { title, body, isVisible } = req.body;
    const updates = [];
    const values = [];
    if (title !== undefined) { updates.push('title = ?'); values.push(title); }
    if (body !== undefined) { updates.push('body = ?'); values.push(body); }
    if (isVisible !== undefined) { updates.push('is_visible = ?'); values.push(!!isVisible); }
    if (updates.length === 0) return res.status(400).json({ error: 'no_fields' });
    values.push(id);
    await query(`UPDATE notices SET ${updates.join(', ')} WHERE id = ?`, values);
    res.json({ ok: true });
  } catch (e) { next(e); }
});

router.delete('/notices/:id', async (req, res, next) => {
  try {
    await query(`DELETE FROM notices WHERE id = ?`, [Number(req.params.id)]);
    res.json({ ok: true });
  } catch (e) { next(e); }
});

// -----------------------------------------------------
// Stats
// -----------------------------------------------------
router.get('/stats', async (_req, res, next) => {
  try {
    const [[members]] = [await query(`SELECT COUNT(*) AS c FROM members`)];
    const [[images]] = [await query(`SELECT COUNT(*) AS c FROM images WHERE view = 1`)];
    const [[ads]] = [await query(`SELECT COUNT(*) AS c FROM ad_images WHERE expire_date > NOW()`)];
    const [[purchases]] = [await query(`SELECT COUNT(*) AS c FROM iap_receipts WHERE verified = 1`)];
    const [[rewards24h]] = [await query(
      `SELECT COUNT(*) AS c, COALESCE(SUM(coin_reward),0) AS sum FROM ad_reward_log
        WHERE created_at >= DATE_SUB(NOW(), INTERVAL 1 DAY)`
    )];
    res.json({
      members: members.c,
      images_visible: images.c,
      ads_active: ads.c,
      iap_verified: purchases.c,
      ad_rewards_24h: rewards24h.c,
      ad_coin_reward_24h: Number(rewards24h.sum),
    });
  } catch (e) { next(e); }
});

module.exports = router;
