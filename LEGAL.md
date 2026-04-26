# Legal Notice — FindIt: Rebuild

이 문서는 본 프로젝트의 법적 권리, 저작권, 제3자 자산, 디컴파일 reference 사용 정책, DMCA 절차에 대한 종합 안내입니다.

> ⚠ 본 문서는 **법률 자문이 아닙니다**. 분쟁 또는 의문 발생 시 자격 있는 변호사의 자문을 받으시기 바랍니다.

**Last Updated**: 2026-04-26
**Version**: 1.0
**Governing Law**: 대한민국 (Republic of Korea)
**Jurisdiction**: 서울중앙지방법원 (Seoul Central District Court)

---

## 0. 빠른 참조 (Quick Reference)

| 행위 | 허용? | 근거 |
|---|:---:|---|
| GitHub 에서 소스 코드 보기 | ✅ | LICENSE §1(a) |
| Fork → Pull Request 제출 | ✅ | LICENSE §1(b), CLA |
| 로컬 clone (코드 리뷰 / 보안 연구) | ✅ | LICENSE §1(c)(e) |
| 50줄 이하 코드 인용 (출처 명시) | ✅ | LICENSE §1(d) |
| 200단어 이하 문서 인용 (교육 목적) | ✅ | LICENSE §1(d) |
| 상업적 사용 (판매·서비스 호스팅·제품 통합) | ❌ | LICENSE §2(a) — 별도 계약 필요 |
| GitHub 외 재배포 (mirror·repost·CDN) | ❌ | LICENSE §2(b) |
| 자체 수정 후 별도 발행 | ❌ | LICENSE §2(c) — PR 만 허용 |
| 프로젝트명 / 상표 사용 | ❌ | LICENSE §2(d), §4 |
| 저작권 표시 제거 / 변조 | ❌ | LICENSE §2(e) |
| 재라이선싱 / 양도 | ❌ | LICENSE §2(f) |
| **AI / ML / LLM 학습 데이터셋 사용** | ❌ | LICENSE §2(g) — 명시적 거부 |
| 디컴파일 / 역컴파일 (법적 한계 외) | ❌ | LICENSE §2(h) |
| `android_project/` 자산 신규 빌드에 포함 | ❌ | §2.2 |
| 원본 게임 자산 재배포 | ❌ | §2.1, NOTICE |
| 원본 게임 코드 직접 복사 | ❌ | §2.2 — 본인이 재구현해야 함 |

상업 라이선스 / 별도 협의 — `jaewonjung1004@gmail.com` (제목 `[FindIt License Inquiry]`).

---

## 1. 저작권 귀속 (Copyright Ownership)

### 1.1 신규 저작물 (New Works)

본 저장소에 새로 작성된 모든 코드, 문서, 설정, 디자인 자산 (이하 "신규 저작물") 의 저작권은 다음에게 귀속됩니다:

> **Jaewon Jung** (Gabriel Jung) — github.com/GabrielJung0727
> Copyright © 2026

신규 저작물 범위:
- `client_flutter/` — Flutter 클라이언트 전체
- `server/` — Node.js 서버 전체
- `docs/` — 문서 전체 (단, 디컴파일 reference 발췌 부분 제외)
- `.github/` — 워크플로 / 템플릿
- 루트 메타파일 (`README.md`, `LICENSE`, `NOTICE`, `LEGAL.md`, `CLA.md` 등)
- 기타 본 저장소에 새로 생성된 모든 파일

### 1.2 제3자 저작물

다음은 신규 저작물에 포함되지 않으며, 각 권리자의 라이선스를 따릅니다:
- Flutter SDK, Dart, Node.js, npm 패키지 — NOTICE 참조
- 폰트 — Apache 2.0 / OFL (NOTICE 참조)
- 외부 SDK — Firebase, Google Play Billing, Apple StoreKit 등 각 약관

### 1.3 직원 / 위탁 / 외주 작업

기여자가 고용 또는 위탁 관계에 있는 경우 (예: 고용주 또는 클라이언트가 코드 / 자산의 권리자), 기여자는 본 프로젝트에 기여하기 전에 권리자로부터 명시적 허가를 받아야 합니다 (CLA §3.2 참조).

---

## 2. 디컴파일 Reference 정책 (`android_project/` & `game.apk`)

### 2.1 자료의 성격

`android_project/` 디렉터리와 `game.apk` 파일은 2012-2013 출시된 원본 Android 게임 "**틀린그림 찾기 배틀**" 의 **디컴파일 결과물 (decompiled artifacts)** 입니다.

원본 게임의 모든 권리는 **원래 발행사 (original publisher)** 에 있으며, 본 프로젝트는 원래 발행사와 **공식적으로 무관 (no affiliation)** 합니다.

### 2.2 허용되는 사용

본 프로젝트 범위 내에서 다음 사용만 허용됩니다 (제한적 fair use):

| 허용 사용 | 조건 |
|---|---|
| 게임 룰 / 공식 검증 | 점수, 콤보, AI 시간, HP, 강화 확률 등 수치 reference 만 |
| 프로토콜 분석 | WebSocket 코드, 패킷 형식 reference |
| UI 의도 파악 | 화면 흐름 / 인터랙션 reference (시각적 모방 X) |
| 보안 연구 | 비영리 학술 / 교육 목적 |

### 2.3 금지되는 사용 — 절대 금지

| 금지 사용 | 사유 |
|---|---|
| 자산 (이미지 / 사운드 / 폰트 / 음악) 을 신규 빌드에 포함 | 원본 IP 침해 |
| 고유 코드를 신규 코드에 직접 복사 | 룰 검증 후 본인이 재구현해야 함 |
| 디컴파일 결과물의 별도 배포 / 공유 / 미러 | 원본 IP 침해 |
| 상업적 이용 (어떤 형태로든) | 원본 IP 침해 + LICENSE §2(a) |
| 원본 게임 / 발행사를 사칭하거나 혼동 유발 | 상표 침해 + 사기 |
| 원본 게임의 사용자 데이터 / 계정 정보 활용 | 개인정보 보호법 위반 |

### 2.4 Fork 시 의무

본 저장소를 fork 하는 자는 다음 중 하나를 수행해야 합니다:

- **A안**: `android_project/` 디렉터리와 `game.apk` 파일을 즉시 제거
- **B안**: 위 파일들을 fork 의 `.gitignore` 에 등재하고 추적에서 제외
- **C안**: 본 §2 의 모든 제한을 fork 에서도 명시적으로 유지

A 또는 B 를 선택할 경우, fork README 에 다음 문구를 포함하는 것을 권장합니다:

> "This fork has removed `android_project/` and `game.apk` from the upstream
> repository. The original FindIt: Rebuild repository contains decompiled
> reference material that is not part of this distribution."

### 2.5 원본 권리자의 제거 요청

원본 게임의 발행사 또는 그 정당한 대리인이 디컴파일 자료의 제거를 요청하면, 본 프로젝트 maintainer 는 다음을 약속합니다:

1. **24시간 내** — 요청 접수 확인 (acknowledgment)
2. **권리 검증** — 요청자의 권리 보유 증명 검토 (영업등기·상표·저작권 등록증 등)
3. **검증 후 7일 내** — `android_project/` 및 `game.apk` 제거 + git history 정리 (BFG Repo-Cleaner 사용)
4. **공개 disclosure** — 제거 사실을 README 및 CHANGELOG 에 기록

연락처: `jaewonjung1004@gmail.com` (제목 `[FindIt Legal — Original Rights Holder]`).

---

## 3. 게임 메커닉 / 디자인 / 표현 (Game Mechanics, Design, Expression)

### 3.1 일반 원칙

미국·한국·EU 의 통상적 저작권법 해석에 따르면:

- **보호되지 않는 것** — 게임 룰, 수치 공식, 시스템 아이디어 (idea-expression dichotomy)
- **보호되는 것** — 특정 표현 (UI 레이아웃, 캐릭터 디자인, 일러스트, 사운드, 음악, 텍스트)

### 3.2 본 프로젝트의 입장

| 요소 | 처리 방식 |
|---|---|
| 게임 룰 (점수, 콤보, AI 시간 공식 등 수치) | 디컴파일 reference 로 검증 후 본인 재구현 — 보호 대상 X |
| UI / UX 디자인 | **새로 작성** — 원본 시각적 모방 금지 |
| 캐릭터 / 일러스트 / 자산 | 디자이너가 신규 제작 — 정식 입수 시까지 placeholder 사용 |
| 사운드 / 음악 / SFX | 신규 제작 또는 라이선스 구매 |
| 한국어 문구 / 메뉴 텍스트 | 새로 작성 (원본 그대로 복제 X) |
| 게임 이름 / 로고 / 마크 | 새로 작성 — 원본과 식별 가능하게 차별화 |

### 3.3 기여자 의무

기여자는 위 원칙을 준수해야 합니다. 다음 PR 은 거부됩니다:

- 원본 게임의 시각적 / 청각적 표현을 그대로 복제한 자산
- `android_project/` 의 코드 또는 자산을 직접 복사한 변경
- 원본 게임의 텍스트 / 메뉴 / 다이얼로그를 직역한 i18n 항목

기여 시 의심되는 사항이 있으면 PR description 에 명시하고 maintainer 의 사전 검토를 받으십시오.

---

## 4. 상표 (Trademark)

### 4.1 본 프로젝트 명칭

다음은 Jaewon Jung 의 비등록 상표 (unregistered trademarks / TM) 입니다:

- "FindIt: Rebuild"
- "FindIt"

### 4.2 사용 제한

- 본 프로젝트의 식별 / 비교 / 교육적 언급 외 사용 금지
- 마케팅, 광고, 도메인명, 제품명, 서비스명에 사용 금지
- 원본 게임 발행사 또는 그 자회사로 오인할 수 있는 사용 금지

### 4.3 원본 게임 명칭

"틀린그림 찾기 배틀" 및 그 영문 / 변형은 **원본 게임 발행사의 상표** 일 가능성이 있습니다. 본 프로젝트는 식별 / 비교 / 학술적 언급 목적 외 해당 명칭을 사용하지 않으며, 사용자 / 기여자에게도 동일한 제약을 권고합니다.

---

## 5. 기여자 라이선싱 (Contributor License Agreement Summary)

기여자는 PR / commit / issue 제출 시 [`CLA.md`](CLA.md) 에 동의한 것으로 간주됩니다.

핵심 요지:

1. **저작권 라이선스** — 비독점, 전 세계, 영구, 양도 가능, 취소 불가, 로열티 무료
2. **재라이선싱 권한** — maintainer 가 향후 라이선스 변경 시 (예: AGPL → Commercial) 기여물도 자동 재라이선싱
3. **특허 라이선스** — 기여물 관련 특허 권리도 같은 조건으로 부여
4. **원본성 보증** — 기여물이 본인 창작 또는 적절한 라이선스 하에 있음
5. **DCO Sign-off** — 대형 기여 (>500 LoC) 시 `Signed-off-by:` 라인 필수

자세한 내용 — [`CLA.md`](CLA.md).

---

## 6. DMCA / 저작권 침해 신고 (Copyright Infringement Notice)

본 저장소가 제3자의 저작권을 침해한다고 판단되면 다음 절차를 따라주십시오:

### 6.1 신고 채널

| 채널 | URL / 연락처 |
|---|---|
| GitHub DMCA Form (권장) | https://github.com/contact/dmca |
| Maintainer 직접 이메일 | `jaewonjung1004@gmail.com` (제목 `[FindIt DMCA]`) |
| GitHub Security Advisory (보안 침해 시) | repo → Security → Advisories |

### 6.2 신고 내용 — DMCA §512(c)(3) 준수

다음을 포함하지 않으면 처리 지연될 수 있습니다:

1. 침해 콘텐츠의 정확한 위치 (파일 경로 + commit hash 또는 line number)
2. 침해된 원본 저작물의 식별 (저작물 명, 저작권자, 등록번호 — 있다면)
3. 권리 보유 증명 (저작권 등록증, 발행 기록, 저작자 신분 등)
4. 신고자 연락처 (이름, 주소, 전화, 이메일)
5. 신의 성실 진술 — "선의로 침해라고 판단함"
6. 위증 처벌 진술 — "위 정보가 정확하며 신고자가 권리자 또는 그 대리인임"
7. 신고자 서명 (전자 서명 가능)

### 6.3 처리 SLA

| 단계 | 시한 |
|---|---|
| 신고 접수 확인 | 24시간 |
| 1차 검토 + 내부 조사 | 7일 |
| 침해 확정 시 — 콘텐츠 제거 + history 정리 | 추가 7일 |
| 신고자에게 결과 통지 | 처리 완료 후 즉시 |

악의적 / 허위 신고는 한국 형법 §156 (무고죄) 및 저작권법 §103-3 (허위 신고 처벌) 의 대상이 될 수 있습니다.

### 6.4 반박 신고 (Counter-Notice)

콘텐츠가 부당하게 제거되었다고 판단되는 사용자는 DMCA §512(g) 절차에 따라 반박 신고를 제출할 수 있습니다. GitHub 의 Counter-Notice 폼: https://github.com/contact/dmca-counter

---

## 7. 개인정보 / 데이터 보호 (Privacy)

### 7.1 본 프로젝트 자체는

기본적으로 사용자 개인정보를 수집하지 않습니다. 본 저장소는 코드만을 포함하며, 운영되는 서비스는 별도의 개인정보 처리방침을 가집니다.

### 7.2 기여자 정보

PR / 이슈 / commit 을 통해 기여자가 제공하는 정보 (이름, 이메일, 닉네임 등) 는:

- GitHub 의 공개 git history 에 영구 기록
- NOTICE 또는 CONTRIBUTORS 파일에 등재 가능
- 기여 평가 / 라이선스 입증 / 분쟁 해결 목적으로 사용

기여자는 위 사용에 동의한 것으로 간주됩니다.

### 7.3 운영 서비스 (개인정보 처리방침 별도)

`findit-rebuild` 코드를 사용하여 운영되는 실제 게임 서비스 (있다면) 는 별도의 개인정보 처리방침 (Privacy Policy) 을 게시하며, 다음 법령을 준수해야 합니다:

- 한국: 개인정보 보호법, 정보통신망법
- EU: GDPR
- 미국: COPPA (만 13세 미만), CCPA (캘리포니아)
- 일본: 개인정보 보호법 (APPI)

---

## 8. 책임 제한 / 면책 조항 (Disclaimer)

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND.

본 프로젝트는:

- 원본 게임 발행사 / 권리자와 **공식적인 관련 없음** (no affiliation)
- 학술 / 교육 / 개인적 학습 목적의 비영리 프로젝트
- 어떠한 보장 (warranty) 도 제공하지 않음
- 사용으로 인한 어떠한 손해 (직접 / 간접 / 결과적) 에 대해서도 책임지지 않음

자세한 면책 — `LICENSE` §7, §8.

---

## 9. AI / 머신러닝 사용 거부 (AI/ML Opt-Out)

본 저장소의 모든 콘텐츠는 다음 사용에 대해 **명시적으로 거부 (explicitly opt-out)** 합니다:

- 대규모 언어 모델 (LLM) 학습 데이터셋
- 코드 생성 AI (예: Copilot, Codex, Claude, GPT 등) 의 학습
- 이미지 생성 AI 의 학습
- 기타 머신러닝 모델의 입력 / 학습 / 미세조정

근거: LICENSE §2(g), 그리고 본 §9.

이 거부는:
- 본 저장소의 모든 파일에 대해 메타데이터 형태로 적용
- `robots.txt` 와 별도의 추가적 의사 표시
- 향후 도입될 수 있는 표준 (예: Spawning Source.Plus, ai.txt) 에 자동 등재 의사 포함

침해 시 — 한국 저작권법 §35-3 (공정 이용 항변 검토) 및 §125 (손해배상) 적용을 검토합니다.

---

## 10. 분쟁 해결 (Dispute Resolution)

### 10.1 우선 절차

분쟁 발생 시 양 당사자는 먼저 **30일간의 선의의 협의 (good-faith negotiation)** 를 시도해야 합니다. 협의 채널:

- 이메일: `jaewonjung1004@gmail.com` (제목 `[FindIt Dispute]`)
- 또는 GitHub Issue (라벨 `legal`)

### 10.2 중재 / 소송

협의 실패 시:

- **준거법**: 대한민국 법률
- **관할법원**: 서울중앙지방법원 (1심 전속 관할)
- **언어**: 한국어 (영문 번역본은 참고용)

### 10.3 비용

분쟁 비용 (변호사비, 법원 수수료) 은 패소 측이 부담합니다 (한국 민사소송법 §98 의 원칙에 따라).

---

## 11. 업데이트 / 변경 (Updates)

본 LEGAL.md 는 maintainer 가 임의로 갱신할 수 있습니다. 변경 시:

- 본 문서 상단의 "Last Updated" 갱신
- "Version" 증가 (semantic — major.minor)
- 중요 변경 시 README 와 CHANGELOG 에 공지

기존 기여자 / 사용자에 대한 소급 적용은 다음 원칙에 따릅니다:

- **유리한 변경** (제한 완화) — 즉시 소급 적용
- **불리한 변경** (제한 강화) — 변경 공지 후 30일 후 적용, 기존 사용자는 이전 버전으로 계속 사용 가능 (single grandfathering)

---

## 12. 연락처 (Contact)

| 목적 | 연락처 |
|---|---|
| 일반 문의 | GitHub Issue |
| 보안 취약점 | GitHub Security Advisory + `jaewonjung1004@gmail.com` |
| 라이선스 / 상업 사용 문의 | `jaewonjung1004@gmail.com` (제목 `[FindIt License Inquiry]`) |
| DMCA / 저작권 침해 | https://github.com/contact/dmca + `jaewonjung1004@gmail.com` |
| 원본 권리자의 제거 요청 | `jaewonjung1004@gmail.com` (제목 `[FindIt Legal — Original Rights Holder]`) |
| 분쟁 해결 협의 | `jaewonjung1004@gmail.com` (제목 `[FindIt Dispute]`) |

---

## 13. 관련 문서

- [`LICENSE`](LICENSE) — 라이선스 본문
- [`NOTICE`](NOTICE) — 제3자 저작물 + 디컴파일 disclosure
- [`CLA.md`](CLA.md) — 기여자 라이선스 동의서
- [`docs/wiki/Contributing.md`](docs/wiki/Contributing.md) — 기여 가이드 + Hard Rules
- [GitHub Acceptable Use Policies](https://docs.github.com/en/site-policy/acceptable-use-policies)
- [GitHub Terms of Service](https://docs.github.com/en/site-policy/github-terms)

---

본 문서의 한국어 버전이 정본 (governing version) 입니다. 영문 표현은 참고용이며, 해석상 차이가 있을 경우 한국어 버전이 우선합니다.

— END OF LEGAL NOTICE —
