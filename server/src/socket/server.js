// 멀티플레이 TCP 소켓 서버
// 원본: 14.63.220.39:22131
// 프레임: <4자리 길이><|code|payload...> — src/util/protocol.js 참조
//
// 코드표 (GameActivity.java:48-54 기준):
//   100 USERLIST         - 대기실 유저 목록 요청
//   101 CREATEBATTLEROOM - 대전방 생성
//   102 EXITBATTLEROOM   - 대전방 나가기
//   103 ENTERBATTLEROOM  - 대전방 입장 (상대방 초대 수락 등)
//   104 READY            - 준비 완료 (손들기)
//   106 GAME             - 게임 중 스킬/아이템 액션 중계
//   107 INVITE           - 친구 초대

const net = require('net');
const { encodeFrame, createFrameParser, splitFields } = require('../util/protocol');

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
const FAIL_ALREADYEXIT = '900';
const FAIL_ALREADYGAME = '911';

// 인메모리 상태. 규모가 커지면 Redis 로 이동.
const sessions = new Map(); // socket -> { userId, character, roomName }
const waiting = new Map();  // userId -> socket (대기실에 들어온 유저)
const rooms = new Map();    // roomName -> { creator: socket, guest: socket|null }

let roomCounter = 1;

function send(socket, body) {
  if (!socket || socket.destroyed) return;
  socket.write(encodeFrame(body));
}

function userListPayload() {
  // "userId1,character1;userId2,character2;..."
  const list = [];
  for (const [uid, sock] of waiting) {
    const session = sessions.get(sock);
    list.push(`${uid},${session?.character ?? 0}`);
  }
  return list.join(';');
}

function handleMessage(socket, body) {
  const fields = splitFields(body); // ['', code, ...args]
  const code = fields[1];
  const args = fields.slice(2);

  switch (code) {
    case CODES.USERLIST:
      return onUserList(socket, args);
    case CODES.CREATEBATTLEROOM:
      return onCreateRoom(socket, args);
    case CODES.EXITBATTLEROOM:
      return onExitRoom(socket, args);
    case CODES.ENTERBATTLEROOM:
      return onEnterRoom(socket, args);
    case CODES.READY:
      return onReady(socket, args);
    case CODES.GAME:
      return onGame(socket, args);
    case CODES.INVITE:
      return onInvite(socket, args);
    default:
      console.warn(`[socket] unknown code: ${code} body: ${body}`);
  }
}

// 100: 유저 목록
// 클라 요청: |100|<userId>
// 응답: |100|000|<count>|<csvList>
//   또는 (자기 자신이 대기실에 추가되면서 오는 경우) 전체 브로드캐스트
function onUserList(socket, [userId]) {
  if (userId) {
    sessions.set(socket, { ...(sessions.get(socket) || {}), userId });
    waiting.set(userId, socket);
  }
  const list = userListPayload();
  const count = waiting.size;
  send(socket, `|${CODES.USERLIST}|${OK}|${count}|${list}|${count}|${list}`);
}

// 101: 방 생성
function onCreateRoom(socket, _args) {
  const session = sessions.get(socket);
  if (!session) return;
  const roomName = `@room_${roomCounter++}`;
  rooms.set(roomName, { creator: socket, guest: null });
  session.roomName = roomName;
  // 대기실에서 빼기
  if (session.userId) waiting.delete(session.userId);
  send(socket, `|${CODES.CREATEBATTLEROOM}|${OK}|${roomName}`);
}

// 102: 방 나가기
// 클라 요청: |102|<roomName>|<userName>
function onExitRoom(socket, [roomName, userName]) {
  const room = rooms.get(roomName);
  if (room) {
    const other = room.creator === socket ? room.guest : room.creator;
    rooms.delete(roomName);
    if (other && !other.destroyed) {
      const oSess = sessions.get(other);
      if (oSess) oSess.roomName = null;
      send(other, `|${CODES.EXITBATTLEROOM}|${OK}`);
    }
  }
  const session = sessions.get(socket);
  if (session) {
    session.roomName = null;
    if (session.userId) waiting.set(session.userId, socket);
  }
  send(socket, `|${CODES.EXITBATTLEROOM}|${OK}`);
}

// 103: 방 입장 (상대방 초대를 수락했거나 방 이름으로 입장)
// 클라 요청: |103|<roomName>
// 응답: |103|000|<상대방 characterName>
function onEnterRoom(socket, [roomName]) {
  const room = rooms.get(roomName);
  const session = sessions.get(socket);
  if (!room || !session) {
    send(socket, `|${CODES.ENTERBATTLEROOM}|${FAIL_ALREADYEXIT}`);
    return;
  }
  if (room.guest) {
    send(socket, `|${CODES.ENTERBATTLEROOM}|${FAIL_ALREADYGAME}`);
    return;
  }
  room.guest = socket;
  session.roomName = roomName;
  if (session.userId) waiting.delete(session.userId);

  const creatorSess = sessions.get(room.creator) || {};
  const guestSess = session;
  // 양쪽에 상대방 character 송신
  send(socket, `|${CODES.ENTERBATTLEROOM}|${OK}|${creatorSess.character ?? 0}`);
  send(room.creator, `|${CODES.ENTERBATTLEROOM}|${OK}|${guestSess.character ?? 0}`);
}

// 104: 준비 완료 (손들기)
// 클라 요청: |104|<characterName>
// 응답: 상대방에게 |104|000|<characterName>
function onReady(socket, [characterName]) {
  const session = sessions.get(socket);
  if (!session || !session.roomName) return;
  if (characterName) session.character = characterName;
  const room = rooms.get(session.roomName);
  if (!room) return;
  const opponent = room.creator === socket ? room.guest : room.creator;
  if (opponent) send(opponent, `|${CODES.READY}|${OK}|${characterName}`);
}

// 106: 게임 액션 (찾기 진행 / 스킬 / 아이템)
// 클라 요청: |106|<characterName>|<leftNum>,<skillId>,<penalty>
// 응답: 상대방에게 그대로 중계 |106|000|<leftNum>,<skillId>,<penalty>
function onGame(socket, [characterName, payload]) {
  const session = sessions.get(socket);
  if (!session || !session.roomName) return;
  const room = rooms.get(session.roomName);
  if (!room) return;
  const opponent = room.creator === socket ? room.guest : room.creator;
  if (opponent) send(opponent, `|${CODES.GAME}|${OK}|${payload || ''}`);
}

// 107: 초대
// 클라 요청: |107|<targetUserId>|<roomName>
// 대상자에게 |107|000|<fromUserName>
function onInvite(socket, [targetUserId, roomName]) {
  const target = waiting.get(targetUserId);
  const fromSession = sessions.get(socket);
  if (!target) {
    send(socket, `|${CODES.INVITE}|${FAIL_ALREADYEXIT}|${targetUserId || ''}`);
    return;
  }
  send(target, `|${CODES.INVITE}|${OK}|${fromSession?.userId || ''}|${roomName || ''}`);
  send(socket, `|${CODES.INVITE}|${OK}|${targetUserId}`);
}

// -----------------------------------------------------
// 서버 부트스트랩
// -----------------------------------------------------
function start({ host, port, onReady: ready } = {}) {
  const server = net.createServer((socket) => {
    socket.setNoDelay(true);
    sessions.set(socket, {});
    console.log(`[socket] connect ${socket.remoteAddress}:${socket.remotePort}`);

    const parser = createFrameParser((frame) => {
      try {
        handleMessage(socket, frame);
      } catch (e) {
        console.error('[socket] handler error:', e);
      }
    });
    socket.on('data', (chunk) => parser.feed(chunk));
    socket.on('error', (e) => console.warn('[socket] error:', e.message));
    socket.on('close', () => {
      const session = sessions.get(socket);
      console.log(`[socket] close ${session?.userId || '(anon)'}`);
      if (session) {
        if (session.userId) waiting.delete(session.userId);
        if (session.roomName) {
          const room = rooms.get(session.roomName);
          if (room) {
            const other = room.creator === socket ? room.guest : room.creator;
            rooms.delete(session.roomName);
            if (other && !other.destroyed) {
              send(other, `|${CODES.EXITBATTLEROOM}|${OK}`);
              const oSess = sessions.get(other);
              if (oSess) oSess.roomName = null;
            }
          }
        }
      }
      sessions.delete(socket);
    });
  });

  server.on('error', (e) => console.error('[socket] server error:', e));
  server.listen(port, host, () => {
    console.log(`[socket] listening on ${host}:${port}`);
    ready && ready();
  });

  return server;
}

module.exports = { start, CODES };
