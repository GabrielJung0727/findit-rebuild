# Push Notifications

FCM (Firebase Cloud Messaging) 기반 양 플랫폼 푸시. iOS 는 APNs 게이트웨이 경유.

## 아키텍처

```
[클라]                      [서버]                    [Firebase / APNs]
PushService.init(userId)
  ├ Firebase.initializeApp
  ├ FirebaseMessaging.requestPermission
  ├ FirebaseMessaging.getToken                       
  │                                                  
  │ POST /registerFcmToken.json                      
  │   {userId, fcmToken}                            
  │ ───────────────────────────► UPDATE members SET 
  │                              fcm_token = ?       
  │                                                  
  │ FirebaseMessaging.onMessage (포그라운드)         
  │ FirebaseMessaging.onMessageOpenedApp (탭)        
  │ getInitialMessage (terminated)                   
  │ ◄────────────────────────────────────────────── ◄─ FCM 알림 송신
                                                       
  │ 어드민 / 자동 발송:
  │   POST /admin/push/user/:userId
  │     {title, body, type, data}
  │   POST /admin/push/broadcast
  │     {title, body, userIds[]?}
  │   소켓 107 (초대) 오프라인 타겟 자동 푸시
  │   ─► fcm.sendToUser → firebase-admin SDK ─► FCM Server ─► [APNs] / [FCM Direct]
                                                                    │
                                                                    ▼
                                                          ┌──────────────┐
                                                          │  iOS 디바이스  │  
                                                          │  Android 디바이스│
                                                          └──────────────┘
```

## 클라 — `PushService`

`lib/api/push_service.dart` — `firebase_messaging` 패키지 통합.

### 초기화 흐름

`main.dart` 에서 로그인 성공 시 호출:
```dart
_authSub = ref.listenManual<AuthState>(authControllerProvider, (prev, next) {
  if (!prev?.isLoggedIn && next.isLoggedIn) {
    unawaited(_initPushAfterLogin(next.user!.userId));
  }
});

Future<void> _initPushAfterLogin(String userId) async {
  await ref.read(pushServiceProvider).init(userId: userId);
  ref.read(pushServiceProvider).events.listen(_handlePushEvent);
}
```

`PushService.init`:
1. `Firebase.initializeApp()` — 실패 silent (개발 시 `GoogleService-Info.plist`/`google-services.json` 미설치 OK)
2. `FirebaseMessaging.requestPermission(alert/badge/sound)` — iOS 권한 요청 (Android 13+ 도 동일)
3. `setForegroundNotificationPresentationOptions(true,true,true)` — iOS 포그라운드 알림 표시
4. `getToken()` → 서버 `registerFcmToken.json` 호출
5. `onTokenRefresh.listen(_registerToken)` — 토큰 갱신 hook
6. `FirebaseMessaging.onMessage.listen(_onForeground)` — 포그라운드 메시지
7. `FirebaseMessaging.onMessageOpenedApp.listen(_onTapOpenedApp)` — 백그라운드 탭
8. `getInitialMessage()` — 종료 상태에서 알림으로 부팅된 경우

### PushEvent broadcast

```dart
class PushEvent {
  final String type;          // 'invite' | 'notice' | 'custom'
  final String title;
  final String body;
  final Map<String, String> data;
  final bool fromTerminated;  // 종료 → 부팅
  final bool opened;          // 사용자가 탭함 (포그라운드는 false)
}
```

### 3가지 메시지 상태 처리

| 상태 | 핸들러 | 의미 |
|---|---|---|
| 포그라운드 | `onMessage` | 앱 사용 중 → in-app banner 또는 무시 |
| 백그라운드 → 탭 | `onMessageOpenedApp` | 앱이 백그라운드에 있다가 알림 탭으로 진입 |
| 종료 → 알림 부팅 | `getInitialMessage()` | 앱 완전 종료된 상태에서 알림으로 시작 |

`opened || fromTerminated` 시 deep link 라우팅:
```dart
void _handlePushEvent(PushEvent ev) {
  if (ev.type == 'invite' && (ev.opened || ev.fromTerminated)) {
    final from = ev.data['from'] ?? '';
    final room = ev.data['roomName'] ?? '';
    if (room.isNotEmpty) {
      ref.read(lobbyControllerProvider.notifier).injectInviteFromPush(from, room);
    }
    router.go('/waiting');
  } else if (ev.opened || ev.fromTerminated) {
    router.go('/notice');
  }
}
```

`LobbyController.injectInviteFromPush(from, room)` 가 `invitedBy/Room` 채움 → WaitingRoomScreen 의 자동 다이얼로그가 사용자에게 수락/거절 노출.

---

## 서버 — `routes/fcm.js` + `util/fcm.js`

### 토큰 등록
```js
publicRouter.all('/member/registerFcmToken.json', async (req, res, next) => {
  const { userId, fcmToken } = req.body;
  await fcm.registerToken(userId, fcmToken);
  res.json({result:'000'});
});

// util/fcm.js
async function registerToken(userId, token) {
  await query(
    `UPDATE members SET fcm_token = ? WHERE user_id = ?`,
    [token, userId]
  );
}
```

### 사용자 단건 송신
```js
adminRouter.post('/user/:userId', async (req, res, next) => {
  const userId = req.params.userId;
  const { title, body, type='custom', data } = req.body;
  const out = await fcm.sendToUser(userId, {type, title, body, data});
  res.json({ok:true, ...out});
});

// util/fcm.js
async function sendToUser(userId, {type, title, body, data}) {
  const [m] = await query(`SELECT fcm_token FROM members WHERE user_id = ?`, [userId]);
  if (!m?.fcm_token) return {sent: false, reason: 'no_token'};
  
  const admin = require('firebase-admin');
  const message = {
    token: m.fcm_token,
    notification: {title, body},
    data: {type, ...data},
    apns: {payload: {aps: {'mutable-content': 1}}},
    android: {priority: 'high'},
  };
  
  try {
    const id = await admin.messaging().send(message);
    await query(`INSERT INTO push_log(user_id, type, title, body, data, success) VALUES(?,?,?,?,?,TRUE)`, [...]);
    return {sent: true, messageId: id};
  } catch (e) {
    await query(`INSERT INTO push_log(... success, error_msg) VALUES(?,?,?,?,?,FALSE,?)`, [..., e.message]);
    return {sent: false, error: e.message};
  }
}
```

### 자동 초대 푸시 (오프라인)

WebSocket 코드 107 (INVITE) 시 target 이 `waiting` 에 없으면 fire-and-forget:
```js
// socket/handlers.js::onInvite
function onInvite(conn, [targetUserId, roomName]) {
  const target = waiting.get(targetUserId);
  if (!target) {
    fcm.sendToUser(targetUserId, {
      type: 'invite',
      title: '대전 초대',
      body: `${fromSession?.userId || '친구'} 님이 초대 요청을 하셨습니다.`,
      data: {from: fromSession?.userId || '', roomName: roomName || ''},
    }).catch(e => console.warn('[socket] invite push failed:', e.message));
    // 발신자에게 실패 응답
    return;
  }
  // 온라인이면 WS 로 직접 전달
  send(target, `|107|000|${fromSession?.userId}|${roomName}`);
}
```

### Broadcast (전체 / 특정 그룹)
```js
adminRouter.post('/broadcast', async (req, res) => {
  const { title, body, userIds=[], type='notice', data } = req.body;
  
  let targets = userIds;
  if (targets.length === 0) {
    // 전체 활성 (30일 내) 사용자
    const rows = await query(
      `SELECT user_id FROM members
       WHERE fcm_token IS NOT NULL
         AND last_active_at >= DATE_SUB(NOW(), INTERVAL 30 DAY)
       LIMIT 10000`
    );
    targets = rows.map(r => r.user_id);
  }
  
  // 병렬 송신 (실패 fire-and-forget)
  const results = await Promise.allSettled(
    targets.map(uid => fcm.sendToUser(uid, {type, title, body, data}))
  );
  
  res.json({
    ok: true,
    targets: targets.length,
    sent: results.filter(r => r.status === 'fulfilled' && r.value.sent).length,
  });
});
```

---

## Firebase 셋업 — 외부 작업

### 1. Firebase 프로젝트 생성

1. https://console.firebase.google.com → 프로젝트 추가
2. 프로젝트 이름: `findit-prod` (또는 `findit-dev`)
3. Google Analytics 활성 (선택)

### 2. Android 앱 등록

1. Firebase Console → 프로젝트 → ⚙ Project settings → Apps → Add app → Android
2. **Android package name**: `com.findit.battle` (Flutter 클라 applicationId 와 정확히 일치)
3. App nickname: `Findit Android`
4. (선택) SHA-1: `keytool -list -v -keystore ~/.android/debug.keystore` 의 SHA1
5. **`google-services.json` 다운로드** → `client_flutter/android/app/google-services.json` 으로 배치
6. (자동) `flutterfire configure` 가 처리하지만, 수동도 OK

### 3. iOS 앱 등록

1. Firebase Console → Add app → iOS
2. **iOS bundle ID**: `com.findit.battle`
3. App nickname: `Findit iOS`
4. **`GoogleService-Info.plist` 다운로드** → `client_flutter/ios/Runner/GoogleService-Info.plist`
5. Xcode → Runner → File → Add Files → `GoogleService-Info.plist` 추가 (target = Runner)

### 4. APNs Auth Key 발급 (iOS 푸시 필수)

1. https://developer.apple.com → Certificates, Identifiers & Profiles → Keys
2. Create a key → 이름 입력 → **Apple Push Notifications service (APNs)** 체크 → Continue → Register
3. **`.p8` 파일 다운로드** (한 번만 가능 — 안전 보관)
4. Key ID + Issuer (Team) ID 메모

### 5. Firebase 콘솔에 APNs 키 업로드

1. Firebase Console → 프로젝트 → ⚙ Project settings → Cloud Messaging
2. iOS app configuration → APNs Authentication Key → Upload
3. .p8 파일 + Key ID + Team ID 입력

### 6. 서비스 계정 (서버용 firebase-admin SDK)

1. Firebase Console → ⚙ Project settings → Service accounts → Generate new private key
2. JSON 다운로드 → 서버에 배치 (예: `server/firebase-admin.json`)
3. 환경변수: `GOOGLE_APPLICATION_CREDENTIALS=/path/to/firebase-admin.json`

### 7. (편의) `flutterfire configure`

위 단계 일부 자동화:
```bash
dart pub global activate flutterfire_cli
cd client_flutter
flutterfire configure
```
- Firebase 프로젝트 선택
- iOS/Android 앱 자동 등록 (없으면 생성)
- `lib/firebase_options.dart` 생성 (사용 안 해도 OK — `Firebase.initializeApp()` 가 platform 기본 plist/json 로드)
- iOS 의 경우 `pod install` 자동 실행

---

## iOS Xcode 설정

### Capabilities 활성

Xcode → Runner → Signing & Capabilities → + Capability:
1. **Push Notifications** — APNs 토큰 받기
2. **Background Modes** → Remote notifications 체크 — 백그라운드 silent push

자동으로 `Runner.entitlements` 업데이트:
```xml
<key>aps-environment</key>
<string>development</string>   <!-- 운영 빌드 시 production -->
```

수동 작성 (이미 되어 있음):
- `client_flutter/ios/Runner/Runner.entitlements`

### Info.plist 확인 (이미 § 11 에서 추가됨)
```xml
<key>UIBackgroundModes</key>
<array>
  <string>fetch</string>
  <string>remote-notification</string>
</array>
```

---

## Android 설정

### `google-services.json` 자동 활성

`flutterfire configure` 실행 시 또는 수동 배치 시 자동 처리. 별도 build.gradle 수정 불필요 (firebase_messaging 패키지가 알아서).

운영 시 build.gradle 에 명시 추가 권장:
```gradle
// android/build.gradle
buildscript {
  dependencies {
    classpath 'com.google.gms:google-services:4.4.2'
  }
}

// android/app/build.gradle (맨 아래)
apply plugin: 'com.google.gms.google-services'
```

### 알림 채널 (Android 8.0+)

`firebase_messaging` 가 기본 채널 자동 생성. 커스텀 채널 (사운드/우선순위) 필요 시 `flutter_local_notifications` 추가 통합.

### 권한 (Android 13+)

`firebase_messaging` 의 `requestPermission()` 호출이 시스템 다이얼로그 자동 표시. AndroidManifest 별도 설정 불필요.

---

## 메시지 페이로드 형식

### Notification 메시지 (시스템이 자동 표시)
```json
{
  "to": "<fcm_token>",
  "notification": {
    "title": "대전 초대",
    "body": "alice 님이 초대 요청을 하셨습니다."
  },
  "data": {
    "type": "invite",
    "from": "alice",
    "roomName": "@room_3"
  }
}
```

→ 포그라운드는 `onMessage` 콜백, 백그라운드/종료는 시스템이 알림 표시 + 탭 시 `onMessageOpenedApp` 또는 `getInitialMessage`.

### Data 메시지 (silent — 앱이 직접 처리)
```json
{
  "to": "<fcm_token>",
  "data": {
    "type": "score_update",
    "score": "1500"
  },
  "android": {"priority": "high"},
  "apns": {"payload": {"aps": {"content-available": 1}}}
}
```

→ `notification` 없음 → 시스템 표시 X. 앱이 백그라운드에서 깨어나서 데이터만 처리. 사용 예: 점수 업데이트, 친구 온라인 알림.

서버 코드는 둘 다 가능:
```js
const message = {
  token: fcmToken,
  notification: {title, body},   // 표시용
  data: {type, ...data},          // 앱이 받는 payload
  apns: {payload: {aps: {'mutable-content': 1}}},
  android: {priority: 'high'},
};
```

---

## 테스트

### 어드민 UI 로 푸시 보내기

```bash
curl -X POST http://localhost:8080/admin/push/user/test@findit.com \
  -H "X-Admin-Token: dev-admin-token-change-me" \
  -H "Content-Type: application/json" \
  -d '{"title":"테스트","body":"안녕하세요","type":"notice","data":{"foo":"bar"}}'
```

### Firebase Console 로 직접 송신

1. Firebase Console → Cloud Messaging → New campaign
2. Notification: title + body 입력
3. Target: Single device → fcm_token 직접 입력 또는 Topic
4. Send

### Sandbox APNs (iOS)
- Xcode 빌드 (development 환경) → sandbox APNs 자동 사용
- TestFlight 빌드도 sandbox

### Production APNs
- App Store 출시 빌드 → production APNs
- `aps-environment = production` 으로 entitlement 변경 (Xcode 가 자동 처리)

### Android
- Debug 빌드 → 그냥 됨 (sandbox/production 구분 없음)
- 단, 실기기 + Google Play Services 설치 필수 (에뮬은 일부 image 만 지원)

---

## `push_log` 모니터링

```sql
SELECT type, COUNT(*) AS cnt, SUM(CASE WHEN success THEN 1 ELSE 0 END) AS ok
FROM push_log
WHERE created_at >= DATE_SUB(NOW(), INTERVAL 24 HOUR)
GROUP BY type;
```

실패율 5% 이상 시:
- FCM 토큰 만료 (앱 재설치) — 자동 갱신 (`onTokenRefresh`) 으로 해결
- APNs 키 만료 — Firebase Console 에서 재업로드

---

## 자주 막히는 부분

### "Firebase.initializeApp() throws"
- `GoogleService-Info.plist` (iOS) / `google-services.json` (Android) 미배치
- 또는 잘못된 위치 (`ios/` 가 아니라 `ios/Runner/` 에 있어야 함)

`PushService.init` 은 try/catch 로 감싸여 있어 앱은 계속 동작 — 푸시만 작동 안 함.

### "iOS 토큰 안 받아짐 (null)"
- APNs Auth Key 미업로드 (Firebase Console)
- Push Notifications capability 비활성
- `aps-environment` entitlement 누락
- 시뮬레이터 — iOS Simulator 는 push 미지원 (실기기 필수, Xcode 14.5+ 시뮬은 일부 가능하나 불안정)

### "Android 권한 다이얼로그 안 뜸"
- targetSdk 33 미만 → 자동 권한
- targetSdk 33+ → `requestPermission` 호출 필수

`firebase_messaging.requestPermission` 가 두 OS 모두 처리.

### "백그라운드에서 안 옴"
- 앱이 swipe-kill 됨 → 종료 상태이므로 `onMessage` 안 옴, 시스템이 알림만 표시. 탭 시 `getInitialMessage` 로 받음.
- iOS Low Power Mode → 일부 silent push 차단

### "Topic subscribe 후에도 안 옴"
- Topic name 은 `/topics/news` 형식 또는 그냥 `news` (FCM 알아서 처리)
- subscribeToTopic 호출이 토큰 발급 후여야 함

### "Notification icon 깨짐 (Android)"
- `firebase_messaging` 가 기본 launcher icon 사용. `android/app/src/main/AndroidManifest.xml` 의 `<meta-data android:name="com.google.firebase.messaging.default_notification_icon" .../>` 로 커스텀 아이콘 지정 가능.

---

## 후속 작업

- [ ] **In-app banner** — 포그라운드 메시지 시 OS 알림 대신 앱 내부 banner (Material `SnackBar` 또는 커스텀)
- [ ] **Topic 구독** — 친구 그룹 / 길드 등
- [ ] **Notification action button** — "수락" / "거절" 직접 알림에서 응답
- [ ] **Rich notification (iOS)** — Notification Service Extension 으로 이미지/비디오 첨부
- [ ] **A/B 테스트** — Firebase Remote Config + Notification 캠페인
- [ ] **분석** — 알림 도착/오픈 추적 (`onMessage` 시 `event.json` 호출)

운영 콘솔 셋업: [[Release-Process#Firebase]]
