# Security Policy

**Project**: FindIt: Rebuild
**Maintainer**: Jaewon Jung ([@GabrielJung0727](https://github.com/GabrielJung0727))
**Version**: 1.0
**Last Updated**: 2026-04-26

---

> 보안 연구자분들께 — 본 정책에 따라 선의로 취약점을 보고해주신 모든 분께 감사드립니다.
> 정당한 보고는 §6 의 **Safe Harbor** 조항에 따라 법적 조치 대상에서 제외됩니다.
>
> Thank you to security researchers who report vulnerabilities in good faith under this policy.
> Good-faith reports are protected under the **Safe Harbor** clause in §6.

---

## 0. TL;DR — 빠른 안내

| 상황 | 어디로 보고 |
|---|---|
| 🔴 활발히 악용 중인 취약점 (RCE, 데이터 유출 등) | **이메일** `jaewonjung1004@gmail.com` (제목 `[FindIt SECURITY URGENT]`) — 24시간 응답 |
| 🟠 일반 보안 취약점 | [GitHub Security Advisory](https://github.com/GabrielJung0727/findit-rebuild/security/advisories/new) (private) |
| 🟡 의심되지만 확신 없음 | 위 GitHub Security Advisory (조사 후 확정) |
| 🟢 보안 모범 사례 / 의문 | [GitHub Issues](https://github.com/GabrielJung0727/findit-rebuild/issues) (label `security-discussion`, public OK) |
| ⚪ 비보안 일반 버그 | GitHub Issues (label `bug`) |

**❌ NEVER** report security vulnerabilities via:
- Public GitHub Issues
- Pull Request descriptions
- Wiki page edits
- Public Discussions
- Social media (Twitter/X, Reddit, etc.)
- Anywhere indexed by search engines

공개 채널에 보고된 취약점은 **즉시 삭제** 되며, 보고자에게 비공개 채널로 안내됩니다.

---

## 1. Supported Versions

| 버전 | 지원 상태 | 보안 패치 | EOL |
|---|---|---|---|
| `main` (HEAD) | ✅ Active development | 즉시 적용 | — |
| `v1.x` (TBD — 첫 릴리스 후) | ✅ Stable | 90일 SLA | TBD |
| `< v1.0` (pre-release) | ⚠ Pre-release | 보안 이슈 발견 시 main 에 적용 후 새 빌드 권장 | 즉시 |

릴리스 cadence:
- **Patch (vX.Y.Z+1)** — 보안 fix 만, 즉시
- **Minor (vX.Y+1.0)** — 월 1회
- **Major (vX+1.0.0)** — 분기 1회 또는 BREAKING CHANGE 누적 시

---

## 2. Reporting a Vulnerability — 권장 채널

### 2.1 GitHub Security Advisory (1순위)

**[https://github.com/GabrielJung0727/findit-rebuild/security/advisories/new](https://github.com/GabrielJung0727/findit-rebuild/security/advisories/new)**

장점:
- ✅ Private — maintainer 만 조회 가능
- ✅ Patch 협업 — private fork 에서 함께 PR 작업 가능
- ✅ CVE ID 자동 발급 (해당 시)
- ✅ 보고자 credit 자동 등재
- ✅ 공개 disclosure 시 GitHub 가 자동 처리

### 2.2 이메일 (긴급 또는 GitHub 계정 없을 시)

📧 **`jaewonjung1004@gmail.com`** (제목 `[FindIt SECURITY]`)

- 일반: 48시간 내 응답
- 긴급 (active exploit): 24시간 내 응답 — 제목에 `URGENT` 추가

PGP 암호화 (선택): 키 발급 예정 — 필요 시 위 이메일로 요청.

### 2.3 보고 시 포함 정보 — 표준 양식

```markdown
# Vulnerability Report

## 1. Summary
<한 줄 요약 — "어떤 컴포넌트의 어떤 결함">

## 2. Severity
<Critical / High / Medium / Low — §3 표 기준 자가 평가>

## 3. Component
- File path: <e.g. server/src/routes/iap.js:142>
- Function / endpoint: <e.g. POST /iap/verify>
- Version: <e.g. main@d748e4c, v1.2.3>

## 4. Vulnerability Class
<e.g. SQL Injection / IDOR / Auth bypass / RCE / SSRF / XSS / CSRF / 등>
<CWE ID 권장 — e.g. CWE-89 SQL Injection>

## 5. Description
<무엇이 문제인지 — 코드 line 인용 환영>

## 6. Reproduction Steps
1. <PoC 환경 — e.g. test 계정 / curl / Postman>
2. <단계 1>
3. <단계 2>
...

## 7. Proof of Concept (선택)
<curl / Postman / 스크립트 — 실행 가능한 PoC 환영>

## 8. Impact
<공격 성공 시 가능한 행위 — e.g. 다른 사용자 세션 탈취, 결제 우회, DB 임의 쿼리>

## 9. Suggested Fix (선택)
<권장 수정 방향 또는 패치>

## 10. References (선택)
<관련 CVE / OWASP / 블로그 링크>

## 11. Disclosure Preferences
- Credit name: <공개 시 표시할 이름 — 익명 OK>
- Contact: <후속 연락 채널>
- Coordinated disclosure deadline: <기본 90일 — 협의 가능>
```

---

## 3. Severity Classification & Response SLA

| 등급 | 정의 | 응답 ack | 패치 배포 | 예시 |
|---|---|---|---|---|
| 🔴 **Critical** | 인증 우회 / RCE / 결제 위조 / 대량 데이터 유출 | **24시간** | **7일** | SQL injection 으로 admin 권한 / IAP receipt 위조로 코인 무한 / 다른 사용자 세션 탈취 |
| 🟠 **High** | 정보 누출 / IDOR / 권한 상승 / 회피 가능한 인증 | 48시간 | 14일 | 다른 사용자 프로필 / 거래 내역 조회 / reCAPTCHA 우회 |
| 🟡 **Medium** | 제한된 정보 노출 / DoS / 약한 암호 | 72시간 | 30일 | 응답에서 stack trace 노출 / 무제한 retry / weak hash |
| 🟢 **Low** | 모범 사례 위반 / hardening 권고 | 7일 | 90일 또는 다음 minor | HTTP header missing / verbose error msg / outdated dep (no known CVE) |
| ⚪ **Informational** | 보안 영향 미미 / 권고 | 14일 | 검토 후 결정 | 코드 컨벤션 / 정보성 메시지 |

SLA 기준:
- 영업일 기준 (KST) — 주말 / 공휴일 제외하지만 Critical 은 24/7 응답 노력
- "ack" = 보고 접수 확인 + 1차 평가 회신
- "패치 배포" = main 에 fix merge + 영향받는 릴리스에 backport (해당 시)

---

## 4. Coordinated Disclosure Timeline

### 4.1 표준 timeline — 90일 (권장)

```
Day 0  : 보고 접수
Day 1  : ack 회신 (Critical 24h / 일반 48h 내)
Day 7  : 1차 평가 + severity 확정 + 보고자에게 통지
Day 30 : Patch 작업 완료 (Critical 7d / High 14d / 그 외 30d 기준)
Day 60 : Beta 배포 + 운영 환경 검증
Day 75 : 운영 배포 + 보고자에게 통지
Day 90 : Public disclosure (advisory 공개 + CVE 등록 + 보고자 credit)
```

### 4.2 단축 / 연장 협의

- **단축** — 활발히 악용 중인 경우 (in-the-wild exploit) 7~30일로 단축 협의
- **연장** — 복잡한 fix 또는 의존성 fix 대기 시 30일 단위 연장 (보고자 동의 필요)

### 4.3 보고자가 disclosure 시한을 강제할 권리

보고자는 90일 + 30일 grace period (총 120일) 후에는 maintainer 의 패치 완료 여부와 무관하게 자체 disclosure 할 권리를 가집니다. 이는 [Project Zero 정책](https://googleprojectzero.blogspot.com/p/vulnerability-disclosure-policy.html) 과 동일한 표준입니다.

단, 다음 경우는 협의 우선:
- 활발한 악용 중 — 즉시 비공개 패치 우선
- 운영 시스템에 직접 영향 — 사용자 보호 우선

---

## 5. Scope — 무엇이 In-Scope / Out-of-Scope 인가

### 5.1 In-Scope (보상 / Credit 대상)

다음 컴포넌트의 보안 취약점:

| 영역 | 대상 |
|---|---|
| 서버 | `server/` 의 모든 코드 — REST endpoints (27개), WebSocket 핸들러, TCP 핸들러, util 모듈 |
| 클라이언트 | `client_flutter/` 의 모든 코드 — auth 흐름, 세션 관리, IAP 검증 호출, 로컬 저장소 |
| 인프라 코드 | `.github/workflows/`, `codemagic.yaml`, `docker-compose.yml`, `server/sql/` |
| 의존성 / 빌드 | `package.json`, `pubspec.yaml`, `build.gradle` 의 known CVE 또는 supply chain |
| 인증 / 세션 | bcrypt 사용, opaque token 발급 / 검증, reCAPTCHA 흐름 |
| 결제 | IAP receipt 검증 (Apple / Google / Samsung), 영수증 재사용 차단, 트랜잭션 무결성 |
| 게임 룰 | 점수 / 콤보 / 보상 계산의 클라이언트 위조 가능성 |
| Admin | `server/src/routes/admin.js`, `/admin/ui` 권한 체크 |

### 5.2 Out-of-Scope (보고 환영하나 SLA / Credit 대상 아님)

| 영역 | 사유 |
|---|---|
| `android_project/`, `game.apk` | 디컴파일 reference — 본 프로젝트 배포물 아님 ([LEGAL.md §2](LEGAL.md)) |
| 디자인 / UI 권고 사항 | 보안 외 카테고리 |
| Self-XSS (사용자 본인의 브라우저 console 에 입력 시) | 통상적 X-S-S 분류상 취약점 X |
| Rate limiting 부재 (DoS 의도 없는 일반 endpoint) | 별도 hardening issue 로 처리 |
| 사용자 본인이 의도적으로 자기 계정에 부여한 권한 | 정의상 권한 상승 X |
| HTTPS / TLS 설정 (서비스 운영 책임) | 본 저장소는 코드만 — 운영자 책임 |
| 제3자 서비스 (Apple / Google / Firebase / GA) | 해당 서비스에 직접 보고 |
| Dependency 의 known CVE — 단순 보고 (이미 Dependabot 이 추적) | Dependabot PR 로 자동 처리됨 |

### 5.3 절대 금지 — 다음은 보고가 아닌 공격 행위

| 행위 | 결과 |
|---|---|
| Production / 사용자 데이터 접근 시도 | 즉시 보고 거부 + 법적 조치 검토 |
| 다른 사용자 계정으로 로그인 시도 (test account 외) | 동일 |
| DoS / DDoS / load testing | 동일 |
| 사회 공학 (소셜 엔지니어링) — maintainer / 사용자 대상 | 동일 |
| Physical attack — 호스팅 시설 등 | 동일 |
| 랜섬웨어 / 협박성 공개 위협 | **즉시 형사 고소** |

연구는 **로컬 환경** 또는 **자체 셋업한 test 인스턴스** 에서만 수행하십시오.

---

## 6. Safe Harbor — 선의 연구자 보호 조항

### 6.1 약속

본 정책에 따라 선의로 (in good faith) 보안 연구를 수행하고 취약점을 보고한 연구자에 대해, FindIt: Rebuild maintainer 는:

1. **법적 조치를 취하지 않습니다** — 한국 정보통신망법 §48 (정보통신망 침해), 형법 §314-2 (컴퓨터 사용 사기), 미국 CFAA (Computer Fraud and Abuse Act), DMCA Anti-Circumvention 등에 대한 권리를 행사하지 않음
2. **민사 청구하지 않습니다** — 한국 민법 §750 등에 따른 손해배상 청구권 행사 X
3. **법 집행 기관에 신고하지 않습니다** — 보고가 §5.3 의 금지 행위를 포함하지 않는 한
4. **연구자 신원을 보호합니다** — 익명 보고 옵션 제공, 보고 내용에 포함된 PII 는 보고자가 명시 동의한 경우에만 사용

### 6.2 적용 조건

다음을 모두 만족해야 Safe Harbor 가 적용됩니다:

- (a) 본 정책의 보고 절차 (§2) 를 따름
- (b) §5.1 의 In-Scope 영역에서만 연구 수행
- (c) §5.3 의 절대 금지 행위 미수행
- (d) 합리적 노력으로 데이터 노출 / 서비스 영향 최소화
- (e) Coordinated disclosure timeline (§4) 준수
- (f) maintainer 의 추가 정보 요청에 합리적 협조

### 6.3 한계

Safe Harbor 는 다음에 적용되지 않습니다:

- 제3자 (사용자 / 다른 서비스 제공자) 의 권리 — maintainer 권한 밖
- §5.3 의 절대 금지 행위
- 영리 목적 (취약점을 판매 / 협박 도구로 사용)

### 6.4 모델 참조

본 Safe Harbor 조항은 [DOJ Vulnerability Disclosure Framework](https://www.justice.gov/criminal-ccips/page/file/983996/download), [HackerOne Safe Harbor Statement](https://hackerone.com/security?type=team), [Bugcrowd Safe Harbor](https://www.bugcrowd.com/resources/essentials/what-is-safe-harbor/) 를 참조합니다.

---

## 7. Recognition — Hall of Fame

선의로 취약점을 보고한 연구자분께는 다음을 제공합니다:

| Severity | 인정 |
|---|---|
| Critical | 이름 / 닉네임 + 회사 / 소속 (희망 시) → README "Security Hall of Fame" 섹션 + 본 문서 + 향후 advisory |
| High | 이름 / 닉네임 → 본 문서 + advisory credit |
| Medium / Low | 본 문서 등재 (희망 시) |
| Informational | (선택) 본 문서 등재 |

### 7.1 Hall of Fame (현재)

> 첫 보고를 기다립니다. 이 자리는 비어 있습니다.
>
> Awaiting first report. This space is reserved.

| Date | Researcher | Severity | Component | Advisory |
|---|---|---|---|---|

### 7.2 비공개 옵션

연구자가 익명을 원하면:
- "Anonymous Researcher" 로 등재
- 등재 자체를 거부 가능 (보고는 그대로 처리)

### 7.3 비금전적 인정

본 프로젝트는 현재 **금전 보상 (bug bounty) 프로그램이 없습니다**. 다음으로 인정합니다:
- README + SECURITY.md Hall of Fame 등재
- 공개 advisory 의 credit 라인
- LinkedIn / Twitter 추천글 (요청 시)
- maintainer 의 공개 감사 게시 (요청 시)

향후 안정 운영 + 자금 확보 시 monetary bounty 도입 검토합니다 — 변경 시 본 문서 갱신.

---

## 8. Threat Model — 무엇을 보호하는가

### 8.1 자산 (Assets)

| 자산 | 민감도 | 위치 |
|---|---|---|
| 사용자 계정 (이메일, 비밀번호 hash) | 🔴 High | `server/.../members` 테이블 |
| 세션 토큰 | 🔴 High | client (`flutter_secure_storage`) + server (`session_tokens` 테이블) |
| IAP 영수증 | 🟠 Medium-High | server (`iap_receipts` 테이블, UNIQUE 제약) |
| FCM / APNs 토큰 | 🟡 Medium | server (`device_tokens` 테이블) |
| 결제 / 코인 / 아이템 잔액 | 🟠 Medium-High | server (DB transactions) |
| 게임 결과 / 점수 / 랭킹 | 🟡 Medium | server (DB) |
| Admin 토큰 | 🔴 High | env (`ADMIN_TOKEN`), 운영 secret manager |
| 외부 API 키 (Google / Apple / FCM / reCAPTCHA) | 🔴 High | env, 운영 secret manager |
| 사용자 프로필 (닉네임, 레벨, 인벤토리) | 🟢 Low-Medium | server (DB) |
| 디바이스 IDFA / IDFV | 🟡 Medium (privacy) | client only, 서버 전송 안 함 |

### 8.2 신뢰 경계 (Trust Boundaries)

```
[Client App] ──HTTPS─▶ [Server (Express)]
                          │
                          ├──TLS─▶ [MySQL] (private network)
                          ├──HTTPS─▶ [Apple StoreKit / Google Play]
                          ├──HTTPS─▶ [Firebase / FCM / APNs]
                          └──HTTPS─▶ [reCAPTCHA]
```

### 8.3 위협 (Threats) — STRIDE 분석

| 위협 | 영향 자산 | 완화 |
|---|---|---|
| **S**poofing — 다른 사용자로 가장 | 계정 / 세션 | Opaque token + bcrypt + reCAPTCHA + (장래) 2FA |
| **T**ampering — 게임 점수 / 코인 위조 | 잔액 / 랭킹 | 서버 권위 (server-authoritative), DB UNIQUE 제약 |
| **R**epudiation — 결제 부인 | IAP 트랜잭션 | 서버 측 영수증 재검증 + 트랜잭션 로그 + UNIQUE |
| **I**nformation Disclosure — 다른 사용자 데이터 노출 | 모든 사용자 자산 | RBAC + 사용자 ID 검증 + 응답 필터링 |
| **D**enial of Service — 서비스 마비 | 가용성 | rate limiting, helmet, Cloud Run 자동 스케일 |
| **E**levation of Privilege — 일반 → 관리자 | Admin 기능 | Admin 토큰 분리 + IP allowlist (장래) |

### 8.4 알려진 trade-offs

본 프로젝트가 **현재 보호하지 않는 것** (의도적 한계):

- ❌ Side-channel attack (timing, cache, power) — 표준 라이브러리 신뢰
- ❌ Malicious client mod (게임 클라이언트 자체의 무결성) — 서버 권위 모델로 우회
- ❌ Compromised mobile OS (rooted / jailbroken) — 표준 mobile threat model 적용
- ❌ Man-in-the-Middle 시 사용자가 인증서 무시 — 사용자 책임

위 영역의 보고도 환영하나, fix 우선순위가 낮을 수 있습니다.

---

## 9. Security Best Practices — 사용자 / 운영자 / 기여자

### 9.1 사용자 (앱 사용자)

- 강력한 비밀번호 사용 (12자 이상, 영문 + 숫자 + 특수문자)
- 비밀번호 재사용 X (password manager 권장)
- 의심스러운 로그인 알림 시 즉시 비밀번호 변경
- jailbroken / rooted 기기에서 본 앱 사용 권장 X

### 9.2 운영자 (자체 호스팅하는 자)

- ✅ 모든 시크릿 (env vars) 을 secret manager 에 저장 (Cloud Secret Manager / AWS Secrets / Vault)
- ✅ HTTPS 강제 (`server.js` 에서 HTTP 리다이렉트)
- ✅ MySQL 을 private network 에 격리
- ✅ Admin 엔드포인트에 IP allowlist 추가
- ✅ 정기 백업 (DB + 사용자 자산)
- ✅ 로그 모니터링 (실패한 로그인, 비정상 트래픽)
- ✅ 의존성 정기 업데이트 (Dependabot 활용)
- ❌ `.env` 파일을 commit 하지 말 것
- ❌ Default `ADMIN_TOKEN` 값 그대로 운영 X

### 9.3 기여자

- ✅ `.gitignore` 에 시크릿 패턴 등록 확인
- ✅ commit 전 `git diff` 로 시크릿 누출 점검
- ✅ Dependabot PR 우선 검토
- ✅ 새 endpoint 추가 시 — 인증 / 권한 / 입력 검증 체크리스트
- ✅ DB 쿼리 — prepared statement 만 사용 (string concat X)
- ✅ 외부 입력 (req.body) — Joi / 자체 검증 후 사용
- ❌ 디버그 로그에 PII / 토큰 출력 X

[`docs/wiki/Contributing.md`](docs/wiki/Contributing.md) §🔐 보안 / 시크릿 참조.

---

## 10. Past Advisories

본 섹션은 공개된 보안 advisory 의 전체 이력을 담습니다 (현재 비어 있음).

| Advisory | Date | Severity | Component | Reporter | CVE |
|---|---|---|---|---|---|
| — | — | — | — | — | — |

전체 advisory 목록 — [github.com/GabrielJung0727/findit-rebuild/security/advisories](https://github.com/GabrielJung0727/findit-rebuild/security/advisories).

---

## 11. Automated Security Tooling

본 프로젝트는 다음 자동 보안 도구를 운영합니다:

| 도구 | 대상 | 빈도 | 결과 위치 |
|---|---|---|---|
| **Dependabot** | npm / pub / gradle / github-actions 의존성 | 매주 (월요일 09:00 KST) | PR 자동 생성 |
| **Dependabot Security Updates** | known CVE 가진 의존성 | 즉시 | PR 자동 생성 |
| **Secret Scanning + Push Protection** | 모든 commit / push | 실시간 | 차단 + 알림 |
| **Gitleaks** (CI) | PR 의 add/modify diff | PR 마다 | Actions 결과 |
| **OSV-Scanner** (CI) | 모든 의존성 vs OSV DB | PR 마다 + nightly | Actions 결과 |
| **CodeQL** (해당 시) | 코드 정적 분석 | PR 마다 + weekly | Security tab |

설정 파일:
- [`.github/dependabot.yml`](.github/dependabot.yml)
- [`.github/workflows/security.yml`](.github/workflows/security.yml)

---

## 12. Reference Standards

본 정책은 다음을 참조하여 작성되었습니다:

- [ISO/IEC 29147:2018](https://www.iso.org/standard/72311.html) — Vulnerability disclosure
- [ISO/IEC 30111:2019](https://www.iso.org/standard/69725.html) — Vulnerability handling processes
- [CERT/CC Coordinated Vulnerability Disclosure Process](https://vuls.cert.org/confluence/display/CVD/Executive+Summary)
- [Google Project Zero — Disclosure Policy](https://googleprojectzero.blogspot.com/p/vulnerability-disclosure-policy.html)
- [DOJ — Framework for a Vulnerability Disclosure Program](https://www.justice.gov/criminal-ccips/page/file/983996/download)
- [GitHub Security Lab — Coordinated Disclosure](https://securitylab.github.com/advisories)
- [OWASP Top 10 (2021)](https://owasp.org/www-project-top-ten/)
- [CWE Top 25 (2024)](https://cwe.mitre.org/top25/)

---

## 13. Contact Summary

| 목적 | 채널 |
|---|---|
| 일반 보안 보고 | [GitHub Security Advisory](https://github.com/GabrielJung0727/findit-rebuild/security/advisories/new) |
| 긴급 / Active exploit | `jaewonjung1004@gmail.com` (제목 `[FindIt SECURITY URGENT]`) |
| 일반 이메일 | `jaewonjung1004@gmail.com` (제목 `[FindIt SECURITY]`) |
| 보안 외 일반 사항 | [GitHub Issues](https://github.com/GabrielJung0727/findit-rebuild/issues) |
| Maintainer | [@GabrielJung0727](https://github.com/GabrielJung0727) |

---

## 14. Updates to this Policy

본 SECURITY.md 는 maintainer 가 임의로 갱신할 수 있습니다. 중요한 변경 (SLA 단축, scope 축소 등) 은:

1. 본 문서 상단의 "Last Updated" 갱신
2. README + CHANGELOG 에 변경 요약 공지
3. 진행 중인 보고건은 보고 당시 정책 기준 처리 (no retroactive)

---

본 문서의 한국어 버전이 정본입니다. 영문 표현은 참고용입니다.

The Korean version of this document is authoritative; English passages are for reference.

---

🛡 **본 정책에 따라 선의로 보안 연구를 수행해주시는 모든 분께 감사드립니다.**

🛡 **Thank you to all who research security in good faith under this policy.**
