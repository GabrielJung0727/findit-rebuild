# Troubleshooting

자주 막히는 18가지 문제 + 해결법 모음.

## 셋업 / 빌드

### 1. `flutter pub get` 실패
**증상**:
```
Because flutter_html depends on ... which doesn't match any version, 
version solving failed.
```

**해결**:
- Flutter SDK 버전 확인: `flutter --version` ≥ 3.27.4
- pub cache 초기화: `flutter pub cache repair`
- `pubspec.lock` 삭제 후 재시도: `rm pubspec.lock && flutter pub get`

### 2. `flutter gen-l10n` 이 dart 파일 안 만듬
**증상**: `lib/l10n/app_localizations.dart` 가 생성 안 됨.

**해결**:
- `pubspec.yaml` 의 `flutter:` 섹션에 `generate: true` 있는지 확인
- `l10n.yaml` 의 `synthetic-package: false` + `output-dir: lib/l10n` 설정
- 명시적으로 `flutter gen-l10n` 실행 후 IDE restart

### 3. Android 빌드 — Gradle 버전 충돌
**증상**:
```
This is likely due to a known bug in Android Gradle Plugin (AGP) versions less than 8.2.1
when using Java 21 or above.
```

**해결**: 이미 §1 부트스트랩에서 처리됨. 확인:
- `android/settings.gradle` — `com.android.application version 8.5.0`
- `android/gradle/wrapper/gradle-wrapper.properties` — `gradle-8.7-all.zip`
- `android/app/build.gradle` — `JavaVersion.VERSION_17`
- JDK: `flutter doctor -v` → "Java version: 17.x"

### 4. Android — `compileSdk 36 required by flutter_facebook_auth`
**해결**: `android/app/build.gradle` 의 `compileSdk = 36`. (이미 설정됨)

### 5. iOS 빌드 — Pod install fails
**증상** (macOS만):
```
[!] CocoaPods could not find compatible versions for pod "Firebase/Messaging"
```

**해결**:
```bash
cd ios
pod repo update
pod install --repo-update
cd ..
flutter clean
flutter pub get
```

iOS deployment target 미스매치 시 `ios/Podfile` 의 `platform :ios, '14.0'` 확인.

### 6. Flutter SDK 못 찾음 (Windows)
**증상**:
```
Error: Unable to find git in your PATH.
```

또는 `flutter` 명령 없음.

**해결**:
- PATH 에 `C:\src\flutter\bin` 추가 (사용자 환경변수)
- 또는 Android Studio Settings → Languages & Frameworks → Flutter → SDK path 등록
- 새 셸/IDE 재시작 후 `flutter --version` 확인

---

## 서버 / DB

### 7. 서버가 안 뜸
**증상**:
```
[db] connection failed: connect ECONNREFUSED 127.0.0.1:3306
```

**해결**:
1. MySQL 컨테이너 확인:
   ```bash
   docker compose ps
   # mysql 가 "Up" 상태여야 함
   docker compose logs mysql | tail -20
   # "ready for connections" 라인 확인
   ```
2. Docker Desktop 가동 중인지 확인 (Windows/macOS 트레이 아이콘)
3. 포트 충돌:
   ```bash
   netstat -an | grep 3306
   # 다른 MySQL 인스턴스가 점유 중이면 그 쪽 종료 또는 docker-compose.yml 의 port mapping 변경
   ```
4. 직접 MySQL 접속 테스트:
   ```bash
   docker exec -it server-mysql-1 mysql -ufindit -pfindit findit -e "SELECT 1;"
   ```

### 8. Port 8080 in use
**증상**:
```
Error: listen EADDRINUSE: address already in use :::8080
```

**해결**:
```bash
# Windows
netstat -ano | findstr :8080
taskkill /PID <pid> /F

# macOS / Linux
lsof -ti:8080 | xargs kill -9
```

또는 `server/.env` 에 `HTTP_PORT=8081` 추가 + 클라 dart-define 동기화:
```bash
flutter run --dart-define=FINDIT_SERVER_DOMAIN=http://10.0.2.2:8081/
```

### 9. `SHOW TABLES` 가 비어 있음
**증상**: 서버는 떴는데 로그인 시 `Table 'findit.members' doesn't exist`.

**해결**:
```bash
cd server
npm run db:init
```

또는 수동:
```bash
docker exec -i server-mysql-1 mysql -ufindit -pfindit findit < sql/schema.sql
docker exec -i server-mysql-1 mysql -ufindit -pfindit findit < sql/migrations/001_skills_and_expansion.sql
docker exec -i server-mysql-1 mysql -ufindit -pfindit findit < sql/migrations/002_priority2.sql
docker exec -i server-mysql-1 mysql -ufindit -pfindit findit < sql/migrations/003_image_ad_caption.sql
docker exec -i server-mysql-1 mysql -ufindit -pfindit findit < sql/migrations/004_iap_apple.sql
docker exec -i server-mysql-1 mysql -ufindit -pfindit findit < sql/seed_skills.sql
docker exec -i server-mysql-1 mysql -ufindit -pfindit findit < sql/seed.sql
```

[[Server-Setup#3-스키마--시드-적재]] 참조.

### 10. 어드민 UI 401
**증상**: http://localhost:8080/admin/ui 접속 후 API 401.

**해결**:
- 토큰 다이얼로그에서 `dev-admin-token-change-me` 입력
- 페이지 console 에서 `localStorage.getItem('admin_token')` 확인
- 운영 환경: `admin_tokens` 테이블에서 직접 확인:
  ```sql
  SELECT token FROM admin_tokens WHERE revoked_at IS NULL;
  ```

---

## 클라 (런타임)

### 11. 흰 화면에서 멈춤
**증상**: `flutter run` 후 splash screen 다음 흰 화면에서 진행 안 됨.

**원인 + 해결**:
1. **서버 미가동** — 자동 로그인 시도 → 5초 timeout 후 로그인 화면 표시. 서버 띄우면 정상.
   ```bash
   cd server && npm run dev
   ```
2. **에뮬레이터 네트워크** — `10.0.2.2` 가 호스트 PC 루프백. 실기기는 LAN IP 로 dart-define 오버라이드.
3. **Firebase 초기화 실패** — `GoogleService-Info.plist` / `google-services.json` 미설치 → silent 실패 (앱 동작은 됨). `[push]` 로그 확인.

### 12. 로그인 후 "서버와 접속할 수 없습니다"
**원인**:
- 서버 미가동 — `npm run dev` 확인
- `Property.serverDomain` 잘못 설정 — `lib/util/property.dart` 또는 dart-define 확인
- HTTPS 인증서 (운영) — 운영 빌드인데 자가서명 cert 사용 중이면 차단됨

**디버깅**:
```bash
# 클라 로그 확인 — Dio 에러 메시지
flutter logs

# 서버 측 morgan 로그 확인 — 요청 도착 여부
# [http] :::ffff:127.0.0.1 - POST /app/member/login.json HTTP/1.1 200
```

### 13. WebSocket 연결 안 됨
**증상**: 게임 매칭 시 사용자 목록이 비어 있음.

**디버깅**:
```bash
# 서버 측
[ws] gateway attached at /ws        ← 이 라인 있어야 함
[ws] connect 127.0.0.1               ← 클라 접속 시 출력

# 클라 측
[ws] connect error: ...              ← debugMode 에서만
[ws] connected to ws://...           ← 정상
```

**해결**:
1. `Property.webSocketUrl` 확인 — `ws://10.0.2.2:22131/ws` (개발 기본)
2. 8080 포트 점유 시 같이 옮겨야 함 (HTTP + WS 동일 포트)
3. 운영 reverse proxy (nginx) 가 WebSocket upgrade 미지원:
   ```nginx
   location /ws {
     proxy_http_version 1.1;
     proxy_set_header Upgrade $http_upgrade;
     proxy_set_header Connection "upgrade";
     proxy_pass http://backend;
   }
   ```

### 14. "Could not find mocked route" (테스트)
**증상**: `flutter test` 실행 시 일부 API 테스트 실패.

**원인**: `http_mock_adapter` URL 매칭 실패.

**해결**:
- `_helper.dart` 의 `t.url(path)` 가 상대 경로 반환 (절대 X)
- `UrlRequestMatcher` 사용 시 URL+method 만 매칭 — data 검증 X
- 첫 테스트 실패 출력에서 실제 요청 URL 확인 → mock 셋업과 일치하는지

[[Testing#자주-막히는-부분]] 참조.

---

## i18n

### 15. 한글이 깨져서 보임
**증상**: 앱 화면에 `???` 또는 비정상 문자.

**원인**:
1. ARB 파일이 UTF-8 BOM 으로 저장됨
2. 안드 strings.xml `encoding="utf-8"` 누락

**해결**:
```bash
# Windows + Git
git config --global core.autocrlf input

# ARB 파일 확인
file -i client_flutter/lib/l10n/app_ko.arb
# 출력: text/plain; charset=utf-8 (BOM 없으면 OK)

# BOM 제거 (있을 시)
sed -i '1s/^\xEF\xBB\xBF//' app_ko.arb
```

### 16. ARB 변환기 145 가 아닌 144 가져옴
**증상**:
```
en keys: 144
ko keys: 145
KEY MISMATCH: only-ko: ['notice_msg_x']
```

**해결**:
- 안드 영문 strings.xml 에 `notice_msg_x` 추가 (한글에만 있음)
- 또는 한글에서 제거 (영문에 없음)
- 두 파일 항상 동기 — `parity OK` 필수

### 17. Locale 자동 감지 안 됨
**증상**: 한국 디바이스인데 영문 표시.

**해결**:
- iOS Info.plist `CFBundleLocalizations` 에 `<string>ko</string>` 있는지 확인
- 디바이스 언어 설정 → "한국어" 가 우선순위에 있는지 확인
- `MaterialApp.localizationsDelegates` + `supportedLocales` 와이어 확인

---

## IAP

### 18. Sandbox 결제 다이얼로그 안 뜸
**iOS**:
- 디바이스 → 설정 → App Store → Sandbox Account 로 sandbox tester 로그인
- TestFlight / Xcode 빌드만 sandbox (App Store 빌드는 production)

**Android**:
- Play Console → License testing → 이메일 추가
- 디바이스에서 그 Google 계정으로 로그인
- Internal app sharing URL 또는 Internal track 으로 설치

### 19. `verifyIap` 실패: `credentials_missing`
**서버 환경변수 누락**:
- Google: `GOOGLE_PLAY_SERVICE_ACCOUNT_JSON` + `GOOGLE_PLAY_PACKAGE_NAME`
- Apple: `APPLE_SHARED_SECRET`
- Samsung: `SAMSUNG_IAP_API_KEY`

`server/.env` 확인 후 서버 재시작.

### 20. Apple `status 21002`
영수증 인코딩 문제. `serverVerificationData` 가 base64 인코딩된 receipt 그대로여야 함.

**해결**: `IapService._handleVerified` 의 `pd.verificationData.serverVerificationData` 그대로 전달 — 이미 base64.

### 21. "Item already owned" (Android)
이전 구매가 finishTransaction 안 됨.

**해결**:
```dart
// IapService 에 restore 메서드 추가 후 호출
await InAppPurchase.instance.restorePurchases();
// 그 후 purchaseStream 에서 PurchaseStatus.restored 받음
// → completePurchase 호출
```

또는 사용자에게 안내: "이전 결제가 처리 중입니다. 잠시 후 자동 지급됩니다."

---

## Push / FCM

### 22. iOS 토큰이 null
**원인**:
- APNs Auth Key 미발급 / Firebase 콘솔 미업로드
- Xcode capabilities: Push Notifications 비활성
- `Runner.entitlements` 의 `aps-environment` 누락
- iOS Simulator 사용 (실기기 필수)

[[Push-Notifications#Firebase-셋업]] 참조.

### 23. Android 알림 도착 안 함
**해결**:
- `google-services.json` 이 `client_flutter/android/app/` 에 있는지 확인
- 패키지명 매치: Firebase 콘솔 등록한 패키지명 == `applicationId` (`com.findit.battle`)
- 디바이스에 Google Play Services 설치 (에뮬은 일부 image 만 지원)
- 권한 (Android 13+): `requestPermission()` 호출 후 사용자 허가

### 24. 알림 탭해도 deep link 안 됨
**디버깅**:
- `PushService.events.listen` 에 listener 등록 시점 확인 (앱 부팅 후)
- `getInitialMessage()` 가 한 번만 호출됨 (앱 종료 → 알림 부팅 시)
- `onMessageOpenedApp` 는 백그라운드 → 탭 시

`main.dart::_handlePushEvent` 가 router 호출하는지 로그 추가:
```dart
void _handlePushEvent(PushEvent ev) {
  print('[push] event: ${ev.type} opened=${ev.opened} terminated=${ev.fromTerminated}');
  ...
}
```

---

## 출시 / 스토어

### 25. Apple 리뷰 거절: "5.1.1 Privacy"
**원인**: 권한 사유 불명확.

**해결**: `Info.plist` 의 `*UsageDescription` 문구 강화:
```xml
<key>NSCameraUsageDescription</key>
<string>Take a photo to use as your character avatar.</string>
```

명확한 사용 목적 + 사용자 이익 명시.

### 26. Play 거절: "Sensitive permissions"
**원인**: `READ_PHONE_STATE` / `ACCESS_FINE_LOCATION` 등 불필요한 권한.

**해결**: AndroidManifest.xml 에서 제거. Flutter 가 의존성으로 자동 추가한 권한 — 의존 패키지 제거 또는 manifest merge override:
```xml
<uses-permission android:name="android.permission.READ_PHONE_STATE" tools:node="remove" />
```

### 27. Code signing fails (CI)
**Codemagic**:
- iOS: App Store Connect API Key 등록 누락 → Dashboard → Environment variables
- Android: keystore upload 누락 또는 비밀번호 틀림

**GitHub Actions** (현재 macOS 빌드 안 함):
- 향후 추가 시 secrets 등록 + matchstore 또는 fastlane match

### 28. Build version 이미 사용됨
**증상** (Apple):
```
ERROR ITMS-90189: Duplicate Bundle Identifier
```

**해결**: `pubspec.yaml` 의 `version: x.y.z+N` 의 `+N` (build number) 증가:
```yaml
version: 1.0.0+2   # +1 → +2
```

매 빌드 +1 — TestFlight 가 같은 build 두 번 받지 않음.

---

## 기타

### 29. `flutter run` 이 hot reload 안 됨
**해결**:
- 콘솔에서 `r` 키 입력 (대문자 R 은 hot restart)
- IDE 의 lightning ⚡ 버튼
- 일부 변경 (main 함수 / native code / pubspec) 은 full restart 필요

### 30. Hot reload 시 Riverpod 상태 유지 안 됨
**원인**: `ProviderScope` 자체가 재생성되면 모든 상태 초기화.

**해결**:
- `r` (hot reload) 시 유지됨
- `R` (hot restart) 또는 main.dart 변경 시 초기화 — 정상 동작
- 보존하려면 `shared_preferences` / secure_storage 활용

### 31. 디바이스 화면 회전됨
**원인**: orientation lock 누락.

**해결**: 이미 §14 에서 적용:
- `main.dart` `SystemChrome.setPreferredOrientations([portraitUp])`
- iOS Info.plist `UISupportedInterfaceOrientations` portrait 만
- Android Manifest `screenOrientation="portrait"`

이 3개 다 있어야 완전 lock.

---

## 디버그 도구

### Dart DevTools
```bash
flutter run
# 콘솔 출력의 DevTools URL 클릭
# http://127.0.0.1:9100?uri=...
```

기능:
- **Inspector** — 위젯 트리 시각화
- **Network** — Dio 요청/응답
- **Logging** — `debugPrint` 출력
- **Performance** — frame rate 측정
- **Memory** — 누수 추적

### `flutter logs`
실행 중 디바이스 로그 보기:
```bash
flutter logs                # 모든 디바이스
flutter logs -d emulator-5554  # 특정 디바이스
```

### Charles Proxy / Wireshark
HTTPS 통신 detailed inspect — 운영 클라가 보내는 정확한 페이로드 확인.

### Firebase Console — Cloud Messaging
직접 push 송신해서 토큰 활성 여부 확인.

### Play Internal app sharing
QR 코드로 즉시 설치 — 빌드 디버깅에 유용.

---

## 추가 도움말

여기서 답을 못 찾으면:
1. **에러 메시지로 검색** — Stack Overflow + Flutter GitHub Issues
2. **로그 자세히** — `flutter run -v` (verbose 모드)
3. **GitHub Issues** — [findit-rebuild/issues](https://github.com/GabrielJung0727/findit-rebuild/issues) 에 새 이슈 생성
4. **04-26.md** 의 각 섹션 후속 항목 확인

자주 나오는 패턴:
- 환경변수 / secret 누락 → `.env` 또는 dart-define 확인
- 포트 충돌 → 다른 프로세스 종료
- 패키지 버전 호환성 → `flutter pub upgrade --major-versions`
- 시뮬레이터 vs 실기기 — 일부 기능은 실기기 필수 (push, IAP, camera)
