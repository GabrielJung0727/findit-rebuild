# Project Structure

저장소 전체 디렉터리 구조와 각 파일의 역할.

```
findit-rebuild/
├── README.md                    # 프로젝트 한 줄 소개 + 16 영역 진행 표
├── codemagic.yaml               # iOS+Android 자동 빌드/출시 (Codemagic)
├── .github/
│   └── workflows/
│       └── ci.yml               # PR/main analyze + test + APK + 서버 smoke
├── .gitignore
├── docs/                        # 모든 문서 (기획 + 체크리스트 + wiki)
├── client_flutter/              # 정식 Flutter 클라 (iOS + Android)
├── server/                      # Node.js + Express + MySQL 서버
├── android_project/             # 디컴파일된 안드 원본 — reference 만
├── decoded_apk/                 # apktool 디컴파일 결과
├── jadx_output/                 # jadx 디컴파일 결과
├── game.apk                     # 원본 APK 파일
└── game.apk.jadx                # jadx 프로젝트 파일
```

---

## client_flutter/ — Flutter 클라

```
client_flutter/
├── pubspec.yaml                 # 의존성 + assets + flutter_launcher_icons
├── pubspec.lock                 # 잠긴 버전
├── analysis_options.yaml        # 린트 룰 (strict-casts 등)
├── l10n.yaml                    # gen-l10n 설정
├── README.md                    # (Flutter create 기본)
│
├── lib/                         # ★ Dart 소스 — 정식 코드
├── test/                        # 106 unit/widget tests
├── tools/
│   └── strings_xml_to_arb.js    # 안드 strings.xml → ARB 변환기
├── assets/
│   └── images/
│       ├── items/               # 23 PNG (안드 drawable 추출)
│       ├── characters/          # 3 PNG (캐릭터 헤드)
│       └── ui/                  # 3 PNG (코인/버튼)
│
├── android/                     # 안드 빌드 설정
│   ├── settings.gradle          # AGP/Kotlin 버전
│   ├── build.gradle             # 프로젝트 레벨
│   ├── gradle.properties
│   ├── gradle/wrapper/gradle-wrapper.properties
│   ├── key.properties.example   # 릴리스 서명 템플릿
│   └── app/
│       ├── build.gradle         # compileSdk 36 / minSdk 21 / 조건부 서명
│       └── src/main/
│           ├── AndroidManifest.xml      # INTERNET + portrait + networkSecurityConfig
│           ├── kotlin/com/findit/battle/MainActivity.kt
│           └── res/
│               ├── xml/network_security_config.xml  # 평문 HTTP 예외 도메인
│               ├── values/styles.xml
│               └── ...
│
├── ios/                         # iOS 빌드 설정 (macOS 에서만 빌드 가능)
│   ├── Podfile                  # CocoaPods
│   └── Runner/
│       ├── Info.plist           # ATS + UIBackgroundModes + 권한 문구
│       ├── Runner.entitlements  # aps-environment (push)
│       └── AppDelegate.swift
│
└── build/                       # 빌드 산출물 (gitignored)
    └── app/outputs/flutter-apk/app-debug.apk
```

### lib/api/ — REST/WS/IAP/Push 래퍼 (10 모듈)

| 파일 | 역할 |
|---|---|
| `api_client.dart` | Dio 단일 인스턴스 + Bearer 토큰 인터셉터 + 401 콜백 + `unwrapResult` 헬퍼 + `ApiResultException` |
| `member_api.dart` | 인증 (join/login/guest/facebook/logout/checkUserId) + 지갑 (addCoin/spendCoin/spendGem/addGem) |
| `shop_api.dart` | 구매/사용/학습/강화/확장 (buyItemAndSpendCoin/spendMyItem/learnSkill/upgradeItem/expandInventory/expandSkillDeck) |
| `catalog_api.dart` | 정적 메타 (skillCatalog/levelTable) |
| `content_api.dart` | 스테이지/광고 이미지 + 공지 HTML (newImageList/newAdImageList/noticeHtml) |
| `game_api.dart` | 결과 집계 + 랭킹 + 내역 (mutiAddUp/rankList/rankListFriends/rankListTop/itemPurchaseHistList) |
| `analytics_api.dart` | 이벤트 + 광고 (event/adClick/adReward/hitViewCount) |
| `analytics_helper.dart` | 도메인 이벤트 헬퍼 (loginSuccess/gameStart/gameEnd/purchaseItem/purchaseIap/skillLearn/itemUpgrade/...) |
| `iap_api.dart` | `verifyIap.json` wrapper |
| `iap_service.dart` | `in_app_purchase` 패키지 통합 (init/loadProducts/buy + purchaseStream → verifyIap) |
| `push_api.dart` | `registerFcmToken.json` wrapper |
| `push_service.dart` | FirebaseMessaging 통합 (init + 토큰 등록 + 3가지 상태 메시지 핸들러 + `PushEvent` broadcast) |
| `ws_client.dart` | WebSocketChannel + 지수 backoff 재연결 + AppLifecycle + `WsFrame` 파싱 |

### lib/game/ — 게임 루프

| 파일 | 역할 |
|---|---|
| `image_set.dart` | `ImageCut(x,y,w,h)` + `ImageSet` + `parseImageCutJson()` |
| `game_state.dart` | `PlayerState` + `GameState` + `GameResult` + `GameEndReason` enum |
| `game_controller.dart` | `StateNotifier<GameState>` + `Timer.periodic(16ms)` + AI 자동 발견 + WS 106 송수신 |
| `game_painter.dart` | `CustomPainter` — 원본 PNG letterbox + 발견 영역 + 글로우 + 오답 X |
| `game_view.dart` | `cached_network_image` 디코드 + 픽셀 좌표 변환 + 햅틱 |
| `item_catalog.dart` | `Items.java` 1:1 (PEN 3 + RING 2 + BERRY 6 + POTION 5 + GOLD 4 + ETC 3) |

### lib/screens/ — 13 화면

| 파일 | 라우트 |
|---|---|
| `login_screen.dart` | `/login` |
| `join_screen.dart` | `/join` — 회원가입 + 캐릭터 picker + 중복 확인 |
| `guest_screen.dart` | `/guest` |
| `login_messages.dart` | (helper) result code → 메시지 매퍼 |
| `lobby_screen.dart` | `/lobby` — 로그인 후 랜딩 |
| `waiting_room_screen.dart` | `/waiting` — 유저 목록 + 초대 |
| `battle_room_screen.dart` | `/battle` — 캐릭터 매칭 + 5/8 스킬덱 |
| `game_screen.dart` | `/game` — HUD + GameView |
| `result_screen.dart` | `/result` — 승/패 + 보상 |
| `inventory_screen.dart` | `/inventory` — 6 카테고리 탭 |
| `shop_screen.dart` | `/shop` — 일반 5 + COIN IAP |
| `skill_tree_screen.dart` | `/skills` — 5계열 × 9 tier |
| `rank_screen.dart` | `/rank` — 전체/친구 |
| `notice_screen.dart` | `/notice` — flutter_html |
| `profile_screen.dart` | `/profile` — 캐릭터 + image_picker |

### lib/state/ — Riverpod

| 파일 | 역할 |
|---|---|
| `auth.dart` | `AuthState` + `AuthController` (login/guest/logout/refresh + applyXxx 액션) |
| `lobby.dart` | `LobbyState` + `LobbyController` (WS 7 코드 라우팅 + 5/8 스킬덱) |
| `providers.dart` | 14 Provider (apiClient/8 wrapper/iapService/pushService/wsClient/analytics) |

### lib/util/

| 파일 | 역할 |
|---|---|
| `property.dart` | 서버 URL + dart-define 오버라이드 + 외부 서비스 ID |
| `constants.dart` | `GameConstants` (40s, 7 cuts, AI 공식, combo) + `EconomyConstants` + `SocketCode` |
| `validation.dart` | 이메일/비번/닉/캐릭터 (서버 `validation.js` 1:1) |
| `asset_paths.dart` | `Items.java` typeNo → assets/images/items/* 매핑 |

### lib/l10n/

| 파일 | 역할 |
|---|---|
| `app_en.arb` | 영문 145키 |
| `app_ko.arb` | 한글 145키 |
| `app_localizations.dart` | (자동 생성) Locale dispatcher |
| `app_localizations_en.dart` | (자동 생성) 영문 145 getter |
| `app_localizations_ko.dart` | (자동 생성) 한글 145 getter |

### test/

```
test/
├── api/
│   ├── _helper.dart                # TestApi (in-memory storage + UrlRequestMatcher)
│   ├── member_api_test.dart        # 7 tests
│   ├── shop_api_test.dart          # 6 tests
│   ├── catalog_api_test.dart       # 2
│   ├── content_api_test.dart       # 3
│   ├── game_api_test.dart          # 5
│   ├── analytics_api_test.dart     # 4
│   ├── iap_api_test.dart           # 2
│   ├── push_api_test.dart          # 1
│   ├── ws_client_test.dart         # 4
│   ├── iap_service_test.dart       # 3
│   ├── push_service_test.dart      # 2
│   └── analytics_helper_test.dart  # 4
├── state/
│   ├── auth_test.dart              # 6
│   ├── auth_deltas_test.dart       # 6
│   └── lobby_test.dart             # 6
├── game/
│   ├── image_set_test.dart         # 9
│   ├── game_controller_test.dart   # 5
│   └── item_catalog_test.dart      # 16
├── util/
│   ├── validation_test.dart        # 12
│   └── constants_test.dart         # 5
└── widget_test.dart                # 1 — FinditApp builds
```

[[Testing]] 참조.

---

## server/ — Node.js 서버

```
server/
├── package.json
├── docker-compose.yml           # MySQL 8 컨테이너
├── README.md                    # 서버 단독 README
├── .env.example
│
├── src/
│   ├── index.js                 # ★ 진입점 — Express + WS + TCP + DB 연결
│   ├── db.js                    # mysql2 풀 + query/tx/ping
│   │
│   ├── routes/
│   │   ├── member.js            # /app/member/*.json (15+ endpoints)
│   │   ├── skills.js            # skillCatalog + levelTable + learnSkill
│   │   ├── economy.js           # spendGem + addGem + upgradeItem + expandInventory + expandSkillDeck
│   │   ├── iap.js               # verifyIap (Google + Samsung + Apple)
│   │   ├── ranks.js             # rankListFriends + rankListTop
│   │   ├── ads.js               # adReward + adClick
│   │   ├── analytics.js         # publicRouter (event) + adminRouter (overview/dau/revenue/events)
│   │   ├── fcm.js               # publicRouter (registerFcmToken) + adminRouter (push)
│   │   └── admin.js             # 어드민 CRUD + 토큰 미들웨어
│   │
│   ├── socket/
│   │   ├── handlers.js          # ★ TCP/WS 공유 핸들러 + sessions/waiting/rooms
│   │   ├── server.js            # TCP 어댑터 (4자리 길이 prefix 프레임)
│   │   └── ws_server.js         # WebSocket 어댑터 (ws lib)
│   │
│   └── util/
│       ├── balance.js           # ★ 게임 룰 상수 (LEVEL_SCORE/ABILITY/UPGRADE_RATES/...)
│       ├── codes.js             # RESULT_PASS = '000', NOID = '101', ...
│       ├── validation.js        # 이메일/비번/닉/캐릭터
│       ├── session.js           # opaque 토큰 발급
│       ├── recaptcha.js         # reCAPTCHA v3 미들웨어
│       ├── iap.js               # ★ verifyGoogle + verifySamsung + verifyApple + verifyAndRecord
│       ├── fcm.js               # Firebase Admin SDK wrapper
│       └── protocol.js          # 4자리 길이 prefix 프레임 인코더 (TCP만)
│
├── sql/
│   ├── schema.sql               # ★ 8 tables 베이스
│   ├── seed.sql                 # 테스트 계정 3 + 시드 이미지
│   ├── seed_skills.sql          # 44 스킬 카탈로그
│   └── migrations/
│       ├── 001_skills_and_expansion.sql
│       ├── 002_priority2.sql
│       ├── 003_image_ad_caption.sql
│       └── 004_iap_apple.sql
│
├── public/
│   └── admin.html               # 어드민 대시보드 단일 페이지 SPA
│
└── scripts/
    ├── db-init.js               # 스키마 + 마이그레이션 + 시드 일괄 적용
    ├── db-seed.js               # 시드만 재적용
    └── validate-image-set.js    # 콘텐츠 검증기 (8 PNG + manifest)
```

### sql/ 마이그레이션 순서

| 파일 | 추가 |
|---|---|
| `schema.sql` | 8 base tables (members, wallets, inventories, skills, rankings, notices, images, ad_images, iap_receipts, login_logs) |
| `001_skills_and_expansion.sql` | `skill_catalog`, `item_upgrade_log`, `admin_tokens`, `ad_reward_log` + `wallets.inventory_size`/`skill_deck_count` |
| `002_priority2.sql` | `event_log`, `ad_click_log` + `members.fcm_token`/`last_active_at` + `ad_images.click_count` + `iap_receipts.purchase_token` UNIQUE |
| `003_image_ad_caption.sql` | `images.ad_caption` |
| `004_iap_apple.sql` | `iap_receipts.store` enum 에 `'apple'` 추가 |

[[Database-Schema]] 참조.

---

## docs/ — 문서

```
docs/
├── 04-24.md                     # 1·2 순위 (서버 + 게임 룰) 체크리스트
├── 04-26.md                     # iOS+Android Flutter 도입 16 섹션
├── CONTENT_PRODUCTION_GUIDE.md  # 외주 디자이너용 콘텐츠 가이드
├── RELEASE.md                   # 출시 절차 + 시크릿 매트릭스
├── 번역할 한국어.txt              # 원본 i18n 키 135줄
│
├── findit_thebattle_contents_guide_20120704/
│   ├── findit_thebattle_contents_guide_20120621.pdf  # 콘텐츠 가이드 PDF
│   └── contents/
│       ├── findit_틀린그림가이드_20120704.xls         # 좌표 시트
│       ├── market001.psd                              # 샘플 PSD
│       └── png/
│           ├── market001.png + market001_1~7.png      # 샘플 8 PNG 세트
│           └── market001.manifest.json                # 검증기 입력 샘플
│
├── (기획서 xlsx/docx 8종)
│   ├── 작업 우선순위 v.0.5.docx
│   ├── 용어정리.docx
│   ├── findit_item,skill,shop_20130702.xlsx
│   ├── findit_shop_items_20121220.xlsx
│   ├── 레벨별 첨수체계_기본능력치_02.xlsx
│   ├── AI_틀린부위 찾는 시간공식_01.xlsx
│   └── 스킬트리_04.xlsx
│
└── wiki/                        # GitHub Wiki 페이지 소스
    ├── Home.md
    ├── _Sidebar.md
    ├── _Footer.md
    └── (+ 18 페이지)
```

---

## android_project/ — 디컴파일 원본

> ⚠ **reference 만**. 정식 클라는 `client_flutter/`. 변수명이 jadx 휴리스틱 치환 (`r0`, `r5`, `mTimeCount` 등) 으로 가독성 떨어짐.

```
android_project/
├── app/
│   ├── build.gradle
│   ├── AndroidManifest.xml
│   └── src/main/
│       ├── java/com/findit/battle/
│       │   ├── GameActivity.java
│       │   ├── GameView.java         # ★ 3870줄 — 게임 루프 진실 자료
│       │   ├── Objects.java          # 8 스킬 + 캐릭터
│       │   ├── Items.java            # ★ 6 카테고리 가격/효과 (포팅 완료)
│       │   ├── WaitingRoom.java      # 415줄 — 대기실 UI
│       │   ├── JoinActivity.java     # 508줄 — 회원가입
│       │   ├── DBAdapter.java        # SQLite (이제 서버로)
│       │   ├── Property.java         # 서버 URL (10.0.2.2 로 교체됨)
│       │   ├── InventoryActivity_Google.java
│       │   ├── InventoryActivity_SAMSUNG.java
│       │   ├── InventoryActivity_Olleh.java   # KT 서비스 종료, 제거 대상
│       │   ├── InventoryActivity_T.java       # SKT T-Store 서비스 종료, 제거 대상
│       │   └── (기타)
│       └── res/
│           ├── values/strings.xml
│           ├── values-ko/strings.xml
│           ├── drawable-hdpi-v4/   # 481 PNG
│           └── xml/network_security_config.xml
└── build.gradle
```

[[Decompiled-Reference]] 에서 활용법.

---

## 파일 카운트 요약

| 영역 | 파일 수 |
|---|---:|
| Flutter 클라 (`lib/`) | ~50 |
| Flutter 테스트 | ~20 |
| 서버 (`src/`) | ~25 |
| SQL (스키마 + 마이그) | 8 |
| 문서 (`docs/`) | ~30 |
| Wiki | 22 |
| CI/Config | 5 |
| 디컴파일 (`android_project/`) | ~80 (변경 없이 reference) |

---

## 깃 무시 항목 (`.gitignore`)

- `client_flutter/.dart_tool/`
- `client_flutter/build/`
- `client_flutter/ios/Pods/`
- `client_flutter/android/.gradle/`
- `client_flutter/android/key.properties` ★
- `client_flutter/android/**/*.jks` ★
- `client_flutter/ios/Runner/GoogleService-Info.plist` ★
- `client_flutter/android/app/google-services.json` ★
- `server/node_modules/`
- `server/.env` ★

★ 표시는 시크릿 — 절대 commit 금지.
