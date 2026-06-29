// 멀티플레이 핸들러 + 인메모리 상태 — 트랜스포트(TCP/WS) 독립.
//
// 어댑터 (server.js / ws_server.js) 가 `Connection` 인터페이스를 만들어 전달:
//   - id              유니크 (socket 인스턴스 또는 ws id)
//   - userId, character, roomName  세션 필드
//   - destroyed: bool
//   - send(body: string)            서버→클라 프레임 1건 전송 (트랜스포트가 framing 처리)
//
// 코드표 (GameActivity.java:48-54 와 동일):
//   100 USERLIST / 101 CREATEBATTLEROOM / 102 EXITBATTLEROOM /
//   103 ENTERBATTLEROOM / 104 READY / 106 GAME / 107 INVITE
//
// 규모가 커지면 sessions/waiting/rooms 를 Redis 로 이동.

const fcm = require('../util/fcm');

// 토큰 검증기 — 기본은 session.verifyToken(DB 조회), 테스트는 setTokenVerifier 로 주입.
// lazy-require 라 DB/모듈 로드를 인증이 실제로 일어날 때까지 미룸.
let _tokenVerifier = null;
function getTokenVerifier() {
  if (!_tokenVerifier) _tokenVerifier = require('../util/session').verifyToken;
  return _tokenVerifier;
}
function setTokenVerifier(fn) { _tokenVerifier = fn; }

const CODES = {
  USERLIST: '100',
  CREATEBATTLEROOM: '101',
  EXITBATTLEROOM: '102',
  ENTERBATTLEROOM: '103',
  READY: '104',
  GAME: '106',
  INVITE: '107',
};
const OK = '000';
const AUTH = 'auth';
const FAIL_NOID = '999';
const FAIL_ALREADYEXIT = '900';
const FAIL_ALREADYGAME = '911';

// 인메모리 상태 — TCP/WS 양쪽이 공유 (같은 프로세스).
const sessions = new Map(); // conn -> { userId, character, roomName }
const waiting = new Map();  // userId -> conn (대기실 입장 유저)
const rooms = new Map();    // roomName -> { creator: conn, guest: conn|null }
let roomCounter = 1;

function send(conn, body) {
  if (!conn || conn.destroyed) return;
  conn.send(body);
}

function userListPayload() {
  // "userId1,character1;userId2,character2;..."
  const list = [];
  for (const [uid, c] of waiting) {
    const sess = sessions.get(c);
    list.push(`${uid},${sess?.character ?? 0}`);
  }
  return list.join(';');
}

// -----------------------------------------------------
// 이벤트 핸들러 — 어댑터가 connection 생성/메시지/종료 시 호출
// -----------------------------------------------------

function onConnect(conn) {
  sessions.set(conn, {});
}

function onMessage(conn, body) {
  const fields = (body || '').split('|'); // ['', code, ...args]
  const code = fields[1];
  const args = fields.slice(2);
  if (code === AUTH) return onAuth(conn, args);
  // 인증 필수 연결(WS)은 auth 성공 전까지 게임 코드를 무시 (ws_server.js 가 requireAuth 설정).
  if (conn.requireAuth && !conn.authed) {
    console.warn(`[socket] drop pre-auth code=${code}`);
    return;
  }
  switch (code) {
    case CODES.USERLIST: return onUserList(conn, args);
    case CODES.CREATEBATTLEROOM: return onCreateRoom(conn, args);
    case CODES.EXITBATTLEROOM: return onExitRoom(conn, args);
    case CODES.ENTERBATTLEROOM: return onEnterRoom(conn, args);
    case CODES.READY: return onReady(conn, args);
    case CODES.GAME: return onGame(conn, args);
    case CODES.INVITE: return onInvite(conn, args);
    default:
      console.warn(`[socket] unknown code: ${code} body: ${body}`);
  }
}

// auth: 첫 메시지 `|auth|<token>` 또는 WS 쿼리스트링 ?token= 에서 호출.
// 검증 성공 시 conn.authed=true + userId 바인딩. Promise 를 반환해 테스트에서 await 가능.
function onAuth(conn, [token]) {
  return Promise.resolve()
    .then(() => getTokenVerifier()(token))
    .then((userId) => {
      if (userId) {
        conn.authed = true;
        const s = sessions.get(conn) || {};
        s.userId = userId;
        sessions.set(conn, s);
        send(conn, `|${AUTH}|${OK}|${userId}`);
      } else {
        send(conn, `|${AUTH}|${FAIL_NOID}`);
      }
    })
    .catch((e) => {
      console.warn('[socket] auth error:', e.message);
      send(conn, `|${AUTH}|${FAIL_NOID}`);
    });
}

function onClose(conn) {
  const session = sessions.get(conn);
  if (session) {
    if (session.userId) waiting.delete(session.userId);
    if (session.roomName) {
      const room = rooms.get(session.roomName);
      if (room) {
        const other = room.creator === conn ? room.guest : room.creator;
        rooms.delete(session.roomName);
        if (other && !other.destroyed) {
          send(other, `|${CODES.EXITBATTLEROOM}|${OK}`);
          const oSess = sessions.get(other);
          if (oSess) oSess.roomName = null;
        }
      }
    }
  }
  sessions.delete(conn);
}

// 100: 유저 목록
function onUserList(conn, [userId]) {
  if (userId) {
    sessions.set(conn, { ...(sessions.get(conn) || {}), userId });
    waiting.set(userId, conn);
  }
  const list = userListPayload();
  const count = waiting.size;
  send(conn, `|${CODES.USERLIST}|${OK}|${count}|${list}|${count}|${list}`);
}

// 101: 방 생성
function onCreateRoom(conn) {
  const session = sessions.get(conn);
  if (!session) return;
  const roomName = `@room_${roomCounter++}`;
  rooms.set(roomName, { creator: conn, guest: null });
  session.roomName = roomName;
  if (session.userId) waiting.delete(session.userId);
  send(conn, `|${CODES.CREATEBATTLEROOM}|${OK}|${roomName}`);
}

// 102: 방 나가기
function onExitRoom(conn, [roomName]) {
  const room = rooms.get(roomName);
  if (room) {
    const other = room.creator === conn ? room.guest : room.creator;
    rooms.delete(roomName);
    if (other && !other.destroyed) {
      const oSess = sessions.get(other);
      if (oSess) oSess.roomName = null;
      send(other, `|${CODES.EXITBATTLEROOM}|${OK}`);
    }
  }
  const session = sessions.get(conn);
  if (session) {
    session.roomName = null;
    if (session.userId) waiting.set(session.userId, conn);
  }
  send(conn, `|${CODES.EXITBATTLEROOM}|${OK}`);
}

// 103: 방 입장
function onEnterRoom(conn, [roomName]) {
  const room = rooms.get(roomName);
  const session = sessions.get(conn);
  if (!room || !session) {
    send(conn, `|${CODES.ENTERBATTLEROOM}|${FAIL_ALREADYEXIT}`);
    return;
  }
  if (room.guest) {
    send(conn, `|${CODES.ENTERBATTLEROOM}|${FAIL_ALREADYGAME}`);
    return;
  }
  room.guest = conn;
  session.roomName = roomName;
  if (session.userId) waiting.delete(session.userId);

  const creatorSess = sessions.get(room.creator) || {};
  send(conn, `|${CODES.ENTERBATTLEROOM}|${OK}|${creatorSess.character ?? 0}`);
  send(room.creator, `|${CODES.ENTERBATTLEROOM}|${OK}|${session.character ?? 0}`);
}

// 104: 준비 완료
function onReady(conn, [characterName]) {
  const session = sessions.get(conn);
  if (!session || !session.roomName) return;
  if (characterName) session.character = characterName;
  const room = rooms.get(session.roomName);
  if (!room) return;
  const opponent = room.creator === conn ? room.guest : room.creator;
  if (opponent) send(opponent, `|${CODES.READY}|${OK}|${characterName}`);
}

// 106: 게임 액션 중계
function onGame(conn, [, payload]) {
  const session = sessions.get(conn);
  if (!session || !session.roomName) return;
  const room = rooms.get(session.roomName);
  if (!room) return;
  const opponent = room.creator === conn ? room.guest : room.creator;
  if (opponent) send(opponent, `|${CODES.GAME}|${OK}|${payload || ''}`);
}

// 107: 초대 + 오프라인 FCM
function onInvite(conn, [targetUserId, roomName]) {
  const target = waiting.get(targetUserId);
  const fromSession = sessions.get(conn);
  if (!target) {
    send(conn, `|${CODES.INVITE}|${FAIL_ALREADYEXIT}|${targetUserId || ''}`);
    if (targetUserId) {
      fcm.sendToUser(targetUserId, {
        type: 'invite',
        title: '대전 초대',
        body: `${fromSession?.userId || '친구'} 님이 초대 요청을 하셨습니다.`,
        data: { from: fromSession?.userId || '', roomName: roomName || '' },
      }).catch((e) => console.warn('[socket] invite push failed:', e.message));
    }
    return;
  }
  send(target, `|${CODES.INVITE}|${OK}|${fromSession?.userId || ''}|${roomName || ''}`);
  send(conn, `|${CODES.INVITE}|${OK}|${targetUserId}`);
}

module.exports = {
  CODES,
  onConnect,
  onMessage,
  onClose,
  onAuth,
  setTokenVerifier,
  // 테스트용
  _state: { sessions, waiting, rooms },
};
