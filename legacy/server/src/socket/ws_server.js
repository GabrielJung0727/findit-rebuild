// WebSocket 어댑터 — `socket/handlers.js` 핸들러를 ws 위에 얹은 얇은 래퍼.
// iOS 백그라운드/앱전환 시 raw TCP 유지가 까다로워 신규 Flutter 클라는 WS 사용 (04-26.md §12).
//
// 메시지 프레임:
//   클라→서버: 텍스트 1건 = TCP 와 동일한 `|code|arg1|arg2|...` 포맷 (4자리 길이 prefix 없음).
//   서버→클라: 동일 포맷.
//
// 인증: 첫 메시지가 `|auth|<token>` 이거나, 또는 connection-time 쿼리스트링 `?token=<t>`.
//        토큰 미검증인 동안엔 다른 코드를 무시. (TODO: session.js 와 결합해 실제 검증)
//
// keepalive: ws 의 ping/pong 자동 + 30s timeout. iOS 백그라운드에서도 OS 가 push 로 깨우는
//            패턴이 일반적이므로 클라가 명시적으로 reconnect 하면 충분.

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
function attach(httpServer, { path = '/ws' } = {}) {
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
    handlers.onConnect(conn);
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

  console.log(`[ws] gateway attached at ${path}`);
  return { wss };
}

module.exports = { attach };
