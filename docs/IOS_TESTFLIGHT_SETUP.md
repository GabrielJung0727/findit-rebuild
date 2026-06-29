# iOS 테스트 / TestFlight 셋업 체크리스트

Windows 개발 머신에서 iOS 앱을 아이폰에 올려 테스트하는 절차. iOS 빌드는 macOS가 필요하므로
**Codemagic(클라우드 Mac) → TestFlight** 경로를 기준으로 한다. (Mac 보유 시 맨 아래 참조.)

> 번들 ID: **`com.findit.battle`** (Xcode/codemagic/레거시 안드 패키지 일치). 2026-06-29 통일.

---

## 1. Apple 쪽 준비 (한 번만)

1. **App ID 등록** — [developer.apple.com](https://developer.apple.com) → Certificates, IDs & Profiles → Identifiers → `+` → App IDs
   - Bundle ID: `com.findit.battle` (Explicit)
   - Capabilities: **Push Notifications**, **In-App Purchase** 체크
2. **App Store Connect 앱 생성** — [appstoreconnect.apple.com](https://appstoreconnect.apple.com) → 앱 → `+`
   - 플랫폼 iOS, 같은 번들 ID 선택
   - TestFlight 탭 → 내부 테스트 그룹 **`Internal Testers`** 생성 (codemagic.yaml 이 이 이름 참조)
3. **App Store Connect API 키 발급** (CI 업로드/서명용) — 사용자 및 액세스 → 통합 → App Store Connect API → 키 생성(역할 **App Manager**)
   - **Key ID / Issuer ID** 메모, **`.p8` 파일 다운로드**(1회성)

---

## 2. Codemagic 설정

1. [codemagic.io](https://codemagic.io) 가입 → GitHub `findit-rebuild` 연결
2. **App Store Connect 통합** 등록 (위 .p8 / Key ID / Issuer ID) → iOS 코드 서명 자동 관리
   - `DEVELOPMENT_TEAM` 을 수동으로 안 넣어도 됨(자동 서명이 처리). ← 미설정 이슈 해소.
3. **환경변수 그룹** (Dashboard → Environment variables, Encrypted):
   | 그룹 | 변수 | 값 |
   |---|---|---|
   | `app_runtime` | `FINDIT_SERVER_DOMAIN` | `https://<cloud-run>/` (말미 `/`) |
   | `app_runtime` | `FINDIT_WS_URL` | `wss://<host>/ws` |
   | `app_store_connect` | (App Store Connect API 통합) | — |
   | `findit-keystore` / `google_play` | (안드 서명/배포) | — |

   > `FINDIT_SERVER_DOMAIN` 미설정 시 빌드는 되지만 기본값(에뮬레이터 localhost)으로 묶여
   > **실기기에서 서버에 못 붙는다.** 반드시 운영 Cloud Run HTTPS URL 을 넣을 것.

---

## 3. 빌드 & 설치

```bash
git tag v1.0.0
git push origin v1.0.0        # → codemagic ios-release 워크플로 실행
```

- 워크플로: `flutter pub get` → `flutter build ios --config-only`(Podfile 생성) → `pod install`
  → `flutter build ipa`(dart-define 서버 주입) → TestFlight 업로드 → `Internal Testers`
- 아이폰: **TestFlight 앱** 설치 → 초대 수락 → 빌드 설치 → 테스트.

---

## 4. 푸시 알림 테스트 (선택 — 없어도 앱은 정상 동작)

현재 `GoogleService-Info.plist` 가 레포에 **없다.** `lib/api/push_service.dart` 가 Firebase 초기화를
try/catch 로 감싸서 **plist 없이도 앱 실행/로그인/게임은 정상**이고 **푸시만 비활성**이다.

푸시까지 테스트하려면:
1. [Firebase 콘솔](https://console.firebase.google.com) → 프로젝트 → iOS 앱 추가, 번들 ID `com.findit.battle`
2. **`GoogleService-Info.plist`** 다운로드 → `client_flutter/ios/Runner/GoogleService-Info.plist` 에 배치
   (Xcode 에서 Runner 타깃에 추가, 또는 Codemagic 은 파일 환경변수로 업로드)
3. APNs 키(.p8) 를 Firebase 콘솔 → 프로젝트 설정 → Cloud Messaging 에 업로드
4. `ios/Runner/Runner.entitlements` 의 `aps-environment` 는 TestFlight=`development` 로 OK

---

## 5. Mac 이 있다면 (가장 빠른 반복)

```bash
cd client_flutter
flutter pub get
open ios/Runner.xcworkspace      # Signing & Capabilities → Team 선택(본인 Apple 계정)
# 실기기 USB 연결 후:
flutter run --release \
  --dart-define=FINDIT_SERVER_DOMAIN=https://<cloud-run>/ \
  --dart-define=FINDIT_WS_URL=wss://<host>/ws \
  --dart-define=FINDIT_CLEARTEXT=false
```

시뮬레이터는 푸시/IAP/카메라 일부가 제한되므로 실기기 권장.

---

## 상태 요약 (2026-06-29 기준)

| 항목 | 상태 |
|---|---|
| 번들 ID 통일 (`com.findit.battle`) | ✅ 완료 (pbxproj) |
| 서버 URL dart-define 주입 | ✅ codemagic 에 배선 (값은 `app_runtime` 그룹에 입력) |
| Podfile 생성 단계 | ✅ config-only 빌드 추가 |
| `GoogleService-Info.plist` | ⏳ Firebase 콘솔에서 발급 후 배치 (푸시용, 선택) |
| 서명 Team | ⏳ Codemagic App Store Connect 통합이 자동 처리 |
| App ID / ASC 앱 / API 키 | ⏳ 위 1~2 단계 (사용자 작업) |
