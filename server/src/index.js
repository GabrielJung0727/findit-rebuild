require('dotenv').config();
const express = require('express');
const morgan = require('morgan');

const { ping } = require('./db');
const memberRoutes = require('./routes/member');
const socketServer = require('./socket/server');

const HTTP_PORT = Number(process.env.HTTP_PORT || 8080);
const TCP_PORT = Number(process.env.TCP_PORT || 22131);
const TCP_HOST = process.env.TCP_HOST || '0.0.0.0';
const LOG_LEVEL = process.env.LOG_LEVEL || 'dev';

const app = express();
app.disable('x-powered-by');

// 클라는 application/x-www-form-urlencoded GET 위주, 하지만 POST 도 허용
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

// 원본 경로: /app/member/*
app.use('/app', memberRoutes);

// 404
app.use((req, res) => {
  res.status(404).json({ result: '999', error: 'not_found', path: req.path });
});

// 에러 핸들러
app.use((err, _req, res, _next) => {
  console.error('[http] unhandled:', err);
  res.status(500).json({ result: '999', error: 'server_error', message: err.message });
});

async function main() {
  // DB 연결 확인 (실패해도 HTTP 서버는 기동 — healthz 로 외부 모니터링)
  try {
    await ping();
    console.log('[db] connected');
  } catch (e) {
    console.warn('[db] connection failed (server will start anyway):', e.message);
  }

  app.listen(HTTP_PORT, () => {
    console.log(`[http] listening on :${HTTP_PORT}`);
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
