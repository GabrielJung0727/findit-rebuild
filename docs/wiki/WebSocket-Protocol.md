# WebSocket Protocol

매칭 / 대전 실시간 채널의 프레임 포맷 + 7개 코드 시퀀스.

## 연결 URL

```
개발  ws://10.0.2.2:22131/ws       (안드 에뮬 → 호스트 PC)
       ws://localhost:22131/ws     (iOS 시뮬)
       ws://192.168.x.y:22131/ws   (실기기 + LAN)
운영  wss://api.findit.example/ws  (Cloud Run / reverse proxy)
```

서버는 같은 process 에서 HTTP + WebSocket 동시 가동:
- `index.js` 의 `httpServer` 에 `wsServer.attach(httpServer, {path:'/ws'})` 로 upgrade 핸들러 부착
- TCP `:22131` 도 별도 listen (안드 원본 APK 호환용)

---

## 프레임 포맷

### WebSocket (텍스트)
```
|<code>|<arg1>|<arg2>|...
```

예:
- `|100|test@findit.com`
- `|101|`
- `|103|@room_1`
- `|106|alice|found,3`

**파싱 규칙**:
- 첫 글자 `|` 필수
- `|` 구분자로 split → `parts[1]` = code, `parts[2..]` = args
- 빈 문자열은 빈 args (`|107||@room_1` 도 valid — args=['', '@room_1'])

### TCP (legacy, 안드 APK 호환)
```
<4자리 길이><|code|arg1|arg2|...>
```

예:
- `0024|100|test@findit.com` (24자)

`server/src/util/protocol.js::encodeFrame()` / `createFrameParser()` 가 처리. WebSocket 어댑터에서는 길이 prefix 만 떼어 동일 텍스트 본문으로 변환 → 같은 핸들러로 라우팅.

### 클라 측 파싱 (`WsFrame.parse`)

```dart
// lib/api/ws_client.dart
class WsFrame {
  final String code;
  final List<String> args;

  bool get ok => args.isNotEmpty && args.first == '000';
  List<String> get payload => args.length > 1 ? args.sublist(1) : [];

  static WsFrame? parse(String raw) {
    if (raw.isEmpty || !raw.startsWith('|')) return null;
    final parts = raw.split('|');
    if (parts.length < 2) return null;
    return WsFrame(code: parts[1], args: parts.sublist(2));
  }
}
```

---

## 7개 코드

| 코드 | 이름 | 방향 | 용도 |
|---:|---|---|---|
| 100 | USERLIST | C↔S | 대기실 유저 목록 + 등록 |
| 101 | CREATEBATTLEROOM | C→S, S→C | 빈 방 생성 |
| 102 | EXITBATTLEROOM | C↔S | 방 나가기 / 방 깨짐 |
| 103 | ENTERBATTLEROOM | C↔S | 방 입장 + 양측 캐릭터 교환 |
| 104 | READY | C↔S | 준비 토글 |
| 106 | GAME | C↔S | 게임 액션 중계 (정답 발견 등) |
| 107 | INVITE | C↔S | 친구 초대 |

> 105 는 비어 있음 (안드 원본 점프). 신규 코드 추가 시 105 부터.

---

## 코드별 페이로드

### 100 USERLIST

**클라 → 서버**:
```
|100|<userId>
```
`userId` 비우면 등록 없이 조회만.

**서버 → 클라**:
```
|100|000|<count>|<csvList>|<count>|<csvList>
```

`csvList` 포맷: `userId1,character1;userId2,character2;...`

예:
```
|100|000|2|alice@findit.com,0;bob@findit.com,1|2|alice@findit.com,0;bob@findit.com,1
```

> count + csvList 가 **2번 반복**되는 건 안드 원본 호환. 첫 쌍은 "방 목록" 필드 자리였으나 현재는 사용 안 함.

부수 효과:
- `userId` 가 있으면 `sessions[conn].userId = userId` + `waiting.set(userId, conn)`
- 같은 userId 가 다른 conn 으로 들어오면 마지막 conn 으로 덮어씀 (재접속 처리)

---

### 101 CREATEBATTLEROOM

**클라 → 서버**: `|101|`

**서버 → 클라 (생성자만)**:
```
|101|000|@room_<n>
```

`n` 은 `roomCounter++`. 방 이름은 `@room_` prefix 로 시작 — 서버가 발급, 클라는 그대로 보관 + 초대 시 사용.

부수 효과:
- `rooms.set(roomName, {creator: conn, guest: null})`
- `session.roomName = roomName`
- `waiting.delete(session.userId)` (대기실 목록에서 제외)

---

### 102 EXITBATTLEROOM

**클라 → 서버**:
```
|102|<roomName>
```

**서버 → 양측**:
```
|102|000
```

부수 효과:
- `rooms.delete(roomName)`
- 양측 `session.roomName = null`
- 양측이 다시 `waiting` 에 등록 (대기실 복귀)

자동 트리거:
- 클라가 conn 끊김 (네트워크 / 앱 종료) → 서버 `onClose` 가 같은 처리
- 게임 중이라면 상대도 `|102|000` 받음 → `GameEndReason.opponentLeft` 로 종료

---

### 103 ENTERBATTLEROOM

**클라 → 서버**:
```
|103|<roomName>
```

**서버 → 입장자**:
```
|103|000|<상대(creator) character>
```

**서버 → 방 생성자**:
```
|103|000|<입장자(guest) character>
```

양측 동시 송신 — 캐릭터 번호 교환.

실패:
- `|103|900` — 방 없음 (`FAIL_ALREADYEXIT`)
- `|103|911` — 이미 게임 중 (`FAIL_ALREADYGAME` — guest 가 이미 들어와 있음)

부수 효과:
- `room.guest = conn`
- `session.roomName = roomName`
- `waiting.delete(session.userId)`

---

### 104 READY

**클라 → 서버**:
```
|104|<characterName>
```

`characterName` 비우면 ready 취소 (toggle off).

**서버 → 상대**:
```
|104|000|<characterName>
```

상대만 알림 (자기 자신은 echo 받지 않음).

부수 효과:
- `session.character = characterName`

양측 모두 ready 시 게임 시작 — 클라 측에서 `bothReady` flag 감지 후 자동 진입 (서버는 별도 알림 안 함).

---

### 106 GAME

**클라 → 서버**:
```
|106|<characterName>|<info>
```

`info` 자유 형식. 현재 사용:
- `found,<idx>` — 정답 발견 (idx = 0~6)
- (확장 가능) `skill,<skillId>` — 스킬 발동
- (확장 가능) `damage,<amount>` — HP 데미지

**서버 → 상대**:
```
|106|000|<info>
```

서버는 라우팅만 하고 페이로드 검증 X (게임 룰은 클라끼리 신뢰).

→ 보안 강화 시 서버 검증 추가:
- 서버가 game state 일부 보유 (timestamp, found indices)
- 부정 행위 (불가능한 속도로 정답 누적) 탐지

---

### 107 INVITE

**클라 → 서버**:
```
|107|<targetUserId>|<roomName>
```

**서버 → 대상 (대기실 내)**:
```
|107|000|<fromUserId>|<roomName>
```

**서버 → 발신자**:
```
|107|000|<targetUserId>            (성공)
|107|900|<targetUserId>            (대상 오프라인)
```

**오프라인 자동 처리**:
- target 이 `waiting` 에 없음 → FCM 푸시 fire-and-forget:
  ```
  type: 'invite'
  title: '대전 초대'
  body: '<from> 님이 초대 요청을 하셨습니다.'
  data: {from, roomName}
  ```
- 모바일 앱 알림 클릭 → `/waiting` 으로 deep link → invite 상태 자동 복원 ([[Push-Notifications]])

---

## 시퀀스 다이어그램 — 친구 초대 → 게임 시작

```
[P1 client]         [Server]              [P2 client]
    │                  │                       │
    │ ws connect ──────►                       │
    │                  │ ◄────── ws connect ───│
    │                  │                       │
    │ |100|p1@test ────►                       │
    │                  │ onUserList            │
    │                  │  - waiting.set(p1)    │
    │ ◄── |100|000|… ──│                       │
    │                  │ ◄────── |100|p2@test │
    │                  │                       │
    │                  │  - waiting.set(p2)    │
    │                  │ ──────── |100|000|… ►│
    │                  │                       │
    │ |101| ───────────►                       │
    │                  │ onCreateRoom          │
    │                  │  - rooms.set(@r1,…)   │
    │                  │  - waiting.delete(p1) │
    │ ◄── |101|000|@r1 │                       │
    │                  │                       │
    │ |107|p2@test|@r1 ►                       │
    │                  │ onInvite              │
    │                  │  - target found       │
    │ ◄── |107|000|p2  │ ──── |107|000|p1|@r1 ►│
    │                  │                       │
    │                  │      |103|@r1 ◄───────│
    │                  │ onEnterRoom           │
    │                  │  - room.guest = p2    │
    │                  │  - waiting.delete(p2) │
    │ ◄── |103|000|0 ──│ ──── |103|000|0 ─────►│
    │   (P2 캐릭터=0)   │                  (P1 캐릭터=0)
    │                  │                       │
    │ |104|0 ──────────►                       │
    │                  │ onReady               │
    │                  │ ──── |104|000|0 ─────►│
    │                  │                       │
    │                  │      |104|0 ◄─────────│
    │ ◄── |104|000|0 ──│ onReady               │
    │                  │                       │
    │   bothReady=true → 양측 GameScreen 진입   │
    │                  │                       │
    │ |106||found,3 ───►                       │
    │                  │ onGame                │
    │                  │ ──── |106|000|found,3 ►
    │                  │                       │
    │                  │  ... (게임 진행)        │
    │                  │                       │
    │ |102|@r1 ────────►                       │
    │                  │ onExitRoom            │
    │                  │  - rooms.delete       │
    │ ◄── |102|000 ────│ ──── |102|000 ───────►│
    │                  │                       │
    │   Result 화면     │                  Result 화면
```

---

## 인메모리 상태 (서버)

`server/src/socket/handlers.js`:

```js
const sessions = new Map(); // conn -> { userId, character, roomName }
const waiting  = new Map(); // userId -> conn (대기실 입장 유저)
const rooms    = new Map(); // roomName -> { creator: conn, guest: conn|null }
let roomCounter = 1;
```

### Connection 인터페이스
TCP/WS 양쪽이 같은 핸들러 사용하기 위한 추상:
```js
{
  destroyed: bool,        // 종료 여부
  send(body: string)      // 트랜스포트가 framing 처리 (TCP=4자리 prefix, WS=raw text)
}
```

---

## 재연결 / 라이프사이클

### 클라 측 (`WsClient`)

| 상황 | 처리 |
|---|---|
| 연결 실패 | 지수 backoff 재시도 (1s → 2s → 4s → ... 최대 30s, 5회 후 포기) |
| 정상 close (서버가 끊음) | 같은 backoff 재시도 |
| 앱 paused/hidden | `disconnect()` 호출하되 `_wantConnected = true` 유지 |
| 앱 resumed | 자동 `connect()` |
| `dispose()` | `_wantConnected = false` + 모든 stream cancel |

### 서버 측 (`onClose`)
- `session.userId` 가 `waiting` 에 있으면 제거
- `session.roomName` 이 있으면 방 깨고 상대에게 `|102|000` 송신

---

## 운영 시 보안 강화 (TBD)

현재 protocol 은 첫 100 메시지의 `userId` 만 신뢰. 운영 전 다음 보강 권장:

### 인증
**옵션 A**: query string 토큰
```
ws://api.findit.example/ws?token=<session_token>
```
서버 `attach.upgrade` 핸들러에서 토큰 검증 → `sessions.set(conn, {userId, ...})`.

**옵션 B**: 첫 메시지로 인증
```
|auth|<session_token>
```
검증 통과 전에는 다른 코드 무시. 안드 원본 호환 위해 100 의 userId 도 일정 기간 fallback.

### Heartbeat
- `ws` 라이브러리의 자동 ping (기본 활성)
- 클라 측 idle 30s 마다 ping 송신
- 서버 60s 이상 무응답 시 강제 close

### Rate limit
- 같은 conn 에서 1초당 N 메시지 초과 시 throttle
- 같은 IP 에서 동시 N 연결 초과 시 reject

---

## 클라 코드 예시

### 보내기
```dart
final ws = ref.read(wsClientProvider);
await ws.connect();
ws.send('100', ['user@findit.com']);
ws.send('101');
ws.send('107', ['friend@findit.com', '@room_1']);
```

### 받기
```dart
ws.messages.listen((WsFrame f) {
  print('code=${f.code} ok=${f.ok} payload=${f.payload}');
  if (f.code == '100' && f.ok) {
    final csv = f.payload.length > 1 ? f.payload[1] : '';
    final users = csv.split(';').where((s) => s.isNotEmpty);
    // ...
  }
});
```

LobbyController 가 이미 7 코드를 모두 라우팅 — `lib/state/lobby.dart::_onFrame()` 참조.

---

## 테스트

### Dart 단위 (in-process echo 서버)
`test/state/lobby_test.dart` 가 `dart:io HttpServer + WebSocketTransformer` 로 fake echo 서버 띄우고 5 시나리오 검증:
1. user list
2. createRoom
3. 초대 받기 → 수락
4. opponentReady 수신
5. skillDeck 5/8 제한

### 수동 (`wscat`)
```bash
npm install -g wscat
wscat -c ws://localhost:8080/ws
> |100|test@findit.com
< |100|000|1|test@findit.com,0|1|test@findit.com,0
> |101|
< |101|000|@room_1
> |102|@room_1
< |102|000
```

---

## 자주 막히는 부분

### "wscat connect: ECONNREFUSED"
서버 미가동. `cd server && npm run dev` 후 `[ws] gateway attached at /ws` 출력 확인.

### "WebSocket close 1006"
- 8080 포트 점유 — 다른 프로세스 종료 또는 `HTTP_PORT=8081` 후 클라 dart-define 동기화
- 운영 reverse proxy 가 WebSocket upgrade 미지원 — nginx 면 `proxy_set_header Upgrade $http_upgrade;` 추가

### "100 응답이 안 옴"
- userId 빈 문자열 — `|100|` 로 보냈을 때 서버는 빈 list 반환. 정상.
- `waiting` 에 다른 conn 으로 같은 userId 가 있음 — 새 conn 이 덮어씀 (정상 동작)

### "106 echo 가 자기 자신에게 옴"
서버는 상대에게만 송신. 자기 자신 echo 가 오면 같은 userId 가 두 conn 으로 들어와 있는 상태 (재접속 미정리). conn `destroyed` 체크 + 마지막 conn 만 사용 로직 강화.
