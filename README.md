<div align="center">

# FindIt: Rebuild

**틀린그림 찾기 배틀** — 2012-2013 안드로이드 원작을 iOS+Android 단일 코드베이스로 재구축

[![Flutter](https://img.shields.io/badge/Flutter-3.27-02569B?logo=flutter)](https://flutter.dev)
[![Node](https://img.shields.io/badge/Node-20-339933?logo=nodedotjs)](https://nodejs.org)
[![MySQL](https://img.shields.io/badge/MySQL-8-4479A1?logo=mysql)](https://www.mysql.com)
[![iOS](https://img.shields.io/badge/iOS-14%2B-000000?logo=apple)](https://developer.apple.com)
[![Android](https://img.shields.io/badge/Android-21%2B-3DDC84?logo=android)](https://developer.android.com)
[![Tests](https://img.shields.io/badge/tests-106%20passing-brightgreen)](docs/04-26.md)

</div>

---

## 한 줄

원본 APK (`14.63.220.39:22131` 서버 종료, 2014~) 를 디컴파일·역공학·재기획해서 **Flutter 단일 코드베이스 + Node.js 서버 + WebSocket 매칭** 으로 부활시키는 프로젝트. 2013년 기획서 / 게임 공식 / Korean i18n 모두 보존.

## 무엇을 다시 만들었나

| 영역 | 원본 (2012-2013) | 재구축본 |
|---|---|---|
| **클라이언트** | Android Java (`GameView.java` 3870줄 단일 파일) | Flutter / Dart, 13 화면 + Riverpod 상태관리 |
| **서버** | 자체 구축 (서비스 종료) | Node.js + Express + MySQL + WebSocket + TCP (호환성용) |
| **매칭** | raw TCP `:22131` (4자리 길이 prefix 프레임) | WebSocket `/ws` (코드 100~107 그대로) + TCP 병행 |
| **i18n** | `strings.xml` 영문만 | `app_en.arb` + `app_ko.arb` 양방향 145키 |
| **결제** | KT/SKT/Samsung/Google | Apple App Store + Google Play + Samsung (3트랙, 한국 통신사 제거) |
| **인증** | bcrypt 자체 | bcrypt + opaque session token + reCAPTCHA + Facebook 슬롯 |
| **AI 시간 공식** | `7 - level × 0.03` 초 | **그대로 보존** (서버 `balance.js` + 클라 `GameConstants`) |
| **콤보 보너스** | 1/2/3/4+ → 100/200/400/700점 + 1/2/4/7초 | **그대로 보존** |
| **점수 공식** | 승자 `findNum×50 + 100 + combo` | **그대로 보존** |
| **틀린부위 갯수** | 한 이미지당 7개 | `FINDRECT_TOTALNUM = 7` 동일 |
| **게임 시간** | 40초 | `GAMETIME = 40` 동일 |

## 아키텍처

```
┌──────────────────────┐  ┌──────────────────────┐
│  iOS App (Flutter)   │  │  Android App (Flutter)│
└──────────┬───────────┘  └──────────┬───────────┘
           │   HTTPS REST + WSS       │
           └────────────┬─────────────┘
                        │
                ┌───────▼────────┐
                │  Node.js       │
                │  Express       │
                │  + ws (WebSocket gateway)
                │  + TCP fallback (legacy APK)
                └───┬─────────┬──┘
                    │         │
            ┌───────▼──┐   ┌──▼─────────┐
            │  MySQL   │   │  외부 API  │
            │  8 tables│   │  - Google Play
            │  + 4 mig │   │  - Apple StoreKit
            └──────────┘   │  - FCM (Firebase)
                           │  - reCAPTCHA
                           └─────────────┘
```

## 기술 스택

| Layer | 채택 | 이유 |
|---|---|---|
| 클라이언트 프레임워크 | **Flutter 3.27** | iOS+Android 단일 코드베이스. 디컴파일 Java 정리 + 네이티브 2-트랙 비용 회피 |
| 상태 관리 | **Riverpod 2** | StateNotifier + Provider, 테스트 친화적 |
| 라우팅 | **go_router** | redirect 기반 인증 가드 |
| HTTP | **dio** | 인터셉터로 세션 토큰 자동 첨부 + 401 처리 |
| WebSocket | **web_socket_channel** | 지수 backoff 재연결 + AppLifecycle 통합 |
| 보안 저장 | **flutter_secure_storage** | iOS Keychain / Android Keystore |
| i18n | **flutter_localizations + intl** | ARB 파일, `flutter gen-l10n` 자동 생성 |
| IAP | **in_app_purchase** | StoreKit + Play Billing 통합 인터페이스 |
| 푸시 | **firebase_messaging** | iOS APNs + Android FCM 통합 |
| 서버 | **Express + ws + mysql2** | 가벼움, 운영 편의성, Cloud Run 호환 |
| DB | **MySQL 8 + InnoDB** | 트랜잭션 + UNIQUE 제약 (IAP 중복 차단) |
| 결제 검증 | **googleapis + Apple /verifyReceipt** | 서버 측 영수증 재검증 (부정 결제 차단) |

## 프로젝트 구조

> **2026 재개발 진행 중.** 2012 원작과 v1 재구축본은 `legacy/` 아래로 격리했고, 루트에는
> 2026 버전을 새로 세우는 중입니다. 설계는 [스펙](docs/superpowers/specs/2026-09-18-findit-2026-p0-design.md),
> 진행 계획은 [Plan 1](docs/superpowers/plans/2026-09-18-findit-2026-p0-foundation.md)을 보세요.

```
findit-rebuild/
├── tools/src/               # 에셋 파이프라인 (원작 → content/, app/assets/)
│   ├── java-constants.ts    #   jadx 상수 심볼 역치환
│   ├── puzzle-parser.ts     #   Objects.java → 퍼즐 30세트 / rect 262개
│   ├── paths.ts
│   └── bin/                 #   extract-puzzles · extract-images · extract-assets
├── packages/protocol/       # 클라·서버 공유 WS 메시지 (단일 선언 → TS 검증기 + Dart 생성)
│   ├── src/schema.ts        #   메시지 17종 (c2s 7 + s2c 10)
│   ├── src/validate.ts      #   decodeEnvelope / encodeEnvelope
│   └── tools/gen-dart.ts    #   → app/lib/domain/protocol.g.dart
├── content/puzzles/         # 좌표 JSON 30개 + manifest (추적됨)
├── content/images/          # WebP 292장 (생성물, 미추적)
├── app/                     # Flutter 클라 — Plan 3 에서 구축
├── server/                  # Node + TS 서버 — Plan 2 에서 구축
├── docs/superpowers/        # 스펙 · 구현 계획
└── legacy/                  # 읽기 전용 아카이브
    ├── android_project/     #   2012 원작 디컴파일 (좌표·공식 진실 출처)
    ├── decoded_apk/         #   원본 에셋 (PNG 481 + OGG 11)
    ├── client_flutter/      #   v1 Flutter 재구축본
    ├── server/              #   v1 Node 서버
    └── artifacts/           #   *.apk, *.zip
```

## 빠른 시작

Node 24 LTS 필요 (`.nvmrc` 참조).

```bash
npm ci
npm test                     # 67 tests
npm run typecheck
```

### 에셋 파이프라인

원작 APK에서 퍼즐 좌표·이미지·UI·효과음을 전부 재생성합니다. 결정론적이라 몇 번을
돌려도 같은 바이트가 나옵니다.

```bash
npm run content:all          # puzzles → images → assets
```

| 산출물 | 내용 |
|---|---|
| `content/puzzles/` | 퍼즐 30세트, rect 262개 + 매니페스트 (git 추적) |
| `content/images/` | WebP 292장 — 베이스 30 + 패치 262 (27MB → 4.5MB) |
| `app/assets/legacy/` | UI·캐릭터·아이템·이펙트 PNG 189장 (9-patch 8장 포함) |
| `app/assets/audio/` | 효과음 OGG 11개 |

### 프로토콜 Dart 바인딩

```bash
npm run protocol:dart        # schema.ts → app/lib/domain/protocol.g.dart
```

생성물은 커밋되며, 드리프트는 테스트가 막습니다 — `schema.ts`를 고치고 재생성을 잊으면
`npm test`가 실패합니다.

### v1 (아카이브)

`legacy/client_flutter`, `legacy/server`는 참조용 동결본입니다. 실행 방법은
[`docs/wiki/`](docs/wiki/)를 보세요 — 경로 앞에 `legacy/`를 붙여야 합니다.

## 게임 디자인 보존 사항

원본 기획서(`docs/*.xlsx`, `docs/*.docx`)와 디컴파일 코드에서 추출해 **서버 + 클라 양쪽에 미러링**한 게임 룰:

- **AI 발견 시간**: `7 - level × 0.03` 초, ±15% 랜덤 jitter, [1.0, 7.0] 클램프
- **콤보 점수 보너스**: 1→100, 2→200, 3→400, 4+→700점
- **콤보 시간 보너스**: 1→1, 2→2, 3→4, 4+→7초
- **점수 공식**:
  - 승자: `findNum × 50 + 100 + comboBonus`
  - 패자: `findNum × 50 + comboBonus`
- **HP 테이블**: 1Lv=110, 100Lv=5000 (101개 값, 서버 `balance.js` `LEVEL_ABILITY`)
- **레벨 누적 점수**: 1Lv=5000 → 100Lv≈6.6억
- **등급**: A~J (10레벨 단위)
- **인벤토리 확장**: 3 → 30칸 (단계당 +3, 비용 50→450 코인)
- **스킬덱 확장**: 1 → 4 (비용 100/300/900 코인)
- **아이템 강화**: 0 → 9단계, 확률 0.5 → 0.1, flux/advanced_flux 보정 +5/+10%
- **44개 스킬 트리**: 5계열(고양이/강아지/폭발/불꽃/눈꽃) × tier 1~9, 선행 스킬 의존성 검증
- **이미지 콘텐츠 포맷**: 1 원본 PNG + 7 패치 PNG, 좌표 `imageCut` JSON, 광고 메타데이터

상세: [docs/04-24.md](docs/04-24.md), [docs/CONTENT_PRODUCTION_GUIDE.md](docs/CONTENT_PRODUCTION_GUIDE.md)

## i18n

원본 안드 `strings.xml` 145개 키를 **양방향 보존**한 채로 Flutter ARB 로 이식.

```bash
node legacy/client_flutter/tools/strings_xml_to_arb.js
# en keys: 145
# ko keys: 145
# parity OK — 145 keys both sides
```

snake_case (`item_pen01`) → camelCase (`itemPen01`) 자동 변환, CRLF→LF 정규화, Android escape 처리(`\n`/`\t`/`\\`/`\'`/`\"`).

## 출시 자동화

```bash
git tag v1.0.0
git push origin v1.0.0
```

이 한 줄로:
- Codemagic `android-release` 워크플로 → AAB → Play Internal Track
- Codemagic `ios-release` 워크플로 → IPA → TestFlight

자세한 콘솔 셋업·시크릿·체크리스트: [docs/RELEASE.md](docs/RELEASE.md)

## 진행 현황

> 04-26.md 의 16 섹션 — 모두 코드 레벨 완료. 외부 자격 증명 발급/등록만 남음.

| # | 영역 | 상태 |
|---:|---|:---:|
| 1 | Flutter 부트스트랩 | 🟢 |
| 2 | 서버 주소 / 네트워크 보안 | 🟢 |
| 3 | i18n 145 키 이식 | 🟢 |
| 4 | REST API 클라 (27 endpoints, 8 모듈) | 🟢 |
| 5 | 로그인 / 회원가입 / Guest | 🟢 |
| 6 | 대기실 / 대전방 + WS 매칭 | 🟢 |
| 7 | 게임 루프 (CustomPainter + 7 hit test + AI) | 🟢 |
| 8 | 인벤토리 / 상점 / 스킬트리 | 🟢 |
| 9 | 랭킹 / 공지 / 프로필 | 🟢 |
| 10 | IAP — Apple StoreKit 추가 | 🟢 |
| 11 | FCM ↔ APNs 푸시 | 🟢 |
| 12 | WebSocket 마이그레이션 | 🟢 |
| 13 | 자산 / 이미지 처리 | 🟢 |
| 14 | iOS 특수 사항 (orient/theme/ATT/SafeArea) | 🟢 |
| 15 | 빌드 / CI / 출시 | 🟢 |
| 16 | 분석 / 광고 와이어 | 🟢 |

## 문서

- 📋 [docs/04-24.md](docs/04-24.md) — 1·2 순위 (서버 인프라 + 게임 룰 + 컨텐츠) 체크리스트
- 📱 [docs/04-26.md](docs/04-26.md) — Flutter iOS+Android 도입 16 섹션 체크리스트
- 🎨 [docs/CONTENT_PRODUCTION_GUIDE.md](docs/CONTENT_PRODUCTION_GUIDE.md) — 외주 디자이너용 콘텐츠 제작 가이드
- 🚀 [docs/RELEASE.md](docs/RELEASE.md) — 출시 절차 + 시크릿 매트릭스
- ☁️ [GCP_DEPLOYMENT.md](GCP_DEPLOYMENT.md) — Cloud Run 배포 가이드

## 라이선스 / 법적 사항

본 저장소의 신규 저작물 (`tools/`, `packages/`, `app/`, `server/`, `legacy/client_flutter/`, `legacy/server/`, `docs/`, `.github/` 등) 은 **FindIt: Rebuild Proprietary License v1.0** 하에 배포됩니다 — **All Rights Reserved**, 제한적 fair use 만 허용.

| 행위 | 허용? |
|---|:---:|
| GitHub 에서 소스 보기 | ✅ |
| Fork → Pull Request | ✅ |
| 50줄 이하 코드 인용 (출처 명시 + 교육 목적) | ✅ |
| 상업적 사용 / GitHub 외 재배포 / ML 학습 데이터셋 사용 | ❌ — 별도 계약 필요 |

**디컴파일된 `android_project/` 와 `game.apk`** 의 원본 저작권은 원 개발사에 있으며, 본 프로젝트의 라이선스 적용 대상이 아닙니다 — fair use 범위 내 reference 만 허용 ([LEGAL.md §2](LEGAL.md) 참조).

| 문서 | 내용 |
|---|---|
| [LICENSE](LICENSE) | 라이선스 본문 (proprietary, 12 sections) |
| [NOTICE](NOTICE) | 제3자 저작물 attribution + 디컴파일 disclosure |
| [LEGAL.md](LEGAL.md) | 종합 법적 안내 (저작권 / 디컴파일 / 상표 / DMCA / AI opt-out) |
| [CLA.md](CLA.md) | 기여자 라이선스 동의서 (PR 제출 시 자동 적용) |

상업 라이선스 / 별도 협의: `jaewonjung1004@gmail.com` (제목 `[FindIt License Inquiry]`).
DMCA / 저작권 침해 신고: https://github.com/contact/dmca + 위 이메일 (`[FindIt DMCA]`).

## 크레딧

- 원본 게임 (2012-2013): 원 개발사 (서비스 종료) — 모든 권리는 원 개발사 소유
- 재구축 (2026-04~): Jaewon Jung ([@GabrielJung0727](https://github.com/GabrielJung0727))
- 게임 룰·공식 보존 자료: `docs/findit_*.xlsx`, `docs/스킬트리_0[1-4].xlsx`, `docs/레벨별 첨수체계_기본능력치_0[1-2].xlsx`, `docs/AI_틀린부위 찾는 시간공식_01.xlsx`
