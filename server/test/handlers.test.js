const { test } = require('node:test');
const assert = require('node:assert');
const handlers = require('../src/socket/handlers');

function makeConn(requireAuth = false) {
  return {
    sent: [],
    destroyed: false,
    requireAuth,
    send(b) { this.sent.push(b); },
  };
}

test('WS 연결: 인증 전 게임 코드는 무시, 인증 후 동작', async () => {
  handlers.setTokenVerifier(async (t) => (t === 'good' ? 'user@x' : null));
  const conn = makeConn(true);
  handlers.onConnect(conn);

  handlers.onMessage(conn, '|100|user@x'); // USERLIST — 인증 전
  assert.equal(conn.sent.length, 0, '인증 전 메시지는 드롭되어야 함');

  await handlers.onMessage(conn, '|auth|good');
  assert.ok(conn.sent.some((s) => s.startsWith('|auth|000|user@x')));
  assert.equal(conn.authed, true);

  conn.sent.length = 0;
  handlers.onMessage(conn, '|100|user@x');
  assert.ok(conn.sent.some((s) => s.startsWith('|100|000')));
  handlers.onClose(conn);
});

test('WS 연결: 잘못된 토큰 → auth 실패(999), 미인증 유지', async () => {
  handlers.setTokenVerifier(async () => null);
  const conn = makeConn(true);
  handlers.onConnect(conn);
  await handlers.onMessage(conn, '|auth|bad');
  assert.ok(conn.sent.includes('|auth|999'));
  assert.notEqual(conn.authed, true);
  handlers.onClose(conn);
});

test('TCP 연결(requireAuth 미설정): 인증 없이 동작 — 레거시 호환', () => {
  const conn = makeConn(false);
  handlers.onConnect(conn);
  handlers.onMessage(conn, '|100|legacyUser');
  assert.ok(conn.sent.some((s) => s.startsWith('|100|000')));
  handlers.onClose(conn);
});

test('방 생성 → 입장 → 준비 → 게임 액션 중계', async () => {
  handlers.setTokenVerifier(async (t) => t); // token == userId
  const a = makeConn(true);
  const b = makeConn(true);
  handlers.onConnect(a);
  handlers.onConnect(b);
  await handlers.onMessage(a, '|auth|alice');
  await handlers.onMessage(b, '|auth|bob');

  a.sent.length = 0;
  handlers.onMessage(a, '|101'); // CREATEBATTLEROOM
  const createMsg = a.sent.find((s) => s.startsWith('|101|000|'));
  assert.ok(createMsg, '방 생성 응답');
  const roomName = createMsg.split('|')[3];

  a.sent.length = 0; b.sent.length = 0;
  handlers.onMessage(b, `|103|${roomName}`); // ENTERBATTLEROOM
  assert.ok(b.sent.some((s) => s.startsWith('|103|000')), '입장자 응답');
  assert.ok(a.sent.some((s) => s.startsWith('|103|000')), '방장 통지');

  b.sent.length = 0;
  handlers.onMessage(a, '|104|0'); // READY
  assert.ok(b.sent.some((s) => s.startsWith('|104|000')), '상대에게 ready 전달');

  b.sent.length = 0;
  handlers.onMessage(a, '|106||hit:3'); // GAME 액션
  assert.ok(b.sent.some((s) => s.startsWith('|106|000|hit:3')), '게임 액션 중계');

  handlers.onClose(a);
  handlers.onClose(b);
});
