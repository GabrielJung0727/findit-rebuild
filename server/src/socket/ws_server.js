// WebSocket 어댑터 — `socket/handlers.js` 핸들러를 ws 위에 얹은 얇은 래퍼.
// iOS 백그라운드/앱전환 시 raw TCP 유지가 까다로워 신규 Flutter 클라는 WS 사용 (04-26.md §12).
//
// 메시지 프레임:
//   클라→서버: 텍스트 1건 = TCP 와 동일한 `|code|arg1|arg2|...` 포맷 (4자리 길이 prefix 없음).
//   서버→클라: 동일 포맷.
//
// 인증: 첫 메시지가 `|auth|<token>` 이거나, 또는 connection-time 쿼리스트링 `?token=<t>`.
//        handlers.js 가 conn.requireAuth 동안 토큰 검증 전 게임 코드를 무시 (session.verifyToken 결합 완료).
//
// keepalive: 아래 heartbeatSweep 가 30s 마다 ping → pong 없는 연결 terminate.
//            iOS 백그라운드로 유실된 소켓도 다음 스윕에서 회수됨.

let WSServer;
try {
  // ws 는 optionalDependency 처럼 다룸. 미설치 환경에서는 WS 비활성, TCP 만 동작.
  // eslint-disable-next-line global-require
  WSServer = require('ws').WebSocketServer;
} catch (_) {
  WSServer = null;
}

const handlers = require('./handlers');

function makeConn(ws) {
  return {
    ws,
    get destroyed() { return ws.readyState !== 1 /* OPEN */; },
    send(body) {
      try {
        if (ws.readyState === 1) ws.send(body);
      } catch (e) {
        // pass
      }
    },
  };
}

/**
 * Express 의 HTTP 서버에 WS 핸들러를 attach.
 *  - path: '/ws' (기본)
 *  - 같은 process 의 handlers.js 상태(rooms/waiting/sessions) 를 TCP 와 공유.
 *
 * @param {http.Server} httpServer Express 의 listen() 이 반환한 서버
 * @param {{path?: string}} options
 * @returns {{wss: import('ws').WebSocketServer | null}}
 */
/**
 * keepalive 스윕 1회: 직전 주기에 pong 이 없던(isAlive=false) 연결을 끊고,
 * 살아있는 연결엔 ping 을 보낸 뒤 isAlive=false 로 리셋(다음 주기까지 pong 대기).
 * 순수 로직이라 단위 테스트에서 fake client 로 검증 가능.
 * @param {Iterable<any>} clients wss.clients (Set) 또는 배열
 */
function heartbeatSweep(clients) {
  let pinged = 0;
  let terminated = 0;
  for (const ws of clients) {
    if (ws.isAlive === false) {
      ws.terminate();
      terminated += 1;
      continue;
    }
    ws.isAlive = false;
    try { ws.ping(); pinged += 1; } catch (_) { /* pass */ }
  }
  return { pinged, terminated };
}

function attach(httpServer, { path = '/ws', heartbeatMs = 30000 } = {}) {
  if (!WSServer) {
    console.warn('[ws] ws package not installed — WebSocket gateway disabled');
    return { wss: null };
  }
  const wss = new WSServer({ noServer: true });
  httpServer.on('upgrade', (req, socket, head) => {
    if (!req.url.startsWith(path)) {
      socket.destroy();
      return;
    }
    wss.handleUpgrade(req, socket, head, (ws) => wss.emit('connection', ws, req));
  });

  wss.on('connection', (ws, req) => {
    const conn = makeConn(ws);
    conn.requireAuth = true; // WS 연결은 |auth| 성공 전까지 게임 코드 무시 (handlers.js)
    ws.isAlive = true;
    ws.on('pong', () => { ws.isAlive = true; });
    handlers.onConnect(conn);

    // 쿼리스트링 ?token=<t> 가 있으면 즉시 인증 시도 (편의: 첫 |auth| 프레임 생략 가능)
    try {
      const token = new URL(req.url, 'http://localhost').searchParams.get('token');
      if (token) handlers.onMessage(conn, `|auth|${token}`);
    } catch (_) { /* malformed url — 무시, 클라가 |auth| 프레임으로 인증 */ }

    const remote = req.socket?.remoteAddress;
    console.log(`[ws] connect ${remote}`);

    ws.on('message', (raw) => {
      const body = typeof raw === 'string' ? raw : raw.toString('utf8');
      try {
        handlers.onMessage(conn, body);
      } catch (e) {
        console.error('[ws] handler error:', e);
      }
    });
    ws.on('close', () => handlers.onClose(conn));
    ws.on('error', (e) => console.warn('[ws] error:', e.message));
  });

  // keepalive 주기 스윕 — 죽은 연결 회수 (iOS 백그라운드 등으로 유실된 소켓 정리)
  const hb = setInterval(() => heartbeatSweep(wss.clients), heartbeatMs);
  if (hb.unref) hb.unref();
  wss.on('close', () => clearInterval(hb));

  console.log(`[ws] gateway attached at ${path} (heartbeat ${heartbeatMs}ms, auth required)`);
  return { wss };
}

module.exports = { attach, heartbeatSweep };
