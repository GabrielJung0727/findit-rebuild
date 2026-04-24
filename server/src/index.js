require('dotenv').config();
const path = require('path');
const express = require('express');
const morgan = require('morgan');

const { ping } = require('./db');
const memberRoutes = require('./routes/member');
const skillRoutes = require('./routes/skills');
const economyRoutes = require('./routes/economy');
const adRoutes = require('./routes/ads');
const rankRoutes = require('./routes/ranks');
const adminRoutes = require('./routes/admin');
const analytics = require('./routes/analytics');
const fcmRoutes = require('./routes/fcm');
const iapModule = require('./routes/iap');
const fcmUtil = require('./util/fcm');
const socketServer = require('./socket/server');

const HTTP_PORT = Number(process.env.HTTP_PORT || 8080);
const TCP_PORT = Number(process.env.TCP_PORT || 22131);
const TCP_HOST = process.env.TCP_HOST || '0.0.0.0';
const LOG_LEVEL = process.env.LOG_LEVEL || 'dev';

// 프로세스 레벨 안전망 — 예외로 인한 갑작스런 종료 방지
process.on('uncaughtException', (e) => {
  console.error('[app] uncaughtException:', e.message);
});
process.on('unhandledRejection', (e) => {
  console.error('[app] unhandledRejection:', e && e.message ? e.message : e);
});

const app = express();
app.disable('x-powered-by');

app.use(express.urlencoded({ extended: true, limit: '1mb' }));
app.use(express.json({ limit: '1mb' }));
app.use(morgan(LOG_LEVEL));

app.get('/healthz', async (_req, res) => {
  try {
    await ping();
    res.json({ ok: true });
  } catch (e) {
    res.status(503).json({ ok: false, error: e.message });
  }
});

// -----------------------------------------------------
// 공개 경로: /app/*
// -----------------------------------------------------
app.use('/app', memberRoutes);
app.use('/app', skillRoutes);
app.use('/app', economyRoutes);
app.use('/app', adRoutes);
app.use('/app', rankRoutes);
app.use('/app', analytics.publicRouter);   // /app/member/event.json
app.use('/app', fcmRoutes.publicRouter);   // /app/member/registerFcmToken.json
app.use('/app', iapModule.router);         // /app/member/verifyIap.json

// -----------------------------------------------------
// 어드민 대시보드 HTML (토큰은 페이지 내 JS 가 localStorage 로 관리)
// 반드시 admin.js 토큰 미들웨어 등록 이전에 마운트
// -----------------------------------------------------
app.get('/admin/ui', (_req, res) => {
  res.sendFile(path.join(__dirname, '..', 'public', 'admin.html'));
});
app.use('/admin/ui', express.static(path.join(__dirname, '..', 'public')));

// -----------------------------------------------------
// 어드민 API: /admin/*
// admin.js 전역 미들웨어(X-Admin-Token) 가 하위 라우터들에도 적용됨
// -----------------------------------------------------
app.use('/admin', adminRoutes);
app.use('/admin/analytics', analytics.adminRouter);
app.use('/admin/push', fcmRoutes.adminRouter);

// 404
app.use((req, res) => {
  res.status(404).json({ result: '999', error: 'not_found', path: req.path });
});

app.use((err, _req, res, _next) => {
  console.error('[http] unhandled:', err);
  res.status(500).json({ result: '999', error: 'server_error', message: err.message });
});

async function main() {
  try {
    await ping();
    console.log('[db] connected');
  } catch (e) {
    console.warn('[db] connection failed (server will start anyway):', e.message);
  }

  // FCM 준비 (옵션)
  fcmUtil.tryInitFirebase();

  app.listen(HTTP_PORT, () => {
    console.log(`[http] listening on :${HTTP_PORT}`);
    console.log(`       admin UI: http://localhost:${HTTP_PORT}/admin/ui`);
  });

  socketServer.start({ host: TCP_HOST, port: TCP_PORT });

  process.on('SIGTERM', () => {
    console.log('[app] SIGTERM, exiting.');
    process.exit(0);
  });
}

main().catch((e) => {
  console.error('[app] fatal:', e);
  process.exit(1);
});
