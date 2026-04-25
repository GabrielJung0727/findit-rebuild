// TCP 어댑터 — `socket/handlers.js` 의 공용 핸들러를 net.Socket 위에 얹는 얇은 래퍼.
// 원본 클라(jadx 디컴파일된 안드 APK) 호환을 위해 유지. 신규 Flutter 클라는 `ws_server.js` 사용.
//
// 프레임: <4자리 길이><|code|payload...> — src/util/protocol.js 참조

const net = require('net');
const { encodeFrame, createFrameParser } = require('../util/protocol');
const handlers = require('./handlers');

function makeConn(socket) {
  // handlers.js 가 기대하는 Connection 인터페이스 구현
  return {
    socket,
    get destroyed() { return socket.destroyed; },
    send(body) { socket.write(encodeFrame(body)); },
  };
}

function start({ host, port, onReady } = {}) {
  const server = net.createServer((socket) => {
    socket.setNoDelay(true);
    const conn = makeConn(socket);
    handlers.onConnect(conn);
    console.log(`[tcp] connect ${socket.remoteAddress}:${socket.remotePort}`);

    const parser = createFrameParser((frame) => {
      try {
        handlers.onMessage(conn, frame);
      } catch (e) {
        console.error('[tcp] handler error:', e);
      }
    });
    socket.on('data', (chunk) => parser.feed(chunk));
    socket.on('error', (e) => console.warn('[tcp] error:', e.message));
    socket.on('close', () => {
      handlers.onClose(conn);
    });
  });

  server.on('error', (e) => console.error('[tcp] server error:', e));
  server.listen(port, host, () => {
    console.log(`[tcp] listening on ${host}:${port}`);
    if (onReady) onReady();
  });

  return server;
}

module.exports = { start, CODES: handlers.CODES };
