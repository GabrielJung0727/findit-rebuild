# 출시 가이드 — Findit (iOS + Android)

> 04-26.md §15 동반 문서. CI 파일 + 외부 콘솔 작업의 단일 진입점.

---

## 1. CI/CD 개요

| 트리거 | 워크플로 | 산출물 |
|---|---|---|
| `main` 푸시 / PR | analyze + test + Android debug APK | APK artifact |
| 태그 `v*` | Android Release (Play Internal) + iOS Release (TestFlight) | AAB + IPA + 스토어 자동 업로드 |

CI 파일:
- [.github/workflows/ci.yml](../.github/workflows/ci.yml) — GitHub Actions (analyze + test + 서버 모듈 로드 smoke). macOS 러너 미사용 → iOS 빌드는 Codemagic 에 위임.
- [codemagic.yaml](../codemagic.yaml) — 양 플랫폼 빌드 + TestFlight + Play 자동 업로드.

권장 흐름:
1. **개발/PR**: GitHub Actions 가 analyze + test + Android APK 검증 (무료, 빠름)
2. **릴리스 태그**: Codemagic 가 양 플랫폼 빌드 + 스토어 자동 업로드 (macOS 빌드 필요)

GitHub Actions 만으로 가는 옵션도 있음 (`macos-latest` 러너로 IPA 빌드 + `app-store-connect-cli` 또는 `fastlane pilot` 으로 업로드). 비용 예측 후 선택.

---

## 2. 시크릿 매니지먼트

### Codemagic 등록 (Encrypted)

| 변수 | 출처 | 용도 |
|---|---|---|
| `IOS_APP_STORE_CONNECT_KEY_ID` | App Store Connect → Users and Access → Keys | TestFlight 업로드 API 인증 |
| `IOS_APP_STORE_CONNECT_ISSUER_ID` | 같은 페이지 | 같음 |
| `IOS_APP_STORE_CONNECT_PRIVATE_KEY` | `.p8` 파일 본문 | 같음 |
| `IOS_BUNDLE_ID` | `com.findit.battle` | 빌드 ID |
| `ANDROID_KEYSTORE_PATH` (file) | `keytool` 로 생성한 `.jks` | 릴리스 서명 |
| `ANDROID_KEYSTORE_PASSWORD` | 키스토어 생성 시 입력 | 같음 |
| `ANDROID_KEY_ALIAS` | 키스토어 생성 시 입력 | 같음 |
| `ANDROID_KEY_PASSWORD` | 키스토어 생성 시 입력 | 같음 |
| `GOOGLE_PLAY_SERVICE_ACCOUNT_JSON` | Google Cloud Console → IAM → Service Accounts → JSON 키 | Play Console 업로드 + IAP 검증 (server iap.js) 공용 |

### 서버 환경변수 (운영)

| 변수 | 용도 | 설정처 |
|---|---|---|
| `GOOGLE_PLAY_SERVICE_ACCOUNT_JSON` | IAP 영수증 검증 | Cloud Run env vars (Secret Manager 권장) |
| `GOOGLE_PLAY_PACKAGE_NAME` | `com.findit.battle` | 같음 |
| `SAMSUNG_IAP_API_KEY` | Samsung IAP (선택) | 같음 |
| `APPLE_SHARED_SECRET` | Apple `/verifyReceipt` password | 같음 |
| `APPLE_USE_SANDBOX` | `1` 이면 sandbox 강제 | 같음 |
| `RECAPTCHA_SECRET` | 가입 시 봇 차단 | 같음 |
| `ADMIN_TOKEN` | 어드민 API 인증 | 같음 |

---

## 3. 1회성 셋업 작업

### Apple Developer
1. https://developer.apple.com → Account → Apple Developer Program 등록 (\$99/year)
2. Certificates, Identifiers → 새 Bundle ID `com.findit.battle` 등록 + Push Notifications + In-App Purchase capability 추가
3. APNs Auth Key (.p8) 발급 → Firebase Console iOS 앱에 업로드 (§11)
4. App Store Connect → My Apps → New App
5. App Information / 가격 / 스크린샷 / 한글·영어 설명 등록
6. In-App Purchases → 4 Consumable 등록 (`coin_100`/`coin_250`/`coin_500`/`coin_650`, \$0.99/\$1.99/\$3.99/\$4.99)
7. App Store Connect API → Users and Access → Keys → 신규 Key 발급 → Codemagic 시크릿에 등록

### Google Play
1. https://play.google.com/console → Developer Program 등록 (\$25 one-time)
2. Create app → `com.findit.battle`
3. Internal testing track 생성 → 테스터 이메일 등록
4. Store listing / Graphic assets / Content rating
5. In-app products → 4개 등록 (Apple 과 동일 SKU)
6. API access → Service account 생성 → JSON 다운로드 → Codemagic + 서버 env var 에 동일 값 등록

### 키스토어 (Android)
```
keytool -genkey -v -keystore findit-release.jks \
  -keyalg RSA -keysize 2048 -validity 10000 -alias findit
```
- 분실 시 같은 패키지명 앱 재출시 불가 — 안전한 곳(1Password / Codemagic 시크릿) 에 별도 백업
- [`client_flutter/android/key.properties.example`](../client_flutter/android/key.properties.example) 복사해서 `key.properties` 작성 후 로컬 릴리스 빌드 가능

### Firebase
1. Firebase Console → Project 생성
2. iOS 앱 등록 (Bundle ID 일치) → `GoogleService-Info.plist` → `client_flutter/ios/Runner/`
3. Android 앱 등록 (Package name 일치) → `google-services.json` → `client_flutter/android/app/`
4. APNs Auth Key (.p8) Firebase iOS 앱에 업로드
5. `dart pub global activate flutterfire_cli && flutterfire configure` (선택, 자동 셋업)

---

## 4. 출시 전 체크리스트

### 클라
- [ ] `Property.serverDomain` 운영 URL (HTTPS) 로 교체
- [ ] `Property.webSocketUrl` 운영 `wss://` URL 로 교체
- [ ] `Property.usesCleartextTraffic = false`
- [ ] `network_security_config.xml` 의 dev 도메인 (10.0.2.2 / 192.168.*) 블록 제거
- [ ] iOS Info.plist `NSAllowsLocalNetworking = false`
- [ ] iOS `Runner.entitlements` `aps-environment = production` (또는 자동 처리)
- [ ] iOS Info.plist `NSLocalNetworkUsageDescription` 키 통째로 제거 (운영 빌드)
- [ ] `flutter_launcher_icons` 정식 아이콘 PNG 적용 (1024×1024)
- [ ] 정식 캐릭터/스킬 자산 교체 (디자이너 입수)
- [ ] reCAPTCHA v3 사이트 키 발급 + `Property.recaptchaSiteKey`
- [ ] Facebook 앱 등록 + `Property.facebookAppId` (1.3 기능 활성화 시)

### 서버
- [ ] GCP Cloud Run 프로젝트 생성 + Cloud SQL (MySQL) 인스턴스
- [ ] [server/sql/schema.sql](../server/sql/schema.sql) + 4개 마이그레이션 적용
- [ ] [server/sql/seed_skills.sql](../server/sql/seed_skills.sql) + 시드 데이터 적재
- [ ] 위 §2 의 환경변수 모두 등록 (Secret Manager 권장)
- [ ] Cloud Run / GKE 배포 (HTTP+WebSocket 허용)
- [ ] 어드민 토큰 회전 (`admin_tokens` 테이블의 dev 토큰 폐기 + 새 토큰 발급)

### 스토어
- [ ] iOS 스크린샷 — 6.7" / 6.5" / 5.5" iPhone + 12.9" iPad
- [ ] Android 스크린샷 — phone (1080×1920+) + tablet (선택)
- [ ] 마케팅 텍스트 (한국어 + 영어)
- [ ] 개인정보처리방침 URL (필수)
- [ ] 만 13세 이상 / 광고 포함 표기
- [ ] In-App Purchase 약관 표기

---

## 5. 릴리스 절차

1. `client_flutter/pubspec.yaml` 의 `version: x.y.z+N` 갱신
2. PR → main merge
3. 태그 푸시: `git tag v1.0.0 && git push origin v1.0.0`
4. Codemagic 자동 빌드 → TestFlight + Play Internal 업로드
5. TestFlight 내부 테스터 / Play Internal 테스터 검증
6. Apple 리뷰 제출 (TestFlight 외부 테스트 또는 App Store)
7. Play Closed Track → Production 단계적 롤아웃

---

## 6. 롤백 / 핫픽스

- 새 빌드 출시: 핫픽스 브랜치 → 빌드넘버 +1 → 태그 `v1.0.1`
- Play: Production 트랙에서 staged rollout 일시 정지 / 0% → 이전 버전 사용자 보호
- Apple: Phased Release 일시 정지 → 7일 단계적 롤아웃 중간에 멈춤 가능
- 클라 강제 업데이트: `notice.json` 응답에 업데이트 다이얼로그 트리거 (서버 1줄로 제어 가능)
