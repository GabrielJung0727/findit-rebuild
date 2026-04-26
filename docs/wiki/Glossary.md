# Glossary

게임 / 프로젝트 용어 정리. 한국어 게임 용어 + 프로젝트 약어.

## 게임 용어

| 용어 | 한글/원어 | 의미 |
|---|---|---|
| 틀린그림 찾기 | "find the difference" | 한 이미지의 변경된 부위를 찾는 게임 (이 프로젝트 장르) |
| 대기실 (waitingroom) | Lobby | 매칭 대기 화면 — 다른 유저 목록 + 방 만들기 |
| 대전방 (battle room) | Battle room | 매칭된 후 게임 시작 전 화면 — 캐릭터 + 스킬덱 선택 + 준비 토글 |
| 게임룸 (game room) | Game screen | 실제 게임 진행 화면 — 7개 틀린부위 찾기 |
| 콤보 | Combo | 연속 정답 시 누적 — 점수/시간 보너스 |
| 스킬덱 | Skill deck | 8개 풀에서 한 게임에 사용할 5개 선택 |
| 강화 | Item upgrade | 아이템 0~9 단계 확률 강화 |
| 플럭스 | Flux | 강화 성공률 보정 아이템 (`+5%` / 고급 `+10%`) |
| 인벤토리 | Inventory | 보유 아이템 목록 (3~30칸 확장) |
| HP | Health Points | 체력 — 1Lv=110, 100Lv=5000 |
| 게이지 / 보석 | Gem | 유료 결제 화폐 (현재는 IAP 보상으로만 지급) |
| 코인 | Coin | 게임 내 화폐 — 광고 보상 / IAP 로 획득 |
| 포인트 / 스킬 포인트 | Skill Point | 스킬 학습용 — 레벨업 시 +1 자동 지급 (TBD) |
| 등급 | Grade | A~J (10레벨 단위) |

---

## 7 가지 틀린부위 카테고리 (시각 효과)

| 한글 | 영문 | 효과 |
|---|---|---|
| 강아지발자국 | Puppy's footprint | 화면에 강아지 발자국 |
| 고양이발톱 | Cat's claw | 화면에 발톱 자국 |
| 폭발 | Explosion | 폭발물 터짐 |
| 불꽃 | Flame | 도깨비 불꽃 |
| 눈꽃 | Snowflake | 눈 결정 |
| 강력폭발 / 강력불꽃 / 강력눈꽃 | Powerful * | 위 3종 강화 버전 |

---

## 6 아이템 카테고리

| 한글 | 영문 | typeNo 범위 | 효과 |
|---|---|---:|---|
| 펜 | PEN | 38~40 | 자기 스킬 시간 증가 |
| 반지 | RING | 41~42 | 상대 스킬 시간 감소 |
| 베리 | BERRY | 43~48 | 일회성 공격 |
| 포션 | POTION | 49~54 | 방어 효과 |
| 골드 | GOLD | 55~58 | 코인팩 IAP |
| 기타 | ETC | 0~2 | 스킬덱 확장 슬롯 |

---

## 화폐

| 약어 | 한글 | 획득 | 사용 |
|---|---|---|---|
| coin | 코인 | 광고 / IAP / 게임 종료 보상 | 아이템 구매 / 강화 / 확장 |
| point | 포인트 | 레벨업 (TBD) / 시드 2개 | 스킬 학습 |
| gem | 보석 | IAP (gem 팩 — 미노출) | (현재 사용처 X — UI 노출 후속) |
| score | 점수 | 게임 종료 시 적립 | 레벨업 임계값 |

---

## 결과 코드

| 코드 | 영문 상수 | 의미 |
|---|---|---|
| `'000'` | RESULT_PASS | 성공 |
| `'101'` | RESULT_NOID | ID 없음 / 검증 실패 |
| `'102'` | RESULT_NOPASSWORD | 비밀번호 틀림 |
| `'103'` | RESULT_ALREADYJOINED | 이미 가입됨 / 학습됨 |
| `'900'` | FAIL_ALREADYEXIT | 방 이탈됨 (WS) |
| `'911'` | FAIL_ALREADYGAME | 이미 게임 중 (WS) |
| `'999'` | (general error) | 서버 오류 / 검증 실패 |

---

## 소켓 코드

| 코드 | 이름 | 영문 | 방향 |
|---:|---|---|---|
| 100 | USERLIST | 유저 목록 | C↔S |
| 101 | CREATEBATTLEROOM | 방 생성 | C→S |
| 102 | EXITBATTLEROOM | 방 나가기 | C↔S |
| 103 | ENTERBATTLEROOM | 방 입장 | C↔S |
| 104 | READY | 준비 | C↔S |
| 106 | GAME | 게임 액션 | C↔S |
| 107 | INVITE | 초대 | C↔S |

[[WebSocket-Protocol]] 상세.

---

## 5 스킬 계열

| 코드 | 한글 | 표현 | tier |
|---|---|---|---|
| `cat` | 고양이발톱 | 🐱 | 1~9 |
| `dog` | 강아지발자국 | 🐶 | 1~5 |
| `exp` | 폭발 | 💥 | 1~5 (+ 강화 1~5) |
| `flame` | 불꽃 | 🔥 | 1~5 (+ 강화 1~5) |
| `snow` | 눈꽃 | ❄ | 1~5 (+ 강화 1~5) |

총 44개 — [[Game-Design#스킬-시스템--44개-스킬-트리]].

---

## 3 인증 타입 (`auth_type`)

| 값 | 의미 | user_id 형식 |
|---|---|---|
| `email` | 이메일 가입 | `<email>` (e.g. `test@findit.com`) |
| `guest` | 비회원 입장 | `guest_<랜덤12>` 또는 `guest_dev_<deviceId>` |
| `facebook` | Facebook 로그인 | `fb_<fbUserId>` |

---

## 4 IAP store

| 값 | 스토어 |
|---|---|
| `google` | Google Play Billing |
| `apple` | Apple App Store StoreKit |
| `samsung` | Samsung Galaxy Store IAP |
| `olleh` | KT Olleh (서비스 종료, 제거 대상) |
| `tstore` | SKT T Store / ONE store (서비스 종료, 제거 대상) |

---

## 프로젝트 약어

| 약어 | 풀어서 |
|---|---|
| FCM | Firebase Cloud Messaging |
| APNs | Apple Push Notification service |
| ATS | App Transport Security (iOS) |
| ATT | App Tracking Transparency (iOS 14.5+) |
| AGP | Android Gradle Plugin |
| AAB | Android App Bundle (`.aab` — Play 업로드 형식) |
| APK | Android Package (`.apk` — 직접 설치) |
| IPA | iOS App Archive (`.ipa` — TestFlight 업로드) |
| IAP | In-App Purchase |
| RTDN | Real-time Developer Notifications (Google Play 환불 webhook) |
| JWS | JSON Web Signature (Apple v2 IAP) |
| SoT | Source of Truth (진실 자료) |
| BC | Backwards Compatibility (호환성) |
| TBD | To Be Determined / Decided |
| MVP | Minimum Viable Product |
| KYC | Know Your Customer (실명 인증) |
| LP | Landing Page (광고 클릭 후 도착 페이지) |
| LTV | Lifetime Value (사용자 생애 가치) |
| ROAS | Return on Ad Spend (광고 효율) |
| UA | User Acquisition (사용자 유치) |

---

## Flutter / Dart 용어

| 용어 | 의미 |
|---|---|
| Widget | UI 빌딩 블록 (StatelessWidget / StatefulWidget / ConsumerWidget) |
| State | StatefulWidget 의 상태 클래스 |
| Provider | Riverpod 의 의존성 주입 단위 |
| Notifier | StateNotifier — 상태 변경 액션 보유 |
| ref | Riverpod 의 Provider 접근자 |
| BuildContext | 위젯 트리 위치 정보 |
| pubspec.yaml | Dart/Flutter 의 package.json |
| dart pub get | npm install 같은 의존성 설치 |
| flutter analyze | 정적 분석 (린트) |
| flutter gen-l10n | ARB → dart 코드 생성 |
| dart-define | 빌드 시 환경변수 주입 |
| Hot reload (`r`) | 코드 변경 즉시 반영 (상태 유지) |
| Hot restart (`R`) | 앱 재시작 (상태 초기화) |

---

## Node.js / Express 용어

| 용어 | 의미 |
|---|---|
| middleware | 요청 처리 체인 함수 (`(req, res, next) => {}`) |
| router | URL 패턴별 핸들러 그룹 |
| `req.query` | URL ?param=value |
| `req.body` | JSON / form-data 본문 |
| `next(err)` | 다음 에러 핸들러로 전달 |
| `optionalDependency` | 미설치 시 stub 으로 fallback (firebase-admin, googleapis, ws) |

---

## DB 용어

| 용어 | 의미 |
|---|---|
| InnoDB | MySQL 의 트랜잭션 지원 엔진 |
| FOR UPDATE | 트랜잭션 행 잠금 (동시성 제어) |
| ON DUPLICATE KEY UPDATE | UNIQUE 충돌 시 UPDATE (upsert 패턴) |
| `RANK() OVER` | window function — 순위 계산 |
| `JSON` 컬럼 | MySQL 8 의 JSON 타입 (event_log.payload) |
| utf8mb4 | UTF-8 4바이트까지 (이모지 포함) |

---

## CI/CD 용어

| 용어 | 의미 |
|---|---|
| Codemagic | Flutter 전용 CI/CD 서비스 (macOS 러너 포함) |
| GitHub Actions | GitHub 의 CI/CD (ubuntu/windows/macOS 러너) |
| TestFlight | Apple 의 베타 테스트 플랫폼 (100명 즉시, 10000명 외부) |
| Internal Track | Google Play 의 내부 테스트 (즉시) |
| Closed Track | Play 의 비공개 베타 |
| Production Track | Play 의 정식 출시 |
| Phased Release | Apple 의 7일 단계적 출시 (1%/2%/5%/10%/20%/50%/100%) |
| Staged Rollout | Play 의 단계적 출시 (수동 비율 조정) |
| Sandbox tester | Apple IAP 테스트용 가상 계정 |
| License tester | Google Play IAP 테스트 (실 결제 무효) |
| Apple Distribution Certificate | iOS 앱 서명 인증서 |
| Provisioning Profile | iOS 빌드 시 디바이스 / 자격 매핑 |
| Keystore | Android 앱 서명 키 (`.jks`) |
| App Bundle Signing (Play) | Play Console 이 키 관리 (App Signing in Google Play) |

---

## 원본 코드 변수 (jadx 휴리스틱)

| 디컴파일 변수 | 추정 의미 |
|---|---|
| `r0`, `r5`, `r13` | 임시 변수 (의미 X) |
| `mTimeCount` | 시간 카운터 (애니메이션 frame ?) |
| `mLeftCombo` / `mRightCombo` | 자기 / 상대 콤보 |
| `mLeftReady` / `mRightReady` | 자기 / 상대 준비 상태 |
| `mFindNum` | 본인 발견 갯수 |
| `mLeftScore` / `mRightScore` | 자기 / 상대 점수 |
| `mEmail` | userId (이메일) |
| `mAutoLogin` | 자동 로그인 플래그 |
| `mRoomName` | 방 이름 |

[[Decompiled-Reference]] 참조.

---

## 한국 게임 운영 용어

| 한글 | 영문 |
|---|---|
| 점검 | Maintenance |
| 패치 | Patch / Update |
| 핫픽스 | Hotfix |
| 이벤트 | Event |
| 보상 | Reward |
| 레벨업 | Level up |
| 만렙 | Max level (100Lv) |
| 입장 | Enter (대기실/배틀룸) |
| 퇴장 | Exit / Leave |
| 매칭 | Matchmaking |
| 대전 | Battle / PvP |
| AI 대전 | Single play vs AI |
| 친구 | Friend |
| 초대 | Invite |
| 수락 | Accept |
| 거절 | Decline / Refuse |
| 광고 시청 | Ad view |
| 일일 한도 | Daily cap (광고 보상 24h 20회) |
| 충전 | (코인 결제) Recharge / Top-up |

---

## 정책 약어

| 약어 | 풀어서 |
|---|---|
| GDPR | General Data Protection Regulation (EU 개인정보) |
| CCPA | California Consumer Privacy Act (캘리포니아 개인정보) |
| KISA | 한국인터넷진흥원 |
| 정보통신망법 | 한국 통신/IT 법 |
| 청소년 보호법 | 한국 14세 미만 보호 |

---

## 패키지 / 도구

| 이름 | 용도 |
|---|---|
| Flutter SDK | Dart UI 프레임워크 |
| Riverpod | 상태 관리 |
| go_router | 라우팅 |
| Dio | HTTP 클라 |
| `web_socket_channel` | WebSocket |
| `flutter_secure_storage` | iOS Keychain / Android Keystore |
| `cached_network_image` | 이미지 다운로드 캐시 |
| `firebase_messaging` | FCM 푸시 |
| `in_app_purchase` | IAP (Google + Apple) |
| `flutter_html` | HTML 렌더 (notice 화면) |
| `image_picker` | 카메라 / 앨범 (프로필 사진) |
| `http_mock_adapter` | Dio mock (테스트) |
| `flutterfire_cli` | Firebase 자동 셋업 |
| `keytool` | JDK 의 keystore 발급 도구 |
| `jadx` | Java/Android 디컴파일러 |
| `apktool` | APK 리소스 디컴파일러 |
| `gsutil` | Google Cloud Storage CLI |
| `gcloud` | Google Cloud Platform CLI |

---

## 참고 자료

- [Flutter 공식 docs](https://flutter.dev)
- [Dart language tour](https://dart.dev/language)
- [Riverpod docs](https://riverpod.dev)
- [Firebase docs](https://firebase.google.com/docs)
- [Apple App Store Server API](https://developer.apple.com/documentation/appstoreserverapi)
- [Google Play Developer API](https://developers.google.com/android-publisher/api-ref/rest)
- [Conventional Commits](https://www.conventionalcommits.org/)
- [Semantic Versioning](https://semver.org/)
