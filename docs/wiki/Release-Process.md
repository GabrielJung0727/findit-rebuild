# Release Process

App Store + Google Play 출시 단계별 가이드. 외부 자격 증명 발급 + 앱 등록 + 빌드 업로드 + 심사 → 정식 출시.

상세 시크릿 매트릭스: [`docs/RELEASE.md`](https://github.com/GabrielJung0727/findit-rebuild/blob/main/docs/RELEASE.md)

---

## 출시 전 4-Phase

```
Phase 1: 1회성 셋업 (계정 등록 / 키 발급)
   ├─ Apple Developer Program ($99/year)
   ├─ Google Play Developer ($25 one-time)
   ├─ Firebase 프로젝트
   └─ Android keystore + Codemagic 시크릿
Phase 2: 앱 등록 (메타데이터 / 스크린샷 / IAP SKU)
Phase 3: 베타 테스트 (TestFlight + Play Internal)
Phase 4: 정식 출시 (Apple 리뷰 / Play staged rollout)
```

각 phase 별 체크리스트.

---

## Phase 1: 1회성 셋업

### 1-1. Apple Developer Program

1. https://developer.apple.com → Account → Apple Developer Program 등록
2. 결제 완료 (개인 $99 / 회사 $99 + DUNS 번호)
3. 회사 등록 시: 1~2주 소요

### 1-2. Apple Bundle ID 등록

1. Certificates, Identifiers & Profiles → Identifiers → +
2. App IDs → Continue
3. **Bundle ID**: `com.findit.battle` (Flutter 클라 applicationId 와 정확히 일치)
4. Description: "Findit Battle"
5. Capabilities 체크:
   - **Push Notifications** (FCM)
   - **In-App Purchase**
6. Continue → Register

### 1-3. APNs Auth Key (.p8) 발급

1. Keys → +
2. 이름: "Findit APNs"
3. **Apple Push Notifications service (APNs)** 체크
4. Continue → Register
5. **`.p8` 다운로드** (한 번만 가능 — 안전 보관)
6. Key ID + Team (Issuer) ID 메모

### 1-4. App Store Connect API Key (CI 용)

1. App Store Connect → Users and Access → Keys → +
2. 이름: "Codemagic CI"
3. Access: **App Manager**
4. Generate
5. **`.p8` 다운로드** + Key ID + Issuer ID 메모
6. Codemagic Dashboard → Environment variables → 등록

### 1-5. Google Play Developer

1. https://play.google.com/console → 가입 ($25 one-time)
2. 신원 확인 (1~2일)
3. 결제 정보 등록

### 1-6. Google Play Service Account (CI 용)

1. Google Cloud Console → IAM → Service Accounts → CREATE
2. 이름: `findit-play-ci`
3. Role: 빈 채로 (다음 단계에서 Play 측 부여)
4. KEYS → ADD KEY → JSON 다운로드
5. Google Play Console → API access → Service account 보임 → "Grant access" → Permissions:
   - View financial data
   - Manage orders and subscriptions
   - Manage releases (Internal/Closed/Production track)
6. Codemagic Dashboard → 환경변수에 JSON 본문 등록 (`GOOGLE_PLAY_SERVICE_ACCOUNT_JSON`)

### 1-7. Firebase 프로젝트

[[Push-Notifications#Firebase-셋업]] 참조. 요약:
1. Firebase Console → 프로젝트 생성
2. iOS 앱 등록 (`com.findit.battle`) → `GoogleService-Info.plist` 다운
3. Android 앱 등록 (`com.findit.battle`) → `google-services.json` 다운
4. Cloud Messaging → APNs Auth Key 업로드
5. Service accounts → Generate new private key (서버 `firebase-admin` 용)

### 1-8. Android Keystore

```bash
keytool -genkey -v -keystore findit-release.jks \
  -keyalg RSA -keysize 2048 -validity 10000 -alias findit
```

질문에 답:
- 비밀번호 (storePassword + keyPassword 같게 권장)
- 이름 / 조직 / 부서 / 도시 / 도/주 / 국가 코드 (KR)

생성된 `.jks` + 비밀번호:
- 1Password / Codemagic 시크릿 / 안전한 백업 (3중)
- **분실 시 같은 패키지명으로 앱 재출시 불가** — 매우 중요

### 1-9. reCAPTCHA v3 (선택, 권장)

1. https://www.google.com/recaptcha/admin → 사이트 등록
2. **reCAPTCHA v3** 선택
3. Domains: `api.findit.example` + `localhost` (개발)
4. Site key + Secret key 발급
5. 클라: `--dart-define=FINDIT_RECAPTCHA_KEY=<site_key>`
6. 서버: `RECAPTCHA_SECRET=<secret_key>` 환경변수

### 1-10. (선택) Facebook 로그인

1. https://developers.facebook.com → 앱 생성
2. App ID 발급
3. iOS 번들 ID + Android 패키지명 등록
4. 클라: `--dart-define=FINDIT_FB_APP_ID=<app_id>`
5. iOS Info.plist + Android `strings.xml` `facebook_app_id` 메타데이터 추가

[[Game-Design]] §1.3 의 후속 작업.

---

## Phase 2: 앱 등록

### 2-1. App Store Connect — 새 앱

1. https://appstoreconnect.apple.com → My Apps → +
2. **New App** → iOS → 정보 입력:
   - Name: "Findit Battle" (12자 이내, 스토어 검색 키워드)
   - Primary Language: Korean
   - Bundle ID: `com.findit.battle`
   - SKU: `findit-battle-2026` (내부 고유 식별자)
   - User Access: Full Access
3. Create → 앱 생성됨

### 2-2. App Information

- App Information:
  - Subtitle: "틀린그림 찾기 배틀" (30자)
  - Category: **Games > Puzzle**
  - Content Rights: 본인 소유 또는 라이선스
  - Age Rating: 4+ (단순 퍼즐 게임)
- Pricing: 무료 또는 가격 책정
- Privacy: 개인정보처리방침 URL 필수

### 2-3. iOS IAP 등록

App Store Connect → My Apps → Findit → In-App Purchases → +

각 SKU 별로 4번 반복 (`coin_100`, `coin_250`, `coin_500`, `coin_650`):

1. Type: **Consumable**
2. Reference Name: "100 Coins" / "250 Coins" / "500 Coins" / "650 Coins"
3. Product ID: `coin_100` (서버 PRODUCT_CATALOG 와 정확히 일치)
4. Pricing: $0.99 / $1.99 / $3.99 / $4.99
5. Localizations:
   - English: "100 Coins" + "Get 100 coins to use in the game"
   - Korean: "코인 100개" + "게임 내 사용 가능한 코인 100개"
6. Review notes: "Consumable IAP for in-game currency"
7. Save

### 2-4. App Store 메타데이터 (한국어 + 영어)

각 언어별:
- Promotional Text (170자, 자주 변경 가능)
- Description (4000자)
- Keywords (100자, 콤마 구분)
- Support URL
- Marketing URL

샘플 (한국어):
```
Promotional: "두 사람이 동시에 7개 틀린 부위 찾기 — 빠른 사람이 이긴다!"

Description:
2012년 출시된 추억의 틀린그림 찾기 게임이 모바일로 돌아왔습니다.
- 7개 틀린 부위, 40초 안에 찾기
- 친구와 1:1 실시간 대전 (매칭/방 만들기)
- 44개 스킬 트리 + 6 카테고리 아이템
- 이미지마다 광고 PPL — 광고도 게임의 일부

Keywords: 틀린그림찾기,find difference,puzzle,multiplayer,battle,arcade
```

### 2-5. iOS 스크린샷

각 디바이스 사이즈 별:
- **iPhone 6.7"** (예: 1290×2796) — 필수
- **iPhone 6.5"** (1242×2688) — 권장
- **iPhone 5.5"** (1242×2208) — 권장
- **iPad Pro 12.9"** (2048×2732) — 필수 (iPad 지원 시)

각 사이즈 3~10장.

권장 화면:
1. 게임 진행 (HUD + 7 imageCut 영역 발견)
2. 로비 (캐릭터 + 통계)
3. 스킬 트리
4. 결과 화면 (승리)
5. 대기실 (친구 목록)

도구:
- 디바이스 직접 캡처 (Cmd+S 시뮬레이터, 볼륨+전원 실기기)
- Fastlane snapshot 자동화
- AppLaunchpad / Hotpot.ai (디자인 템플릿)

### 2-6. Google Play Console — 새 앱

1. Play Console → All apps → Create app
2. App details:
   - App name: "Findit Battle"
   - Default language: Korean
   - App or game: **Game**
   - Free or paid: Free (IAP 있으면 free 로 등록)
   - Declarations 체크
3. Create

### 2-7. Android IAP 등록

Play Console → 앱 선택 → Monetization → Products → In-app products → Create product

같은 SKU 4번 반복:
- Product ID: `coin_100`
- Name: "100 Coins"
- Description: "100 coins to use in the game"
- Default price: $0.99 (자동 환율 변환)
- Save → Activate

### 2-8. Play Store 등록 정보

Store presence → Main store listing:
- Short description (80자)
- Full description (4000자)
- Graphics:
  - App icon (512×512 PNG)
  - Feature graphic (1024×500 PNG)
  - Phone screenshots (최소 2장, 16:9 또는 9:16)
  - 7" tablet screenshots (선택)
  - 10" tablet screenshots (선택)
- Categorization:
  - Application type: Game
  - Category: Puzzle
- Contact details: Email + (선택) Phone, Website, Privacy policy URL
- Privacy policy: **필수** (개인정보처리방침 URL)
- Content rating: 설문 작성 → 자동 등급

### 2-9. App Content (Play 정책)

- Privacy policy URL
- Ads: 광고 있음 (게임 내 imageCut 광고 + 추후 AdMob)
- App access: 모든 기능 무료 (회원가입 필요는 OK)
- Content rating
- Target audience: 13세 이상
- News apps: No
- COVID-19 contact tracing: No
- Data safety: 데이터 수집/공유 신고 (이메일/닉네임/IAP 영수증 등)
- Government apps: No
- Financial features: No
- Health: No
- Children's policy: 13세 이상이라 No

### 2-10. 13세 이상 / 개인정보 (한국)

- 개인정보처리방침 URL (필수)
- 만 14세 미만 사용자 동의 절차 (한국 정보통신망법) — 추후 가입 흐름 보강 필요
- 청소년 보호 정책

---

## Phase 3: 베타 테스트

### 3-1. Codemagic 자동 빌드 트리거

```bash
git tag v1.0.0
git push origin v1.0.0
```

Codemagic 가 자동:
- `android-release` 워크플로 → AAB → Play Internal Track 업로드
- `ios-release` 워크플로 → IPA → TestFlight 업로드

빌드 시간 ~30~60분.

### 3-2. TestFlight 내부 테스트

1. App Store Connect → Apps → Findit → TestFlight
2. **Internal Testing** → Group → Add testers (이메일)
3. 테스터에게 TestFlight 앱 + 초대 이메일 자동 전송
4. 즉시 배포 (Apple 리뷰 X, 100명까지)

### 3-3. TestFlight 외부 테스트 (선택)

100명 초과 시:
1. **External Testing** → Group → Add Build
2. 첫 build 만 Apple 리뷰 (1~24시간)
3. 승인 후 외부 그룹 (10000명까지)

### 3-4. Play Internal Testing

1. Play Console → Internal testing → Manage release → Edit release
2. App bundle 자동 도착 (Codemagic 가 업로드)
3. Release notes 입력
4. Save → Review release → Start rollout
5. **Testers tab** → Email lists 또는 Google Group 추가
6. 테스터에게 opt-in URL 공유 → Play 에서 Install

### 3-5. 테스트 시나리오

내부 테스터에게 검증 요청:
- [ ] 회원가입 + 로그인 (이메일/Guest)
- [ ] 자동 로그인 (앱 재시작)
- [ ] 매칭 → 게임 1판 완주 (싱글 + 멀티)
- [ ] 코인 구매 (sandbox IAP)
- [ ] 스킬 학습 + 강화
- [ ] 푸시 알림 수신 (친구 초대)
- [ ] 한/영 전환 (시스템 언어)
- [ ] 백그라운드 → resume 시 WS 재연결
- [ ] 약한 네트워크 / 비행기 모드 → 에러 메시지

---

## Phase 4: 정식 출시

### 4-1. App Store 리뷰 제출

1. App Store Connect → Apps → Findit → "+ Version or Platform"
2. Version: 1.0.0
3. What's New: 첫 버전이면 비워도 OK
4. Build: TestFlight 빌드 중 선택
5. Export Compliance: 암호화 사용 안 함 (HTTPS 만 사용)
6. Content Rights: 본인 소유 또는 라이선스
7. Advertising Identifier: AdMob 사용 시 Yes (현재는 No)
8. **Submit for Review**

리뷰 시간: 1~3일. 거절 사유 흔한 것:
- 데모 계정 미제공 (앱 가입 필요 시 → 테스터 이메일/비번 제공 필수)
- 메타데이터 불일치
- 권한 사유 불명확 (Info.plist `*UsageDescription` 문구)
- IAP 가격이 화면에 표시 안 됨

승인 시:
- Manual release: 본인이 클릭해서 publish
- Automatic release: 즉시 App Store 노출
- Phased release: 7일에 걸쳐 단계적 (1%/2%/5%/10%/20%/50%/100%)

### 4-2. Play Production 출시

1. Play Console → Production → Create new release
2. Bundle 추가 (Internal track 의 build 를 promote 또는 새로 업로드)
3. Release notes (한국어 + 영어)
4. Review → Start rollout
5. **Staged rollout**:
   - 1% → 1일 후 모니터링 (crashfree rate 99%+)
   - 5% → 24시간
   - 10% → 24시간
   - 50% → 48시간
   - 100% → 완료

이상 감지 시 (`crashfree < 99%`, 1점 리뷰 급증) → "Halt rollout" 으로 일시 정지.

### 4-3. ASO (App Store Optimization)

- 키워드 분석 (Sensor Tower / App Annie)
- 매주 1회 메타데이터 업데이트 (스크린샷, description, promotional text)
- 사용자 리뷰 답변 (Apple 은 일부 답변 가능, Play 는 모두 가능)

### 4-4. 출시 후 모니터링

매일 확인:
- Crashfree rate (Crashlytics 추가 시)
- 매출 (Play Console / App Store Connect)
- DAU / WAU (어드민 `/admin/analytics/overview`)
- 1점 리뷰 (긴급 핫픽스 필요 신호)

---

## 핫픽스 / 롤백

### 새 빌드 출시 (보통)

1. 핫픽스 브랜치 → 수정 → 빌드 번호 +1 → main merge
2. 태그 `v1.0.1` → 자동 빌드/업로드
3. Apple: "Expedited App Review" 요청 시 4시간 내 가능 (긴급 보안만)
4. Play: 즉시 staged rollout 가능

### Staged rollout 일시 정지 (Play)

심각 버그 발견 시:
- Production track → Halt rollout
- 이전 버전 사용자는 영향 없음, 새 버전 다운로드만 차단

### Phased Release 정지 (Apple)

App Store Connect → 앱 → Phased Release → "Pause Phased Release"

### 강제 업데이트

서버 `/notice.json` 응답에 minVersion 필드 추가 (현재 미구현, 후속):
```json
{
  "noticeHtml": "...",
  "minVersion": "1.0.1"
}
```

클라가 `pubspec.yaml` 의 version 을 minVersion 과 비교 → 미만 시 업데이트 다이얼로그 (스토어 deeplink).

---

## 출시 체크리스트

### 클라
- [ ] `Property.serverDomain` 운영 URL (HTTPS) 로 교체
- [ ] `Property.webSocketUrl` 운영 `wss://` URL
- [ ] `Property.usesCleartextTraffic = false`
- [ ] `network_security_config.xml` 의 dev 도메인 (10.0.2.2 / 192.168.*) 블록 제거
- [ ] iOS Info.plist `NSAllowsLocalNetworking = false`
- [ ] iOS `Runner.entitlements` `aps-environment = production`
- [ ] iOS Info.plist `NSLocalNetworkUsageDescription` 키 통째로 제거
- [ ] `flutter_launcher_icons` 정식 아이콘 PNG 적용 (1024×1024)
- [ ] 정식 캐릭터/스킬 자산 교체 (디자이너 입수)
- [ ] reCAPTCHA v3 사이트 키 발급 + 적용
- [ ] Facebook 앱 등록 + App ID 적용 (1.3 활성화 시)
- [ ] 버전 번호 +1
- [ ] CHANGELOG 갱신

### 서버
- [ ] GCP Cloud Run 프로젝트 생성 + Cloud SQL (MySQL)
- [ ] schema.sql + 4 마이그레이션 적용
- [ ] seed_skills.sql 적재 (test 계정은 미적재)
- [ ] 환경변수 (Secret Manager 권장):
  - `GOOGLE_PLAY_SERVICE_ACCOUNT_JSON`
  - `GOOGLE_PLAY_PACKAGE_NAME=com.findit.battle`
  - `APPLE_SHARED_SECRET`
  - `APPLE_USE_SANDBOX=` (운영은 빈 값 = production 우선)
  - `RECAPTCHA_SECRET`
  - `RECAPTCHA_MIN_SCORE=0.5`
  - `ADMIN_DEFAULT_TOKEN=` (안전한 신규 토큰)
  - `GOOGLE_APPLICATION_CREDENTIALS=/path/to/firebase-admin.json`
- [ ] HTTP + WebSocket 동일 포트 노출
- [ ] HTTPS 인증서 (Cloud Run 자동)
- [ ] 어드민 토큰 회전 (dev 토큰 폐기)

### 스토어
- [ ] iOS 스크린샷 (6.7"/6.5"/5.5" iPhone + 12.9" iPad)
- [ ] Android 스크린샷 (phone + tablet)
- [ ] 한국어/영어 description + keywords
- [ ] 개인정보처리방침 URL
- [ ] 13세 이상 / 광고 / IAP 표기
- [ ] 4 IAP SKU 등록 (Apple + Google)
- [ ] Sandbox tester 발급 (Apple)
- [ ] License tester 등록 (Google)

### CI/CD
- [ ] Codemagic 시크릿 모두 등록
- [ ] keystore Codemagic 업로드
- [ ] App Store Connect API Key 등록
- [ ] 첫 태그 푸시 후 빌드 도착 확인 (Play Internal + TestFlight)

---

## 자주 막히는 부분

### "Expired distribution certificate"
Apple 인증서 1년 만료. Apple Developer → Certificates → 새 발급. Codemagic `ios_signing.distribution_type` 자동 처리.

### "Play upload: Invalid signing"
- `key.properties` 의 storePassword 틀림
- 또는 다른 keystore 로 이전에 업로드한 적 있음 → upload key 재발급 필요 (App Signing in Google Play 활용 시 가능)

### "TestFlight build: Invalid bundle"
- bundle ID 가 App Store Connect 등록과 다름
- Pod install 미실행 (Codemagic 자동, 로컬은 수동)

### "Apple 리뷰 거절: Guideline 5.1.1 - Privacy"
- Info.plist `*UsageDescription` 문구 부족 (왜 권한 필요한지 명확히)
- 개인정보처리방침 URL 없음 / 접근 불가

### "Play 거절: Sensitive permissions"
- 불필요한 권한 (READ_PHONE_STATE 등) 사용
- AndroidManifest 에서 제거

### "Sandbox 결제 안 됨"
- TestFlight: sandbox account 로 디바이스 로그인 필요 (설정 → App Store → Sandbox account)
- Play Internal: License tester 등록 + Internal app sharing URL 로 설치

### "Crashlytics 데이터 안 들어옴"
- Crashlytics 미통합 (현재 후속) — `firebase_crashlytics` 패키지 추가 + `FlutterError.onError` 후킹

---

## 후속 작업

- [ ] **AdMob 통합** — Banner + Interstitial 광고 + ATT 호출
- [ ] **Crashlytics** — 빌드별 crash rate 추적
- [ ] **Firebase Analytics** — 사용자 행동 + funnel
- [ ] **Remote Config** — 게임 밸런스 조정 (앱 업데이트 없이)
- [ ] **A/B 테스트** — 가격 / 캐릭터 / 튜토리얼
- [ ] **앱 강제 업데이트** — minVersion 체크
- [ ] **Push 캠페인** — 휴면 사용자 복귀
