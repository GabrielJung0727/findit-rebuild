# Build / CI / CD

GitHub Actions + Codemagic 양면 파이프라인.

## 전략

| 트리거 | 워크플로 | 러너 | 용도 |
|---|---|---|---|
| `main` 푸시 / PR | analyze + test + Android debug APK | ubuntu (GitHub Actions) | 빠른 검증, 무료 |
| 같음 | (Codemagic) ci 워크플로 | linux_x2 (Codemagic) | 동일, 백업 |
| tag `v*` | Android Release (Play Internal) | linux_x2 | AAB → Play Internal Track 자동 업로드 |
| tag `v*` | iOS Release (TestFlight) | mac_mini_m2 | IPA → TestFlight 자동 업로드 |

**왜 둘 다?**
- GitHub Actions 무료 + 빠른 피드백 (PR 검증). macOS 러너는 분당 비용 비싸서 iOS 빌드는 제외.
- Codemagic 가 macOS 러너 + 스토어 업로드 자동화 (Apple/Google) 더 잘 됨.

---

## GitHub Actions — `.github/workflows/ci.yml`

### 트리거
```yaml
on:
  push:
    branches: [main]
  pull_request:
    branches: [main]

concurrency:
  group: ci-${{ github.ref }}
  cancel-in-progress: true
```

`concurrency` — 같은 PR 에 새 푸시 시 이전 실행 cancel. 비용 절감 + 빠른 피드백.

### Job 1: Flutter

```yaml
flutter:
  runs-on: ubuntu-latest
  timeout-minutes: 30
  defaults:
    run:
      working-directory: client_flutter
  steps:
    - uses: actions/checkout@v4
    - uses: actions/setup-java@v4
      with:
        distribution: temurin
        java-version: '17'
    - uses: subosito/flutter-action@v2
      with:
        channel: stable
        flutter-version: '3.27.4'
        cache: true              # ← Flutter SDK 캐시 (이후 빌드 빠름)
    - run: flutter pub get
    - run: flutter gen-l10n
    - run: flutter analyze
    - run: flutter test --reporter expanded
    - run: flutter build apk --debug
    - uses: actions/upload-artifact@v4
      if: success()
      with:
        name: app-debug-apk
        path: client_flutter/build/app/outputs/flutter-apk/app-debug.apk
        retention-days: 7
```

7일간 APK artifact 보관 — 직접 APK 다운로드 후 디바이스 설치 가능 (PR 리뷰 시 동작 검증 용이).

### Job 2: Server smoke

```yaml
server:
  runs-on: ubuntu-latest
  timeout-minutes: 10
  defaults:
    run:
      working-directory: server
  steps:
    - uses: actions/checkout@v4
    - uses: actions/setup-node@v4
      with:
        node-version: '20'
        cache: npm
        cache-dependency-path: server/package-lock.json
    - run: npm ci
    - name: load smoke
      run: |
        node -e "
          require('./src/util/iap');
          require('./src/util/validation');
          ...
          require('./src/socket/handlers');
          require('./src/socket/server');
          require('./src/socket/ws_server');
          require('./src/routes/member');
          ...
          console.log('all modules load OK');
        "
```

서버는 단위 테스트 별도 — 모듈 require 만으로 syntax/import 에러 잡음. 추후 mocha/jest 추가 시 `npm test` 로 교체.

### 시간 / 비용

- 서버 smoke: ~1분
- Flutter 첫 빌드: ~10분 (Flutter SDK 다운로드 + Gradle 첫 컴파일)
- Flutter 캐시 후: ~3분
- 무료 quota: GitHub Actions Public repo 는 무제한 (Private 은 월 2000분)

---

## Codemagic — `codemagic.yaml`

3 워크플로:

### 1. `ci` — main / PR 검증 (백업)

GitHub Actions 와 동일 역할. 둘 다 활성 시 cross-validation.

```yaml
workflows:
  ci:
    instance_type: linux_x2
    triggering:
      events: [push, pull_request]
      branch_patterns:
        - pattern: main
    scripts:
      - flutter pub get
      - flutter gen-l10n
      - flutter analyze
      - flutter test
      - flutter build apk --debug
    artifacts:
      - client_flutter/build/app/outputs/flutter-apk/app-debug.apk
```

### 2. `android-release` — tag v* → Play Internal

```yaml
android-release:
  instance_type: linux_x2
  max_build_duration: 60
  environment:
    android_signing:
      - findit-keystore                    # Codemagic 에 업로드한 keystore
    groups:
      - google_play                         # 시크릿 그룹
    vars:
      PACKAGE_NAME: com.findit.battle
  triggering:
    events: [tag]
    tag_patterns:
      - pattern: 'v*'
  scripts:
    - flutter pub get
    - flutter build appbundle --release
  artifacts:
    - client_flutter/build/app/outputs/bundle/release/app-release.aab
  publishing:
    google_play:
      credentials: $GOOGLE_PLAY_SERVICE_ACCOUNT_JSON
      track: internal
      submit_as_draft: true                 # 사용자가 수동으로 publish
```

업로드 후 Play Console → Internal testing track → Edit release → publish.

### 3. `ios-release` — tag v* → TestFlight

```yaml
ios-release:
  instance_type: mac_mini_m2
  max_build_duration: 60
  environment:
    ios_signing:
      distribution_type: app_store
      bundle_identifier: com.findit.battle
    groups:
      - app_store_connect
  triggering:
    events: [tag]
    tag_patterns:
      - pattern: 'v*'
  scripts:
    - flutter pub get
    - cd ios && pod install --repo-update
    - flutter build ipa --release
  artifacts:
    - client_flutter/build/ios/ipa/*.ipa
  publishing:
    app_store_connect:
      auth: integration
      submit_to_testflight: true
      beta_groups:
        - 'Internal Testers'
```

TestFlight 내부 그룹 (100명까지 즉시) 자동 추가. 외부 그룹은 Apple 리뷰 1회 필요.

---

## 시크릿 매니지먼트

### Codemagic Dashboard

Settings → Environment variables (Encrypted 모드):

| 변수 | 값 출처 |
|---|---|
| `IOS_APP_STORE_CONNECT_KEY_ID` | App Store Connect → Users and Access → Keys |
| `IOS_APP_STORE_CONNECT_ISSUER_ID` | 같은 페이지 |
| `IOS_APP_STORE_CONNECT_PRIVATE_KEY` | `.p8` 파일 본문 |
| `ANDROID_KEYSTORE_PATH` (file) | `keytool` 로 생성한 `.jks` |
| `ANDROID_KEYSTORE_PASSWORD` | 키스토어 password |
| `ANDROID_KEY_ALIAS` | alias |
| `ANDROID_KEY_PASSWORD` | key password |
| `GOOGLE_PLAY_SERVICE_ACCOUNT_JSON` | Google Cloud Service account JSON |

### GitHub Actions Secrets

Settings → Secrets and variables → Actions:
- 현재 사용 X (debug 빌드만, 시크릿 불필요)
- 향후 macOS 러너로 IPA 빌드 추가 시 같은 시크릿 등록

### 그룹화

Codemagic `groups`:
```yaml
environment:
  groups:
    - google_play     # 그룹에 속한 변수 자동 주입
    - app_store_connect
```

각 그룹에 변수 묶어 관리 (UI 에서 그룹 별 수정).

---

## 키스토어 생성 (1회)

```bash
keytool -genkey -v -keystore findit-release.jks \
  -keyalg RSA -keysize 2048 -validity 10000 -alias findit
```

- 분실 시 같은 패키지명 앱 재출시 불가
- 안전 보관 (1Password / Codemagic 시크릿 / 하드 백업 다중)

`client_flutter/android/key.properties`:
```ini
storePassword=...
keyPassword=...
keyAlias=findit
storeFile=../keystores/findit-release.jks
```

이 파일은 `.gitignore` 에 등록됨. CI 에서는 환경변수 → 빌드 시 동적 생성:
```yaml
scripts:
  - name: setup keystore
    script: |
      cat > $CM_BUILD_DIR/client_flutter/android/key.properties <<EOF
      storePassword=$ANDROID_KEYSTORE_PASSWORD
      keyPassword=$ANDROID_KEY_PASSWORD
      keyAlias=$ANDROID_KEY_ALIAS
      storeFile=$CM_BUILD_DIR/keystore.jks
      EOF
      echo $CM_KEYSTORE | base64 -d > $CM_BUILD_DIR/keystore.jks
```

---

## Android signing config — `app/build.gradle`

```gradle
def keystorePropertiesFile = rootProject.file('key.properties')
def keystoreProperties = new Properties()
if (keystorePropertiesFile.exists()) {
    keystoreProperties.load(new FileInputStream(keystorePropertiesFile))
}

android {
  signingConfigs {
    if (keystorePropertiesFile.exists()) {
      release {
        keyAlias = keystoreProperties['keyAlias']
        keyPassword = keystoreProperties['keyPassword']
        storeFile = keystoreProperties['storeFile'] ? file(keystoreProperties['storeFile']) : null
        storePassword = keystoreProperties['storePassword']
      }
    }
  }
  buildTypes {
    release {
      signingConfig = keystorePropertiesFile.exists()
        ? signingConfigs.release
        : signingConfigs.debug   // ← key.properties 없으면 debug 키 fallback
    }
  }
}
```

이 패턴 덕에:
- 로컬 dev: `key.properties` 없으면 debug 키 → `flutter build apk --release` 시도해도 안전 (debug 서명)
- CI / 운영: `key.properties` 동적 생성 → 정식 서명

---

## iOS code signing

### Manual (전통)
1. Apple Developer → Certificates → Apple Distribution 인증서 발급
2. Profiles → App Store provisioning profile 발급
3. Xcode → Signing & Capabilities → Manual + provisioning profile 선택

### Automatic (권장)
1. Xcode → Signing & Capabilities → Automatically manage signing 체크
2. Team 선택 → Xcode 가 cert/profile 자동 생성

### CI (Codemagic)

`codemagic.yaml`:
```yaml
environment:
  ios_signing:
    distribution_type: app_store
    bundle_identifier: com.findit.battle
```

App Store Connect API Key 등록 시 Codemagic 가 cert/profile 자동 발급/관리 — `fastlane match` 같은 도구 불필요.

---

## 릴리스 절차

### 1. 버전 올림

`client_flutter/pubspec.yaml`:
```yaml
version: 1.0.1+2   # x.y.z+buildNumber
```

`x.y.z` = 사용자 표시 (`CFBundleShortVersionString` / `versionName`)
`+N` = 빌드 번호 (`CFBundleVersion` / `versionCode`) — 매 빌드 +1

### 2. CHANGELOG 갱신

`CHANGELOG.md` (선택, 권장):
```markdown
## v1.0.1 — 2026-04-30
- Fix: 로그인 후 자동 푸시 토큰 등록 누락
- Add: 친구 랭킹 주간 탭
```

### 3. PR / merge

```bash
git checkout -b release/v1.0.1
# 버전 올리고 commit
git push origin release/v1.0.1
# GitHub PR → review → merge to main
```

CI 자동 실행 (analyze + test + APK).

### 4. 태그 + 푸시

```bash
git checkout main && git pull
git tag v1.0.1
git push origin v1.0.1
```

Codemagic 가 `android-release` + `ios-release` 동시 트리거. 보통 30~60분 후 양 스토어에 도착.

### 5. 스토어 측 publish

#### Google Play
- Console → Internal testing → 빌드 자동 도착 → Edit release → "Save and review" → "Start rollout to Internal testing"
- 또는 Codemagic 의 `submit_as_draft: false` 로 자동 publish

#### Apple TestFlight
- App Store Connect → My Apps → TestFlight → Build 자동 도착
- Internal Testing → 그룹에 build 추가 → 즉시 배포
- External Testing → Apple 리뷰 (1~24시간) → 승인 시 외부 그룹 배포 가능

[[Release-Process]] 에서 단계별 상세.

---

## 빌드 산출물

### Debug APK (빠른 검증용)
```
client_flutter/build/app/outputs/flutter-apk/app-debug.apk   # ~50MB
```

### Release APK (직접 배포용)
```
flutter build apk --release
client_flutter/build/app/outputs/flutter-apk/app-release.apk  # ~25MB
```

### Release AAB (Play Store 업로드용 — 권장)
```
flutter build appbundle --release
client_flutter/build/app/outputs/bundle/release/app-release.aab  # ~25MB
```

Play 가 AAB 에서 디바이스별 split APK 자동 생성 → 사용자 다운로드 ~12MB.

### iOS IPA (App Store 업로드용)
```
cd ios && pod install --repo-update
cd ..
flutter build ipa --release
client_flutter/build/ios/ipa/Runner.ipa
```

`Runner.ipa` 는 zip 형식 — 풀어서 `Payload/Runner.app/` 안에 모든 자원.

---

## 빌드 시간 단축 팁

### 캐시
- GitHub Actions: `subosito/flutter-action@v2` 의 `cache: true` (Flutter SDK)
- Codemagic: 자동 (Flutter / Gradle / Pods 다 캐시)

### 분리 빌드
- iOS 와 Android 별도 워크플로 → 병렬 실행 (Codemagic 자동)

### 의존성 최소화
- 불필요한 패키지 제거
- `pubspec.lock` commit (재현 가능 + 분석 단축)

### Gradle 메모리
`android/gradle.properties`:
```
org.gradle.jvmargs=-Xmx4096m -XX:MaxMetaspaceSize=2048m
org.gradle.parallel=true
org.gradle.caching=true
```

### Pod cache (iOS)
```yaml
- run: cd ios && pod install --repo-update --silent
```
첫 1회 후 빠름.

---

## 빌드 실패 디버깅

### "Gradle build failed"
- 로그에 `Caused by:` 라인 검색
- 흔한 원인: AGP/Kotlin/JDK 버전 불일치 — `client_flutter/android/settings.gradle` 의 `id "com.android.application" version "8.5.0"` 과 JDK 17 페어링

### "Pod install failed"
- macOS 만 — Xcode 버전 / CocoaPods 버전 / `pod repo update` 실행
- iOS 17 SDK 필요 시 Xcode 15+

### "Flutter build apk: keystore not found"
- `key.properties` 의 `storeFile` 경로 확인 (상대 경로면 `app/build.gradle` 기준)
- CI 에서 keystore 동적 생성 단계 누락 — `codemagic.yaml` 의 setup keystore script 추가

### "iOS: No accounts found"
- Codemagic: App Store Connect API Key 등록 누락
- 로컬 Xcode: Preferences → Accounts → Apple ID 추가

### "Test failed in CI but not locally"
- 시간대 문제 (`Future.delayed` 시뮬레이션 등) → CI 빠른 머신에서 race condition
- 환경변수 차이 → CI 만 있는 환경변수 명시
- macOS / Linux 차이 (예: 줄바꿈 CRLF/LF) → ARB 파일 normalize

---

## 모니터링

### GitHub Actions
- Repo → Actions 탭 → 워크플로 별 실행 이력
- 실패 시 자동 이메일 알림

### Codemagic
- Dashboard → 프로젝트 별 빌드 이력
- Slack/Email/Webhook 알림 설정 가능

### 빌드 stats 추세
Codemagic Dashboard → Statistics:
- 평균 빌드 시간
- 성공률
- 사용 분 (free tier 500분/월)

---

## 다음 단계 (운영)

- [ ] **자동 changelog 생성** — `release-please` GitHub Action 으로 conventional commits 기반 자동 PR
- [ ] **앱 버전 강제 업데이트** — 서버 `/notice.json` 응답에 minVersion 필드 → 클라가 미만 시 업데이트 다이얼로그
- [ ] **다단계 staged rollout** — Play 1% → 10% → 50% → 100% 자동 단계
- [ ] **Crashlytics 통합** — 빌드별 crash rate 추적
- [ ] **빌드 알림 Slack** — 실패 시 채널 알림

[[Release-Process]] 에서 운영 단계별 가이드.
