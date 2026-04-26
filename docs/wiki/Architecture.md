# Architecture

## 시스템 다이어그램

```
┌─────────────────────────────────────────────────────────────────┐
│                          모바일 클라                                │
│  ┌─────────────────┐                  ┌─────────────────┐        │
│  │  iOS (Flutter)  │                  │ Android (Flutter)│        │
│  │  - APNs 푸시     │                  │ - FCM 푸시       │        │
│  │  - StoreKit IAP │                  │ - Play Billing  │        │
│  └────────┬────────┘                  └────────┬────────┘        │
│           │                                    │                 │
│           └────────────────┬───────────────────┘                 │
└────────────────────────────┼─────────────────────────────────────┘
                             │ HTTPS REST + WSS
                             │
                  ┌──────────▼──────────┐
                  │   Node.js (Express)  │
                  │                      │
                  │  ┌────────────────┐  │
                  │  │ HTTP routes    │  │  ← /app/member/*, /admin/*
                  │  │ 27 endpoints   │  │
                  │  └────────────────┘  │
                  │                      │
                  │  ┌────────────────┐  │
                  │  │ WebSocket /ws  │  │  ← 매칭/대전 실시간
                  │  │ (ws library)   │  │     코드 100~107
                  │  └────────────────┘  │
                  │                      │
                  │  ┌────────────────┐  │
                  │  │ TCP :22131     │  │  ← 디컴파일 APK 호환용
                  │  │ (legacy)       │  │     (운영 후 deprecate 가능)
                  │  └────────────────┘  │
                  │                      │
                  │  ┌────────────────┐  │
                  │  │ shared handlers│  │  ← TCP/WS 공유 상태:
                  │  │  - sessions    │  │     sessions / waiting / rooms
                  │  │  - waiting     │  │
                  │  │  - rooms       │  │
                  │  └────────────────┘  │
                  └──┬─────────┬──────┬──┘
                     │         │      │
            ┌────────▼┐  ┌─────▼─┐ ┌──▼────────────────────┐
            │ MySQL 8 │  │ FCM   │ │ External Verify APIs  │
            │ 8 tables│  │ Admin │ │ - Google Play (g-API) │
            │ 4 mig   │  │ SDK   │ │ - Apple verifyReceipt │
            │         │  │       │ │ - Samsung Checkout    │
            │ InnoDB  │  │       │ │ - reCAPTCHA v3        │
            │ utf8mb4 │  │       │ └───────────────────────┘
            └─────────┘  └───────┘
```

---

## 컴포넌트 책임

### Flutter 클라

| 레이어 | 디렉터리 | 역할 |
|---|---|---|
| API | `lib/api/` | REST/WebSocket/IAP/Push 래퍼 (10 모듈, 모두 인터페이스 분리) |
| State | `lib/state/` | Riverpod providers + StateNotifier (auth, lobby, game) |
| Game | `lib/game/` | CustomPainter + Timer 기반 게임 루프 + ImageCut hit test |
| Screens | `lib/screens/` | 13개 화면, ConsumerStatefulWidget 으로 상태 watch |
| Util | `lib/util/` | Property (서버 URL), Constants (게임 룰), Validation, AssetPaths |
| L10n | `lib/l10n/` | ARB 파일 + 자동 생성된 `app_localizations*.dart` |

### Node.js 서버

| 모듈 | 책임 |
|---|---|
| `src/index.js` | Express + WS attach + TCP listen + 안전망 (uncaughtException) |
| `src/db.js` | MySQL2 풀 + `query()` / `tx()` 헬퍼 |
| `src/routes/*.js` | HTTP 엔드포인트 (member/skills/economy/iap/ranks/ads/admin/analytics/fcm) |
| `src/socket/handlers.js` | TCP/WS 공유 핸들러 + 인메모리 sessions/waiting/rooms |
| `src/socket/server.js` | TCP 어댑터 (4자리 길이 prefix 프레임) |
| `src/socket/ws_server.js` | WebSocket 어댑터 (텍스트 프레임, ws lib) |
| `src/util/balance.js` | 게임 룰 상수 (LEVEL_SCORE, LEVEL_ABILITY, UPGRADE_RATES, ...) |
| `src/util/iap.js` | 영수증 검증 (Google/Samsung/Apple) + `verifyAndRecord` |
| `src/util/validation.js` | 이메일/비번/닉/캐릭터 검증 |
| `src/util/session.js` | opaque 토큰 발급 + 중복 로그인 처리 |
| `src/util/recaptcha.js` | reCAPTCHA v3 미들웨어 |
| `src/util/fcm.js` | Firebase Admin SDK wrapper (optionalDependency) |
| `src/util/protocol.js` | 4자리 길이 prefix 프레임 인코더/파서 (TCP만) |

---

## 요청 흐름

### REST 호출 (예: 로그인)

```
[클라]                                                  [서버]
  │                                                       │
  │ 1. ApiClient.post('app/member/login.json',            │
  │      data: {userId, userPass, userDevice})            │
  │ ─────────── HTTPS POST + JSON body ──────────────►   │
  │                                                       │
  │                                              2. /app/member/login.json
  │                                                 - bcrypt.compare(pass)
  │                                                 - createSession(userId)
  │                                                   ├ login_logs INSERT
  │                                                   └ 기존 active 세션
  │                                                     logged_out_at = NOW()
  │                                                 - loadWallet/items/skills
  │                                                       │
  │ ◄────── { result:'000', token, user, item, skill } ── │
  │                                                       │
  │ 3. _applyAuthBody(body)                               │
  │    - AuthState.user = AuthUser.fromJson               │
  │    - items = InventoryItem.fromJson...                │
  │    - skills = body['skill'].map(skillId).toSet()      │
  │                                                       │
  │ 4. ApiClient.setSessionToken(token)                   │
  │    └ flutter_secure_storage 에 저장                    │
  │                                                       │
  │ 5. 이후 모든 요청 인터셉터가 자동 첨부:                  │
  │    Authorization: Bearer <token>                      │
```

### WebSocket 매칭 (예: P1 이 방 만들고 P2 가 입장)

```
[P1]                  [서버 handlers.js]                  [P2]
  │                          │                              │
  │ 1. connect ws://.../ws   │                              │
  │ ──────────────────────► onConnect → sessions.set        │
  │                          │                              │
  │ 2. send |100|p1@test     │                              │
  │ ──────────────────────► onUserList                     │
  │                            - waiting.set('p1@test',c1) │
  │                            - send list back to P1      │
  │ ◄── |100|000|1|p1...     │                              │
  │                          │                              │
  │ 3. send |101|            │                              │
  │ ──────────────────────► onCreateRoom                   │
  │                            - rooms.set('@room_1', ...) │
  │                            - waiting.delete('p1@test') │
  │ ◄── |101|000|@room_1     │                              │
  │                          │                              │
  │ 4. send |107|p2@test|@room_1                            │
  │ ──────────────────────► onInvite                       │
  │                            - target = waiting.get(p2)  │
  │ ◄── |107|000|p2@test     │ ──────────► |107|000|p1|@room_1 ►
  │                          │                              │
  │                          │     5. send |103|@room_1     │
  │                          │ ◄────────────────────────── │
  │                          │   onEnterRoom               │
  │                          │     - room.guest = c2       │
  │                          │     - waiting.delete(p2)    │
  │ ◄── |103|000|0           │ ──────► |103|000|0  ──────► │
  │   (상대 캐릭터=0)          │                            (내 캐릭터=0)
  │                          │                              │
  │ 6. send |104|0           │                              │
  │ ──────────────────────► onReady                        │
  │                          │ ──── |104|000|0 ──────────► │
  │                          │   (P2 에게 P1 ready)         │
```

코드 표는 [[WebSocket-Protocol]] 참조.

---

## 동시 접속 처리

서버는 **단일 프로세스 + 인메모리 상태** 모델. 다음 한계가 있음:

- 같은 프로세스 내에서만 매칭 가능 (수평 확장 X)
- 프로세스 재시작 시 모든 방/세션 휘발

규모 1k 동접 미만이면 OK. 그 이상으로 가면:
- **Redis 도입** — sessions/waiting/rooms 를 Redis Hash 로 옮김
- **WS pub/sub** — Redis Pub/Sub 로 노드 간 메시지 라우팅
- **sticky session** — 같은 사용자가 같은 노드로 접속 (room ownership 단순화)

현재 코드는 모듈 분리가 잘 돼 있어 (`socket/handlers.js` 의 sessions/waiting/rooms 가 in-process Map) Redis 어댑터 교체 시 외부 호출자(server.js, ws_server.js)는 변경 없음.

---

## 보안 모델

### 클라 → 서버 인증
1. 로그인 → 서버가 24바이트 opaque 토큰 발급 (`login_logs.session_token`)
2. 클라는 `flutter_secure_storage` (iOS Keychain / Android Keystore) 에 저장
3. 모든 후속 REST 요청에 `Authorization: Bearer <token>` 자동 첨부 (Dio 인터셉터)
4. 서버는 토큰 검증 후 user_id 매핑 (현재 미들웨어 부분 구현 — 점진 적용)
5. 401 응답 → 클라는 토큰 폐기 + 로그인 화면 복귀

### IAP 부정 결제 차단
1. 클라가 결제 완료 시 영수증을 서버 `/verifyIap.json` 으로 전송
2. 서버가 스토어 API (Google/Apple/Samsung) 로 진위 확인
3. `iap_receipts.purchase_token` UNIQUE 인덱스로 중복 토큰 차단
4. `verified=true` 시에만 wallet 재화 지급 (트랜잭션)

[[IAP-Integration]] 참조.

### reCAPTCHA v3 (가입 봇 차단)
1. 클라가 가입 시 reCAPTCHA token 첨부
2. 서버 `recaptcha.middleware` 가 score ≥ 0.5 검증
3. `RECAPTCHA_SECRET` 미설정 시 no-op (개발 편의)

### 어드민 API
- `X-Admin-Token` 헤더 검증
- DB `admin_tokens` 테이블 + 기본 토큰 `dev-admin-token-change-me` (운영 시 회전 필수)

---

## 데이터 흐름 — 게임 1판

```
[클라 GameController]                [서버]
  Timer.periodic(16ms) →
    onTick:
      timeRemaining -= dt
      if AI mode:
        aiNextFind -= dt
        if expired:
          _opponentFoundIndex(random_idx)
      check end:
        - timeUp / selfCleared / opponentCleared

  onTap(pixel):
    for cut in cuts (7개):
      if cut.contains(pixel):
        combo++ + timeBonus
        if multi: ws.send(|106|<char>|found,<idx>)
        if cleared: _finalize(selfCleared)

  ws.onFrame:
    if code 106 (opponent action):
      _opponentFoundIndex(idx)
      self.combo = 0

  _finalize(reason):
    GameResult 생성
    → ContextRouter /result 이동
    → GameApi.mutiAddUp(userId, level, score, coin, point)
    → AnalyticsHelper.gameEnd
```

[[Game-Design]] 에서 점수/콤보 공식 상세.

---

## 배포 토폴로지 (운영)

```
                  ┌────────────────┐
                  │  Cloud DNS     │
                  │  api.findit.*  │
                  └────────┬───────┘
                           │
                  ┌────────▼───────┐
                  │  Cloud Load    │
                  │  Balancer +    │
                  │  SSL cert      │
                  └────────┬───────┘
                           │
                  ┌────────▼───────┐
                  │  Cloud Run     │  ← Node.js 컨테이너
                  │  (auto-scale)  │     HTTP + WS 동일 포트
                  └────────┬───────┘
                           │
            ┌──────────────┼──────────────┐
            │              │              │
     ┌──────▼─────┐ ┌──────▼─────┐ ┌─────▼──────┐
     │ Cloud SQL  │ │ Secret Mgr │ │ Cloud      │
     │ MySQL 8    │ │ - APPLE_*  │ │ Storage    │
     │ private IP │ │ - GOOGLE_* │ │ (이미지)    │
     └────────────┘ │ - APPLE_*  │ └────────────┘
                    │ - RECAPTCHA│
                    │ - ADMIN_*  │
                    └────────────┘
```

상세 배포: [GCP_DEPLOYMENT.md](https://github.com/GabrielJung0727/findit-rebuild/blob/main/GCP_DEPLOYMENT.md), [[Release-Process]]
