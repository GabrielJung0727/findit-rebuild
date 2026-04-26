# Client Setup

Flutter 클라이언트 (`client_flutter/`) 셋업 + 실행 + dart-define.

## 사전 요구사항

| 도구 | 버전 | 설치 |
|---|---|---|
| Flutter SDK | **3.27.4** (이 프로젝트 지정) | https://docs.flutter.dev/get-started/install |
| Dart | 3.6.2 (Flutter 동봉) | — |
| Android SDK | API 21+ (최소), API 36 (compile) | Android Studio 동반 |
| Xcode | 15+ | macOS App Store |
| CocoaPods | 1.14+ | `sudo gem install cocoapods` (macOS만) |
| JDK | 17 | Android Studio 동반 또는 별도 |

`flutter doctor -v` 로 점검:
```
[√] Flutter (Channel stable, 3.27.4)
[√] Windows Version
[√] Android toolchain (라이선스 미수락 시 → flutter doctor --android-licenses)
[√] Android Studio
[√] Connected device (1+ available)
```

iOS 빌드는 macOS + Xcode 필수 — Windows 에서는 GitHub/Codemagic CI 에 위임.

---

## 1. 클론 + 의존성

```bash
git clone https://github.com/GabrielJung0727/findit-rebuild.git
cd findit-rebuild/client_flutter
flutter pub get
```

`pubspec.yaml` 핵심 의존성 (12종):

| 패키지 | 용도 |
|---|---|
| `dio` | REST HTTP 클라 |
| `web_socket_channel` | WebSocket 매칭 |
| `flutter_riverpod` | 상태 관리 |
| `go_router` | 라우팅 + redirect 가드 |
| `flutter_localizations` + `intl` | i18n (145키 한/영) |
| `flutter_secure_storage` | iOS Keychain / Android Keystore (세션 토큰) |
| `shared_preferences` | 자동 로그인 플래그 |
| `cached_network_image` | 스테이지 이미지 다운로드 캐시 |
| `firebase_core` + `firebase_messaging` | FCM 푸시 |
| `in_app_purchase` | IAP (Google + Apple 통합) |
| `flutter_facebook_auth` | Facebook 로그인 (1.3 후속) |
| `flutter_html` | 공지사항 HTML 렌더 |
| `image_picker` | 프로필 사진 (카메라/앨범) |

dev 의존성:
- `flutter_test` — 위젯 테스트
- `flutter_lints` — 기본 린트
- `flutter_launcher_icons` — 앱 아이콘 자동 생성
- `http_mock_adapter` — Dio mock (API 테스트)

---

## 2. l10n 코드 생성

```bash
flutter gen-l10n
```

이 명령이:
1. `lib/l10n/app_en.arb` + `app_ko.arb` 읽음
2. `lib/l10n/app_localizations.dart` + `app_localizations_en.dart` + `app_localizations_ko.dart` 자동 생성
3. 145개 getter 메서드 (`l.notice`, `l.email`, `l.itemPen01` 등)

빌드 시 자동 실행되지만, 명시적으로 한 번 돌리는 게 IDE 자동완성 등록에 좋음.

[[Internationalization]] 참조.

---

## 3. 디바이스 준비

### Android 에뮬레이터
Android Studio → Tools → Device Manager → `+` → Pixel 6 / Tiramisu (API 33) 또는 UpsideDownCake (API 34)

### Android 실기기
- 설정 → 휴대폰 정보 → 빌드 번호 7번 탭 → 개발자 옵션 활성
- 개발자 옵션 → USB 디버깅 ON
- USB 연결 → "이 컴퓨터를 신뢰" 다이얼로그에서 허용

확인:
```bash
flutter devices
# Pixel 6 API 34 (mobile) • emulator-5554 • android-x64 • Android 14 (API 34)
```

### iOS 시뮬레이터 (macOS만)
```bash
open -a Simulator
```

### iOS 실기기 (macOS만)
- Apple Developer 계정 등록 + Xcode → Signing & Capabilities → Team 선택
- iPhone 연결 → Trust Computer

---

## 4. 실행

### 빠른 실행
```bash
flutter run
```

여러 디바이스 연결 시 셀렉터 표시 → 번호 입력.

특정 디바이스:
```bash
flutter run -d emulator-5554        # Android 에뮬
flutter run -d "iPhone 15"           # iOS 시뮬 (macOS)
flutter run -d chrome                # 웹 (지원 X — 모바일 전용 SDK 다수)
```

### Hot Reload / Hot Restart

실행 중 콘솔에서:
- `r` — Hot Reload (상태 유지, 빠름)
- `R` — Hot Restart (상태 초기화, 약간 느림)
- `q` — 종료
- `h` — help

코드 저장 시 자동 reload (IDE 설정 필요).

---

## 5. dart-define — 환경별 오버라이드

`Property.dart` 의 모든 값은 `--dart-define` 으로 빌드 시 오버라이드 가능:

```bash
# 기본 (10.0.2.2 = 에뮬 → 호스트 PC)
flutter run

# 실기기 + 같은 Wi-Fi (호스트 PC LAN IP)
flutter run \
  --dart-define=FINDIT_SERVER_DOMAIN=http://192.168.1.10:8080/ \
  --dart-define=FINDIT_WS_URL=ws://192.168.1.10:22131/ws

# 운영
flutter run --release \
  --dart-define=FINDIT_SERVER_DOMAIN=https://api.findit.example/ \
  --dart-define=FINDIT_WS_URL=wss://api.findit.example/ws \
  --dart-define=FINDIT_CLEARTEXT=false
```

### 사용 가능한 키

| 키 | 기본값 | 의미 |
|---|---|---|
| `FINDIT_SERVER_DOMAIN` | `http://10.0.2.2:8080/` | REST 서버 (말미 슬래시 필수) |
| `FINDIT_WS_URL` | `ws://10.0.2.2:22131/ws` | WebSocket URL |
| `FINDIT_CLEARTEXT` | `true` | 평문 HTTP 허용 (운영 false) |
| `FINDIT_FB_APP_ID` | `""` | Facebook App ID (1.3 후속) |
| `FINDIT_RECAPTCHA_KEY` | `""` | reCAPTCHA v3 사이트 키 |
| `FINDIT_SERVER_IP` | `10.0.2.2` | (deprecated) raw TCP IP |
| `FINDIT_SERVER_SOCKET_PORT` | `22131` | (deprecated) raw TCP 포트 |

### 빌드 프로필 권장
`scripts/run-dev.sh`, `scripts/run-prod.sh` 같은 스크립트로 dart-define 모음 관리.

또는 IDE Run Configuration:
- Android Studio: Run → Edit Configurations → "Additional run args" 에 `--dart-define=...`
- VS Code: `.vscode/launch.json` configurations 에 `args` 추가

---

## 6. IDE 셋업

### VS Code (가장 가벼움, 추천)
1. 확장 프로그램: "Flutter" (Dart 자동 포함)
2. F5 → 디바이스 선택 → 실행
3. 디버그 콘솔 + 위젯 인스펙터 자동 활성

### Android Studio
1. Plugins → Flutter 검색 → 설치 → IDE 재시작
2. File → Open → `client_flutter`
3. Settings → Languages & Frameworks → Flutter → SDK path: `C:\src\flutter` (또는 설치 경로)
4. 우상단 디바이스 셀렉터 → 디바이스 → ▶

### IntelliJ IDEA
Android Studio 와 동일.

---

## 7. 빌드

### Debug APK (빠른 검증)
```bash
flutter build apk --debug
# build/app/outputs/flutter-apk/app-debug.apk
```

### Release APK (서명 필요)
```bash
flutter build apk --release
```
이전에 `client_flutter/android/key.properties` 작성 필요. [[Release-Process#Android-키스토어]] 참조.

### App Bundle (Play Store 업로드)
```bash
flutter build appbundle --release
# build/app/outputs/bundle/release/app-release.aab
```

### iOS IPA (App Store, macOS만)
```bash
cd ios && pod install --repo-update && cd ..
flutter build ipa --release
# build/ios/ipa/Runner.ipa
```

전체 출시: [[Release-Process]]

---

## 8. 테스트

```bash
flutter test                       # 106 tests, ~10s
flutter test test/api/             # API wrappers 만 (32 tests)
flutter test test/state/           # Auth/Lobby 상태 (12 tests)
flutter test test/game/            # GameController + ImageCut (10 tests)
flutter test --coverage            # coverage/lcov.info 생성
```

[[Testing]] 참조.

---

## 9. 분석 (Lint)

```bash
flutter analyze
# No issues found! (or 보고)
```

`analysis_options.yaml` 룰:
- `flutter_lints` 기본
- `strict-casts` / `strict-inference` / `strict-raw-types`
- `prefer_single_quotes`
- `require_trailing_commas`
- `avoid_print`
- `avoid_dynamic_calls`
- `use_super_parameters`

자동 수정:
```bash
dart fix --apply
```

---

## 10. 디렉터리 구조 (한눈에)

```
client_flutter/lib/
├── api/                    # 10 모듈 — REST/WS/IAP/Push
│   ├── api_client.dart     # Dio + 인터셉터 + 401 콜백
│   ├── member_api.dart     # 인증 + 지갑
│   ├── shop_api.dart       # 구매/사용/강화/확장
│   ├── catalog_api.dart    # skillCatalog + levelTable
│   ├── content_api.dart    # newImageList + newAdImageList + notice
│   ├── game_api.dart       # mutiAddUp + 랭킹 + 구매내역
│   ├── analytics_api.dart  # event + adClick + adReward
│   ├── analytics_helper.dart   # 도메인 이벤트 헬퍼
│   ├── iap_api.dart        # verifyIap
│   ├── iap_service.dart    # in_app_purchase 통합
│   ├── push_api.dart       # registerFcmToken
│   ├── push_service.dart   # FirebaseMessaging 통합
│   └── ws_client.dart      # WebSocket + reconnect + lifecycle
├── game/                   # 게임 루프
│   ├── game_controller.dart
│   ├── game_state.dart
│   ├── game_view.dart
│   ├── game_painter.dart
│   ├── image_set.dart
│   └── item_catalog.dart
├── screens/                # 13 화면
├── state/
│   ├── auth.dart
│   ├── lobby.dart
│   └── providers.dart
├── l10n/                   # ARB + 자동 생성 dart
├── util/
│   ├── property.dart
│   ├── constants.dart
│   ├── validation.dart
│   └── asset_paths.dart
├── main.dart
└── router.dart
```

상세: [[Project-Structure]]

---

## 11. 자주 묻는 질문

### Q. Windows 에서 iOS 빌드 가능?
A. ❌ 불가. Codemagic / GitHub Actions macOS 러너에 위임 ([[Build-CI-CD]]).

### Q. `flutter pub get` 매번 인터넷 필요?
A. 첫 1회 후 `~/.pub-cache` 에 캐시. 오프라인 빌드 가능.

### Q. AGP / Gradle 버전 업그레이드?
A. AGP 8.5.0 / Gradle 8.7 / Kotlin 1.9.24 / JVM 17 — JDK 21+ 와 호환되도록 §1 부트스트랩 시 일괄 업그레이드. 추가 변경 시 `android/settings.gradle` + `android/gradle/wrapper/gradle-wrapper.properties` 동시 수정.

### Q. Firebase 미설정 상태에서 빌드 OK?
A. ✅. `Firebase.initializeApp()` 실패 시 silent — 푸시만 작동 안 함 ([[Push-Notifications]]).

### Q. `google-services.json` 어디서 받음?
A. Firebase Console → 프로젝트 설정 → Android 앱 → 다운로드. [[Push-Notifications#Firebase-셋업]].

### Q. `flutter run` 이 하얀 화면에서 멈춤?
A. 서버 미가동 — 자동 로그인 시도가 실패하며 fallback 으로 로그인 화면 표시까지 5~10초. 서버 띄우면 정상.

기타 [[Troubleshooting]].
