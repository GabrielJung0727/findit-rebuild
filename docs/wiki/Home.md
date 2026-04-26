# FindIt: Rebuild — Wiki

2012-2013 한국 안드로이드 게임 **틀린그림 찾기 배틀** 을 iOS+Android Flutter 단일 코드베이스로 부활시키는 프로젝트의 통합 위키입니다.

> 🎯 **목표**: 원본 게임 룰·공식·콘텐츠 포맷을 100% 보존한 채로 모던 스택(Flutter + Node.js + WebSocket + MySQL)에 이식.
> 📅 **시작**: 2026-04-24 / **현재**: 2026-04-26 (16개 영역 코드 레벨 완료)
> 📊 **테스트**: 106 passing / **빌드**: APK debug 13s / **분석**: 0 issues

---

## 어디서부터 시작할까?

| 역할 | 첫 페이지 |
|---|---|
| 처음 받는 개발자 | [[Getting-Started]] — 5분 안에 첫 빌드 |
| 백엔드 개발자 | [[Server-Setup]] + [[API-Reference]] |
| 클라 개발자 | [[Client-Setup]] + [[Project-Structure]] |
| 디자이너 / 콘텐츠 제작자 | [[Asset-Pipeline]] |
| QA / 테스터 | [[Testing]] + [[Troubleshooting]] |
| 출시 담당 | [[Release-Process]] + [[Build-CI-CD]] |
| 게임 룰 검증자 | [[Game-Design]] + [[Decompiled-Reference]] |

---

## 프로젝트 한 줄 요약

원본 APK (`14.63.220.39:22131` 서버 종료, 2014~) 를 디컴파일·역공학·재기획해서 다음 스택으로 재구축:

- **클라이언트**: Flutter 3.27 + Riverpod + go_router + Dio + WebSocket
- **서버**: Node.js + Express + ws (WebSocket) + MySQL 8 + Cloud Run 배포
- **출시**: iOS App Store + Google Play (Codemagic 자동 빌드/업로드)

원본 기획서(2013년 xlsx 5종) 그대로 점수 공식·콤보 보너스·HP 테이블·44 스킬 트리·아이템 가격 100% 미러링.

---

## 16개 영역 진행 현황

전체가 코드 레벨에서 🟢. 외부 자격 증명 발급/등록만 남음 ([[Release-Process]] 참조).

| # | 영역 | 핵심 |
|---:|---|---|
| 1 | Flutter 부트스트랩 | `client_flutter/` 신규 프로젝트 + 11 의존성 |
| 2 | 서버 주소 / 네트워크 보안 | `Property.dart` + `network_security_config.xml` + iOS ATS |
| 3 | i18n 145 키 | strings.xml → ARB 변환기 |
| 4 | REST API | 27 endpoints, 8 모듈, 30 unit tests |
| 5 | 로그인 / 회원가입 / Guest | go_router + Riverpod auth + reCAPTCHA 슬롯 |
| 6 | 대기실 / 대전방 | WebSocket + 5/8 스킬덱 picker |
| 7 | 게임 루프 | CustomPainter + Timer.periodic + AI |
| 8 | 인벤토리/상점/스킬트리 | 6 카테고리 + IAP UI + 44 스킬 트리 |
| 9 | 랭킹/공지/프로필 | flutter_html + image_picker |
| 10 | Apple StoreKit IAP | 서버 verifyApple + sandbox fallback |
| 11 | FCM ↔ APNs 푸시 | PushService + deep link |
| 12 | WebSocket 마이그레이션 | TCP/WS 어댑터 + 공유 핸들러 |
| 13 | 자산 / 이미지 | 안드 drawable 추출 + AssetPaths 헬퍼 |
| 14 | iOS 특수 사항 | orient 고정 + ATT/SafeArea/Haptics |
| 15 | 빌드 / CI / 출시 | GitHub Actions + Codemagic |
| 16 | 분석 / 광고 와이어 | AnalyticsHelper 11 이벤트 + 7 흐름 wired |

상세: [[Roadmap]] 또는 [04-26.md](https://github.com/GabrielJung0727/findit-rebuild/blob/main/docs/04-26.md)

---

## 위키 페이지 인덱스

### 시작
- [[Getting-Started]] — 처음 받은 개발자가 5분 안에 첫 빌드까지
- [[Project-Structure]] — 모든 디렉터리/파일의 역할

### 아키텍처
- [[Architecture]] — 시스템 다이어그램 + 요청 흐름 + 동시 접속 처리
- [[Database-Schema]] — 8 테이블 + 4 마이그레이션 + ER
- [[WebSocket-Protocol]] — 코드 100~107 시퀀스 + 프레임 포맷

### 셋업
- [[Server-Setup]] — Node + MySQL + Docker Compose + 환경변수
- [[Client-Setup]] — Flutter SDK 설치 + IDE + dart-define

### 기능별
- [[API-Reference]] — 27개 REST endpoint 상세
- [[Game-Design]] — 점수/콤보/AI 공식 + 44 스킬 + 아이템 가격
- [[Asset-Pipeline]] — 1+7 PNG 포맷 + manifest + 검증기
- [[Internationalization]] — 145키 양방향 + ARB 자동 변환
- [[IAP-Integration]] — Google Play + Apple App Store + Samsung
- [[Push-Notifications]] — Firebase 셋업 → APNs 키 → 토큰 등록

### 개발/출시
- [[Testing]] — 106 tests 분류 + http_mock_adapter + WS roundtrip
- [[Build-CI-CD]] — GitHub Actions + Codemagic YAML 해설
- [[Release-Process]] — App Store / Play Store 단계별
- [[Troubleshooting]] — 자주 막히는 18가지 + 해결법

### 참조
- [[Decompiled-Reference]] — `android_project/` 활용법
- [[Contributing]] — PR / 코드 스타일 / 린트 규칙
- [[Roadmap]] — 16 영역 + 후속
- [[Glossary]] — 한국어 게임 용어 + 프로젝트 약어

---

## 커뮤니케이션

- **이슈**: [GitHub Issues](https://github.com/GabrielJung0727/findit-rebuild/issues)
- **위키 편집**: 페이지 우상단 ✏️ Edit
- **PR 가이드**: [[Contributing]]

---

## 라이선스 / 크레딧

- 신규 코드: All Rights Reserved (별도 명시 전까지)
- 디컴파일된 `android_project/`, `game.apk` 의 원본 저작권은 원 개발사 소유
- 재구축 시작: 2026-04-24 by [@GabrielJung0727](https://github.com/GabrielJung0727)
