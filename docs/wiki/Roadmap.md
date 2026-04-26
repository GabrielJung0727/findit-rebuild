# Roadmap

## 현재 상태 — 16 영역 모두 코드 레벨 🟢

`docs/04-26.md` 의 16 섹션 전부 완료. 외부 자격 증명 발급/등록만 남음.

| # | 영역 | 코드 | 외부 작업 |
|---:|---|:---:|---|
| 1 | Flutter 부트스트랩 | 🟢 | iOS Pod (macOS 환경에서 1회) |
| 2 | 서버 주소 / 네트워크 보안 | 🟢 | 운영 도메인 + SSL cert |
| 3 | i18n 145 키 | 🟢 | (없음) |
| 4 | REST API | 🟢 | (없음) |
| 5 | 로그인/회원가입/Guest | 🟢 | reCAPTCHA 사이트 키, Facebook App ID |
| 6 | 대기실/대전방 | 🟢 | (없음) |
| 7 | 게임 루프 | 🟢 | 정식 캐릭터/스킬 자산 |
| 8 | 인벤토리/상점/스킬트리 | 🟢 | 정식 자산 |
| 9 | 랭킹/공지/프로필 | 🟢 | (없음) |
| 10 | Apple StoreKit IAP | 🟢 | App Store Connect SKU 등록 |
| 11 | FCM 푸시 | 🟢 | APNs 키, Firebase 콘솔 |
| 12 | WebSocket 마이그레이션 | 🟢 | (인증/heartbeat 후속) |
| 13 | 자산 / 이미지 | 🟢 | 디자이너 정식 에셋 |
| 14 | iOS 특수 사항 | 🟢 | (AdMob 도입 시 ATT 호출) |
| 15 | 빌드 / CI / 출시 | 🟢 | Apple Dev / Google Play 계정 |
| 16 | 분석 / 광고 | 🟢 | AdMob, Crashlytics |

---

## Short-term (1~4주)

운영 출시까지의 path:

### Week 1: 외부 콘솔 1회성 셋업
- [ ] Apple Developer Program 등록 ($99)
- [ ] Bundle ID `com.findit.battle` 등록 + Push + IAP capability
- [ ] APNs Auth Key (.p8) 발급
- [ ] App Store Connect 새 앱 + 4 IAP SKU 등록
- [ ] Google Play Developer 등록 ($25)
- [ ] Play Console 새 앱 + 4 IAP 등록
- [ ] Firebase 프로젝트 + iOS/Android 앱 + APNs 업로드
- [ ] reCAPTCHA v3 사이트 키
- [ ] Android keystore 발급 + Codemagic 시크릿

[[Release-Process#Phase-1]] 참조.

### Week 2: 첫 빌드 / 베타 배포
- [ ] `flutterfire configure` 실행 (Firebase 자동 셋업)
- [ ] 운영 도메인 결정 + SSL cert
- [ ] 운영 환경 dart-define 빌드 매크로
- [ ] `git tag v1.0.0` → Codemagic 자동 빌드
- [ ] TestFlight 내부 테스터 등록 + 검증
- [ ] Play Internal track 테스터 등록 + 검증

### Week 3: 서버 운영 배포
- [ ] GCP Cloud Run 프로젝트 생성
- [ ] Cloud SQL (MySQL 8) 인스턴스
- [ ] schema + 4 마이그레이션 적용
- [ ] 환경변수 (Secret Manager) — Apple/Google/reCAPTCHA/Admin 토큰
- [ ] 어드민 토큰 회전 (dev 폐기, 신규 발급)
- [ ] 도메인 + SSL → Cloud Load Balancer
- [ ] WebSocket upgrade 동작 확인
- [ ] Health check / monitoring (Cloud Monitoring + Slack 알림)

### Week 4: 출시 + 안정화
- [ ] 정식 캐릭터/스킬 자산 입수 + 통합
- [ ] iOS 스크린샷 (3 사이즈 + iPad)
- [ ] Android 스크린샷 (phone + tablet)
- [ ] 스토어 메타데이터 (한/영)
- [ ] 개인정보처리방침 URL
- [ ] App Store + Play Production 출시 (Phased / Staged rollout)
- [ ] 출시 후 24h 모니터링 (crashfree / 1점 리뷰)

---

## Medium-term (1~3개월)

### 게임 운영 / 콘텐츠
- [ ] 정식 콘텐츠 제작 — 스테이지 이미지 100~ 세트 (외주)
- [ ] 광고 PPL 파트너십 + 광고 콘텐츠 통합
- [ ] 주간 / 월간 랭킹 cron (현재는 일일만)
- [ ] 시즌 (3개월) 시스템 — 시즌 종료 시 보상 + 리셋
- [ ] 친구 시스템 강화 — Facebook SDK 통합 + 친구 추가/삭제 (1.3 후속)
- [ ] 친구에게 아이템/코인 선물 (서버 API 신규)

### 화폐 / 경제
- [ ] 보석 (gem) 상점 노출 — 현재는 IAP 만
- [ ] 플럭스 / 고급플럭스 아이템 직접 구매
- [ ] 시즌패스 / 배틀패스 (구독형 IAP)
- [ ] 휴면 사용자 복귀 보상

### 푸시 / 마케팅
- [ ] In-app banner (포그라운드 알림 표시)
- [ ] Topic 구독 (친구/길드)
- [ ] Notification action button (수락/거절 알림에서 직접)
- [ ] 푸시 캠페인 — 휴면 사용자 / 신규 콘텐츠 알림
- [ ] AdMob Banner / Interstitial 광고 + ATT 호출
- [ ] Crashlytics + Firebase Analytics 통합

### 기술 부채
- [ ] WebSocket 인증 토큰 검증 (`?token=<t>` 또는 `|auth|<token>`)
- [ ] WebSocket heartbeat / keepalive
- [ ] Redis 도입 — sessions/waiting/rooms 스케일 아웃
- [ ] 서버 단위 테스트 (mocha/jest)
- [ ] integration_test 패키지 — 실 디바이스 E2E
- [ ] 화면별 Widget Test (현재 1개 → 13 화면)
- [ ] HP 데미지 룰 정의 + 구현 (기획 미정)
- [ ] 레벨업 자동 포인트 지급
- [ ] mutual image id 매칭 (현재 "첫 활성 이미지" 정책)

---

## Long-term (3~12개월)

### 플랫폼 확장
- [ ] **Web 클라** — 같은 Flutter 코드베이스, `flutter run -d chrome`. WebSocket / IAP 일부 차이
- [ ] **Desktop (Windows/macOS)** — Flutter desktop. 키보드 단축키 + 큰 화면 레이아웃
- [ ] **AAB → APK 분할** — Play 가 자동 처리, 다운로드 ~12MB 로 줄이기

### 게임 깊이
- [ ] **5대5 / 7대7 멀티플레이** — 팀전 모드
- [ ] **대회 / 토너먼트** — 시즌 단위
- [ ] **길드 시스템** — 길드원 매칭 + 길드 채팅
- [ ] **사용자 콘텐츠 (UGC)** — 사용자가 틀린그림 만들어서 제출, 검수 후 공개
- [ ] **AI 난이도 5단계** — Easy/Normal/Hard/Expert/Master
- [ ] **캐릭터별 고유 능력치** (기획 미정)
- [ ] **캐릭터 커스터마이징** — 사진기로 얼굴 교체 (현재 image_picker 로컬 미리보기만)
- [ ] **HP 시스템 운영** — 데미지 룰 + 회복 / 부활

### 인프라
- [ ] **CDN** — Cloud Storage + Cloud CDN, 자동 thumbnail 생성
- [ ] **GraphQL** (선택) — 클라가 필요한 필드만 받기
- [ ] **gRPC over WebSocket** — protobuf 페이로드 (텍스트보다 효율)
- [ ] **마이크로서비스 분리** — auth / matchmaking / game / billing 별 서비스
- [ ] **Kubernetes** (대규모 시) — Cloud Run autoscale 한계 도달 시
- [ ] **Multi-region** — 글로벌 출시 시 한국 + 미국 + 유럽

### 보안 / 컴플라이언스
- [ ] **WebSocket 토큰 인증** — 운영 출시 전 필수
- [ ] **rate limiting** — 같은 IP / 같은 user 동시 N 요청 제한
- [ ] **부정 결제 자동 탐지** — 단시간 다중 결제, 같은 디바이스 여러 계정
- [ ] **GDPR / KISA 컴플라이언스** — 데이터 삭제 요청, 만 14세 미만 동의
- [ ] **개인정보 암호화** — 이메일 PBKDF2 hash (사용자별 lookup 가능 형태)
- [ ] **보안 감사 로그** — 어드민 액션 + 비정상 접속

### 분석 / 비즈니스
- [ ] **A/B 테스트** — Firebase Remote Config + 가격 / 캐릭터 / 튜토리얼
- [ ] **funnel 분석** — 가입 → 첫 게임 → 첫 결제 단계별 이탈률
- [ ] **LTV / churn** — 사용자 생애 가치 + 이탈 예측
- [ ] **광고 효율** — UA (User Acquisition) 채널별 ROAS

---

## 영구 후속 (외부 자격 / 시장 변화)

### 출시 후 1년 주기
- [ ] Apple distribution cert 갱신 (1년 만료)
- [ ] APNs Auth Key 회전 (필요 시)
- [ ] Google Play Service Account JSON 회전
- [ ] Apple shared secret 회전
- [ ] reCAPTCHA 키 회전
- [ ] 어드민 토큰 회전

### Apple v2 API 마이그레이션
- [ ] `/verifyReceipt` (legacy) → App Store Server API v2 (JWS)
- [ ] 환경변수 변경 (`APPLE_KEY_ID` / `APPLE_ISSUER_ID` / `APPLE_PRIVATE_KEY`)

### 한국 통신사 IAP (KT/SKT) 정리
- [x] 04-24.md §3 에서 제거 검토 명시
- [ ] 디컴파일 코드의 `InventoryActivity_Olleh.java` / `InventoryActivity_T.java` 제거
- [ ] `AndroidManifest.xml` 의 SmsReceiver / TimerService 제거
- [ ] Google + Samsung + Apple 3트랙으로 단순화

---

## 의도적으로 미지원 영역

### Web 푸시
Firebase Cloud Messaging Web 지원하지만, 현재 모바일 전용 — 추후 웹 클라 출시 시 검토.

### Wear OS / watchOS
게임 화면 특성상 작은 화면 부적합 — 알림만 받는 용도라면 간단히 추가 가능.

### TV / 스마트 디스플레이
입력 방식 (리모컨) 게임 mechanics 와 안 맞음 — 미고려.

### Bluetooth 매칭
근거리 P2P 는 서버 의존 줄이지만 매칭 풀 작아짐 — 미고려.

### 실명인증 / KYC
한국 게임이지만 청소년 보호법은 만 14세 이상 사용 + 본인인증 X (회원가입 시 동의로 충분). KISA 한국게임관리위원회 인증 (성인 인증 필요한 게임은 별도 절차) 은 미고려.

---

## 기여 우선순위 (initial PRs 환영)

가장 작은 단위부터:
1. **문서 오타 / 명확화** — 위키 / docs/ — `docs:` 커밋
2. **테스트 추가** — 빈 구석 채우기 — `test:` 커밋
3. **소형 버그 fix** — Issues 의 `good first issue` 라벨 — `fix:` 커밋
4. **위젯 테스트** — 13 화면 중 미테스트 화면 — `test:` 커밋
5. **린트 정리** — `dart fix --apply` 후 추가 개선 — `style:` 커밋

큰 단위:
1. **AdMob 통합** — `google_mobile_ads` + ATT 호출 — `feat:` 커밋
2. **Crashlytics** — `firebase_crashlytics` 통합 + crash 분류 — `feat:` 커밋
3. **WebSocket 인증** — handlers.js + ws_server.js auth 미들웨어 — `feat:` 커밋
4. **친구 시스템** — Facebook SDK 통합 + 서버 API — `feat:` 커밋
5. **HP 데미지 룰** — 기획 정의 후 GameController + balance.js — `feat:` 커밋

[[Contributing]] 참조.
