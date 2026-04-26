# Contributing

기여 가이드 — Hard Rules, PR 흐름, 코드 스타일, 커밋 규칙, 리뷰 SLA, Code of Conduct.

> 🤝 환영합니다. 작은 오타 fix 라도 PR 은 모두 환영입니다.
> 단, 아래 **Hard Rules** 는 예외 없이 적용됩니다 — 통독 후 진행해주세요.

---

## 🚫 Hard Rules (절대 금지)

다음 행위는 **예외 없이** revert + 기여자 권한 검토 대상입니다.

| # | 금지 행위 | 이유 | 대안 |
|---|---|---|---|
| 1 | `main` 직접 push (`git push origin main`) | CI / 리뷰 우회 → 룰·보안 회귀 위험 | **항상 PR** — 오타 1글자 수정도 PR |
| 2 | `git push --force` to `main` | history 파괴 → 협업자 작업 손실 | feature 브랜치만 force-push 허용 |
| 3 | `--no-verify` / hook 우회 commit | pre-commit 검증 회피 | hook 실패 시 root cause 수정 |
| 4 | 시크릿 commit (`.env`, `*.jks`, `*.p8`, `GoogleService-Info.plist`, `google-services.json`, `firebase-admin*.json`) | 토큰 회전 비용 + 보안 사고 | `.gitignore` 확인 + 시크릿 매니저 사용 |
| 5 | self-merge (단독 승인) | 4-eyes 원칙 위반 | 다른 maintainer 1명 이상 approve 필요 |
| 6 | CI red 상태 merge | 배포 파이프라인 파괴 | 통과 후 merge — flaky 의심 시 재실행 |
| 7 | 의존성 임의 다운그레이드 | 보안 패치 회귀 | upgrade only — downgrade 시 PR 에 CVE/사유 명시 |
| 8 | issue 링크 없는 fix PR (오타·1줄 fix 제외) | 추적성 상실 | issue 먼저 → PR 에 `Closes #N` |
| 9 | Production 데이터로 테스트 | PII / GDPR / 약관 위반 | sandbox / fixture 데이터만 |
| 10 | 게임 룰 무단 변경 (점수/콤보/AI/HP/강화 확률) | 원본 보존 원칙 위반 | issue 에 reasoning + 디컴파일 reference 비교 후 PR |
| 11 | i18n key 영문/한글만 단독 추가 | 한쪽 locale 누락 → 런타임 깨짐 | 양쪽 ARB 파일 동시 변경 |
| 12 | 다른 사람 PR 무단 force-push | 협업자 작업 덮어쓰기 | 자기 브랜치만 — 공동 브랜치는 합의 후 |

### 위반 시 절차

1. **1차** — PR revert + author 알림 (issue / PR comment)
2. **2차** — write 권한 임시 회수 + 회의
3. **3차** — maintainer 권한 회수

`main` 직접 push 가 발견되면 즉시 revert + 해당 commit hash 를 issue 에 기록 + 사후 회의.

---

## 🛡 Branch Protection (maintainer 셋업)

위 Hard Rules 를 GitHub 가 **기술적으로 강제**하도록 maintainer 가 설정해야 합니다.

repo Settings → Branches → "Add branch protection rule":

| 옵션 | 값 | 강제하는 Hard Rule |
|---|---|---|
| Branch name pattern | `main` | — |
| Require a pull request before merging | ✅ | #1 (직접 push 차단) |
| Require approvals | `1` 이상 | #5 (self-merge 차단) |
| Dismiss stale approvals on new commits | ✅ | 변경 후 재리뷰 강제 |
| Require status checks before merging | ✅ + `ci / Flutter analyze + test + Android debug APK`, `ci / Node server load smoke` | #6 (CI red merge 차단) |
| Require branches to be up to date before merging | ✅ | merge 전 rebase 강제 |
| Require linear history | ✅ | merge commit 금지 (squash 만) |
| Require signed commits | (선택) | 위조 방지 |
| Do not allow bypassing the above settings | ✅ | admin 도 우회 불가 |
| Allow force pushes | ❌ | #2 (force-push 차단) |
| Allow deletions | ❌ | main 삭제 차단 |

`tags/v*` 도 같은 패턴으로 보호 권장 (릴리스 태그 무단 삭제·이동 방지).

---

## ✅ Definition of Done (DoD)

PR 이 merge 가능하려면 다음 **모두** 만족:

- [ ] 브랜치 prefix 규칙 준수 (`feat/`, `fix/`, `docs/`, `refactor/`, `test/`, `chore/`, `perf/`)
- [ ] commit 메시지 [Conventional Commits](https://www.conventionalcommits.org/) 형식
- [ ] `flutter analyze` 0 issues (클라 변경 시)
- [ ] `flutter test` 모두 통과 (클라 변경 시)
- [ ] 서버 모듈 load smoke 통과 (서버 변경 시)
- [ ] 새 wrapper / 메서드 → 단위 테스트 1개 이상
- [ ] 버그 fix → 회귀 테스트 (실패 reproduce → 수정 → 통과)
- [ ] PR description 의 4 섹션 (What/Why/How/Tests) 작성
- [ ] 관련 wiki 문서 업데이트 (필요 시)
- [ ] CI 모두 green
- [ ] 다른 maintainer 1명 이상 approve
- [ ] merge conflict 해결 (rebase onto main)
- [ ] squash merge 로 1 commit 통합

DoD 미충족 PR 은 `needs-work` 라벨 + 작성자에게 반려 사유 명시.

---

## 🔄 PR 흐름

### 0. 사전 — issue 먼저

작은 fix (오타·typo·docs 1줄) 외에는 issue 먼저 생성:

| 종류 | 제목 prefix | 필수 내용 |
|---|---|---|
| Bug | `[Bug]` | reproduce steps + expected/actual + 환경 (OS/SDK 버전) |
| Feature | `[Feature]` | 동기 + 수락 기준 (acceptance criteria) |
| Docs | `[Docs]` | 페이지 + 무엇을 추가/수정 |
| Refactor | `[Refactor]` | 현재 문제 + 제안 + 영향 범위 |

라벨: `bug` / `enhancement` / `docs` / `good first issue` / `help wanted` / `breaking change`.

### 1. fork + clone

(외부 기여자)
```bash
gh repo fork GabrielJung0727/findit-rebuild --clone
cd findit-rebuild
git remote add upstream https://github.com/GabrielJung0727/findit-rebuild.git
```

(maintainer — 직접 브랜치)
```bash
git clone https://github.com/GabrielJung0727/findit-rebuild.git
cd findit-rebuild
```

### 2. 최신 main 동기화

```bash
git fetch upstream    # 또는 git fetch origin
git checkout main
git rebase upstream/main
```

### 3. branch 생성

브랜치 prefix 필수:

| Prefix | 용도 | 예시 |
|---|---|---|
| `feat/` | 새 기능 | `feat/skill-tree-search` |
| `fix/` | 버그 fix | `fix/login-network-error` |
| `docs/` | 문서 | `docs/api-reference-update` |
| `refactor/` | 리팩토링 (기능 동일) | `refactor/auth-state` |
| `test/` | 테스트 추가/수정 | `test/game-controller-edge` |
| `chore/` | 빌드 / CI / 의존성 | `chore/bump-flutter-3.27.4` |
| `perf/` | 성능 개선 | `perf/asset-loading` |

```bash
git checkout -b feat/skill-tree-search
```

### 4. 작업 + local 검증

(클라)
```bash
cd client_flutter
flutter pub get
flutter gen-l10n
# 코드 작업
flutter analyze            # 0 issues 필수
flutter test               # 모두 통과 필수
flutter build apk --debug  # 빌드 검증
```

(서버)
```bash
cd server
npm install
node -e "require('./src/...')"   # 모듈 로드 smoke
docker compose up -d              # 통합 테스트 시 MySQL
```

### 5. commit (Conventional Commits)

```
<type>(<scope>): <subject>

<body — "왜" 위주, 72자 wrap>

<footer — Closes #N / BREAKING CHANGE / Co-Authored-By>
```

[자세한 규칙 ↓](#-커밋-메시지)

### 6. push → branch (NOT main)

```bash
git push origin feat/skill-tree-search   # ✅
# git push origin main                    # ❌ Hard Rule #1
```

### 7. PR 생성

```bash
gh pr create --title "feat(client): add skill tree search bar" \
  --body "$(cat <<'EOF'
## What
스킬 트리 화면 상단에 검색 바 추가.

## Why
44개 스킬 중 특정 스킬을 빨리 찾기 어려움 (#42).

## How
- `SkillTreeScreen` 에 `TextField` + `_filterController` 추가
- `skillsProvider` 에 검색어 필터 selector
- 검색어 변경 시 debounce 200ms

## Tests
- [x] flutter analyze 0 issues
- [x] flutter test (110 passing — 신규 4 추가)
- [x] 수동: 한글/영문 검색, 빈 결과, 클리어 버튼

## Screenshots
<before / after — UI 변경 시 필수>

## Related
Closes #42
EOF
)"
```

자동 PR template (`.github/PULL_REQUEST_TEMPLATE.md`) 적용 — 위 4 섹션이 자동 펼쳐짐.

### 8. CI green 대기 + 리뷰 받기

- 자동 CI: `ci / flutter`, `ci / server` — 모두 green 필수
- 리뷰 ping: `@maintainer` 멘션 또는 라벨 `needs-review`
- 피드백 받으면: 같은 브랜치에 추가 commit + push (force-push 금지 — review 흐름 보존)

### 9. squash merge

리뷰 approve + CI green → maintainer 가 "Squash and merge" 클릭.

- merge commit 메시지: PR title + body 요약
- merge 후 브랜치 자동 삭제
- main 으로 squash 된 1 commit 만 남음 (linear history)

---

## ⏱ 리뷰 SLA

| 단계 | 기대 시간 |
|---|---|
| 첫 응답 (ack 또는 1차 리뷰) | 24시간 (영업일) |
| 변경 요청 → 재리뷰 | 48시간 |
| 결정 (approve / reject / 보류) | 72시간 |

24시간 응답 없으면 PR comment 또는 issue 로 maintainer 에게 ping.
긴급 fix (보안 / 프로덕션 장애) → 라벨 `critical` + maintainer 직접 알림.

---

## 📝 코드 스타일

### Dart (Flutter 클라)

`analysis_options.yaml`:
```yaml
include: package:flutter_lints/flutter.yaml
analyzer:
  language:
    strict-casts: true
    strict-inference: true
    strict-raw-types: true
linter:
  rules:
    prefer_single_quotes: true
    require_trailing_commas: true
    avoid_print: true
    avoid_dynamic_calls: true
    use_super_parameters: true
```

자동 수정:
```bash
dart fix --apply
dart format .
```

#### 권장 패턴

```dart
// ✓ Riverpod ConsumerWidget
class MyScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(authControllerProvider);
    // ...
  }
}

// ✓ Immutable + copyWith
@immutable
class MyState {
  const MyState({required this.value});
  final int value;
  MyState copyWith({int? value}) => MyState(value: value ?? this.value);
}

// ✓ Async + try/catch
Future<void> myAction() async {
  try {
    final result = await api.call();
    // success
  } on ApiResultException catch (e) {
    // 서버 result != '000'
  } catch (e) {
    // 네트워크 / 기타
  }
}

// ✓ Single quotes + trailing comma
const items = <String>[
  'item1',
  'item2',
];

// ✓ Type-safe casts
final user = body['user'] as Map<String, dynamic>;
final level = (user['level'] as num?)?.toInt() ?? 0;
```

#### 피해야 할 패턴

```dart
// ✗ print (use debugPrint)
print('debug');

// ✗ dynamic 남발
final data = response;
data.foo;  // dynamic call

// ✗ trailing comma 누락
const items = ['a', 'b'];   // 자동 포맷 깨짐

// ✗ String 인터폴레이션 + 단일 변수
final s = '$name';   // → name 그대로 사용

// ✗ ! null assertion 과다
final x = nullable!.foo!.bar!;
```

### JavaScript / Node (서버)

서버는 별도 prettier/eslint 미설정 (TBD). 컨벤션:

- `const` / `let` 우선, `var` X
- 화살표 함수 우선
- `async/await` 우선 (`then` 지양)
- `'single quotes'`
- `;` 끝 (semicolons)
- 들여쓰기 2 spaces
- 한 줄 80~100자 권장

Express 라우트 패턴:

```js
router.all('/member/example.json', async (req, res, next) => {
  try {
    const p = { ...req.query, ...req.body };
    const { userId, foo } = p;
    if (!userId) return fail(res, C.RESULT_NOID);

    const result = await tx(async (conn) => {
      // 트랜잭션 작업
      return { value };
    });

    if (result.err) return fail(res, result.err);
    ok(res, result);
  } catch (e) { next(e); }
});
```

### SQL

`schema.sql` / migrations:

- 테이블 / 컬럼: `snake_case`
- ENGINE=InnoDB, CHARSET=utf8mb4
- PRIMARY KEY 명시
- 외래키: `fk_<table>_<column>`
- 인덱스: `idx_<columns>`
- UNIQUE: `uk_<columns>`
- `IF NOT EXISTS` (마이그레이션 멱등성)

```sql
CREATE TABLE IF NOT EXISTS `your_table` (
  `id`         BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id`    VARCHAR(128)    NOT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_user_time` (`user_id`, `created_at`),
  CONSTRAINT `fk_your_user` FOREIGN KEY (`user_id`)
    REFERENCES `members`(`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
```

---

## 📂 디렉터리 / 네이밍

### Dart
- 파일: `snake_case.dart`
- 클래스: `PascalCase`
- 변수 / 함수: `camelCase`
- 상수: `camelCase` (`const kMaxRetries = 5;` 도 OK 지만 `camelCase` 우선)
- private: `_underscore`
- import 순서:
  1. `dart:` core
  2. `package:flutter/`
  3. `package:` third-party
  4. 같은 프로젝트 (`'../api/api_client.dart'`)
- 각 그룹 사이 빈 줄 1줄

### Riverpod Provider
- `<feature>Provider` (e.g. `authControllerProvider`)
- 상태 클래스 = `<Feature>State`
- 컨트롤러 = `<Feature>Controller`

### 화면
- 파일: `<feature>_screen.dart` (e.g. `login_screen.dart`)
- 클래스: `<Feature>Screen`

### API wrapper
- 파일: `<domain>_api.dart`
- 클래스: `<Domain>Api`
- 메서드: 서버 endpoint 이름 (camelCase) — `login`, `buyItemAndSpendCoin`

---

## 🧪 테스트 규칙

PR 에 테스트 포함 — 다음 기준 충족:

| 변경 종류 | 필수 테스트 |
|---|---|
| 새 wrapper / 메서드 | 단위 테스트 1개 이상 (happy path + edge case 1) |
| 버그 fix | 회귀 테스트 (수정 전 fail 확인 → 수정 후 pass) |
| 화면 추가 | smoke widget test (build + 주요 인터랙션) |
| 게임 룰 변경 | `constants_test.dart` 갱신 + 서버 unit test |
| API endpoint 추가 | 통합 테스트 (handler → DB → response) |
| WebSocket 코드 추가 | 코드 / 형식 회귀 테스트 |
| i18n key 추가 | 양쪽 locale (en/ko) ARB 갱신 + `gen-l10n` smoke |

기준선 (2026-04-26 기준):
- 클라: **106 tests passing**
- 서버: module load smoke + util 테스트
- analyze: **0 issues**

PR 후 기준선이 떨어지면 merge 차단.

[[Testing]] 참조.

---

## 🏷 커밋 메시지

```
<type>(<scope>): <subject>

<body 선택>

<footer 선택>
```

### type
- `feat`: 새 기능
- `fix`: 버그 fix
- `docs`: 문서 수정
- `style`: 포맷팅 (의미 변화 X)
- `refactor`: 리팩토링 (기능 변화 X)
- `perf`: 성능 개선
- `test`: 테스트 추가 / 수정
- `chore`: 빌드 / CI / 의존성

### scope
- `client` — Flutter 클라
- `server` — Node 서버
- `db` — DB 마이그
- `wiki` — 위키
- `ci` — CI 파일
- `iap` — IAP
- `i18n` — 다국어

### subject
- 50자 이내, 동사 시작 (영어 imperative 또는 한국어 동사로)
- 마침표 X
- 첫 글자 소문자

### body
- 72자 줄바꿈
- "왜" 위주 (코드는 "어떻게" 보여줌)

### footer
- `Closes #123` — 이슈 자동 닫기
- `BREAKING CHANGE: ...` — 호환 깨는 변경
- `Co-Authored-By: name <email>` — 공동 저자

### 예시

```
feat(client): wire AnalyticsHelper to game flow

- gameStart on lobby/battle entry
- gameEnd in game_screen with reason/findNum/elapsedSeconds
- purchaseItem/purchaseIap/skillLearn/itemUpgrade hooks

Closes #42
```

```
fix(server): handle Apple status 21007 sandbox fallback

Apple recommends production-first then sandbox retry.
Without this, all sandbox testers (TestFlight) saw 21007.
```

```
docs(wiki): expand IAP-Integration with v2 API path
```

---

## 🎮 게임 룰 변경 시

원본 게임 룰 (점수 / 콤보 / AI / HP / 강화 확률) 은 **서버 + 클라 양쪽 동기 필수**.

| 위치 | 파일 | 역할 |
|---|---|---|
| 서버 진실 | `server/src/util/balance.js` | runtime 결정 |
| 클라 mirror | `client_flutter/lib/util/constants.dart` | 표시 / 미리보기 |
| 디컴파일 ref | `android_project/.../GameView.java` | 원본 검증 |

### 룰 변경 PR 체크리스트

- [ ] `balance.js` 수정 (서버 진실)
- [ ] `constants.dart` 수정 (클라 mirror)
- [ ] `constants_test.dart` 갱신
- [ ] 서버 unit 테스트 갱신
- [ ] `docs/04-26.md` §7 / §8 룰 표 갱신
- [ ] (영향 시) `docs/04-24.md` 갱신
- [ ] PR description 에 **디컴파일 reference 비교 표** 포함

원본과 다른 룰 도입 시:
- `breaking change` 라벨
- commit footer `BREAKING CHANGE: ...`
- migration guide (서버 + 클라 양쪽)

---

## 📄 위키 수정

### 흐름 (자동화)

1. 메인 repo 에서 `docs/wiki/<Page>.md` 수정
2. branch (`docs/wiki-<page>`) → commit → PR → review → merge
3. **`wiki-sync` workflow 가 자동 푸시** — 별도 작업 불필요

### 직접 위키 편집 (간단한 수정만)

- 위키 페이지 ✏️ Edit → Save
- ⚠ 메인 repo 와 동기 안 됨 → 다음 자동 sync 시 메인 repo 가 위키를 덮어씀
- **권장**: 큰 변경은 항상 PR 흐름

운영자 셋업 (1회) — [[SYNC]] 참조.

---

## 🔐 보안 / 시크릿

### 절대 commit 금지

```
.env
**/key.properties
**/*.jks
**/GoogleService-Info.plist
**/google-services.json
firebase-admin*.json
*.p8
APPLE_SHARED_SECRET
RECAPTCHA_SECRET
```

`.gitignore` 가 1차 방어. 실수 시:

```bash
# 1. 즉시 시크릿 회전 (Apple key 재발급 / Google service account 재발급 등)
# 2. 이전 commit 에서 제거
git rm --cached <file>
git filter-branch --tree-filter 'rm -f <file>' HEAD
# 또는 BFG Repo-Cleaner — https://rtyley.github.io/bfg-repo-cleaner/
# 3. force-push 후 모든 협업자 재 clone 안내
```

### 보안 취약점 발견 시 — Responsible Disclosure

⚠ **public issue 로 보고하지 말 것** — 악용 위험.

대신:

1. **GitHub Security Advisory** 사용 (private)
   - repo → Security → Advisories → "New draft security advisory"
2. 또는 maintainer 에게 직접 이메일
3. 보고 내용에 포함:
   - 영향 범위 (어떤 endpoint / 화면 / 데이터)
   - reproduce 단계 (PoC 코드 환영)
   - 권장 fix (있다면)
4. 수정 + 배포 완료 후 공개 disclosure
5. 보고자 credit (희망 시 — Hall of Fame 등재)

### 대응 SLA

| Severity | 첫 ack | Patch 배포 |
|---|---|---|
| Critical (인증 우회 / RCE / 결제 위조) | 24시간 | 7일 |
| High (정보 누출 / IDOR) | 48시간 | 14일 |
| Medium / Low | 72시간 | 30일 |

---

## 👀 코드 리뷰 가이드

### 리뷰어 체크리스트

- [ ] 변경 의도 이해 (PR description 읽기)
- [ ] 테스트 추가 여부 + 회귀 커버리지
- [ ] 스타일 (위 컨벤션)
- [ ] 보안 (시크릿 노출 X, 인증 우회 X, SQL injection 가능성)
- [ ] 성능 (DB 쿼리 N+1, 무거운 위젯 rebuild)
- [ ] 명확한 변수명 + 필요 주석만 (과한 주석 X)
- [ ] 외부 라이브러리 추가 시 — 라이선스 / 유지보수 활성도 / 대안
- [ ] Hard Rules 위반 없는지

### 리뷰 톤

- ✅ "이 부분 X 케이스에서 어떻게 동작할까요?"
- ✅ "이 함수는 Y 로 분리하면 테스트 쉬울 것 같아요."
- ❌ "왜 이렇게 짰어요?" (공격적)
- ❌ "그냥 X 로 바꿔요." (이유 없음)

### 작성자 가이드

- 작은 PR (200 LoC 이내) 선호 — 큰 변경은 분할
- 500+ LoC PR 은 사유 명시 (e.g. 마이그레이션, 자동 생성 코드)
- self-review 먼저 — 본인이 한 번 훑고 PR
- description 충분히 — 리뷰어 시간 절약
- 피드백 받으면 commit + push (force-push 금지 — review 흐름 보존)
- 리뷰 코멘트 모두 응답 (수락 / 반박 / 보류 — 무시 X)

---

## 🤝 Code of Conduct

### 우리는 다음을 약속합니다

- 존중과 친절 — 모든 협업 채널에서
- 다양성 환영 — 경험 · 언어 · 배경 · 신원 무관
- 건설적 비판 — 코드를 비판하되 사람을 비판하지 않음
- 추정 X — 의도 추측 X, 명시적 질문
- 신참 환영 — 어리석은 질문 없음, 모두 처음이 있음

### 다음은 용납되지 않습니다

- 개인 공격 / 인신 공격
- 차별·혐오 발언 (성별·인종·종교·국적·장애·성적 지향 등)
- 성희롱 (직접 / 간접 / 외설적 자료)
- 의도적 트롤링 / 도배 / 스팸
- 미동의 개인정보 게시 (doxxing)
- 다른 사람의 작업 무단 도용 또는 credit 누락
- 공개 채널에서 다른 기여자에 대한 인격 비방

### 위반 보고

1. maintainer 에게 직접 알림 (이메일 / DM — public issue X, 재가해 위험)
2. maintainer 가 1주 내 조사 (보고자 익명성 보장)
3. 조치 단계: 비공개 경고 → 공개 경고 → 임시 차단 (1~30일) → 영구 차단

기반 — [Contributor Covenant 2.1](https://www.contributor-covenant.org/version/2/1/code_of_conduct/) 채택.

---

## 💬 협업 채널

| 채널 | 용도 |
|---|---|
| **GitHub Issues** | 버그 / 기능 / 질문 (공개 토론 가능한 것) |
| **PR comments** | 코드 리뷰 |
| **GitHub Security Advisory** | 보안 취약점 (private) |
| **개인 이메일** | Code of Conduct 위반 / 민감 사안 |
| **(TBD) Discussions** | 일반 토론 (활성화 시) |

### 이슈 라벨

| 라벨 | 의미 |
|---|---|
| `bug` | 버그 |
| `enhancement` | 새 기능 |
| `docs` | 문서 |
| `good first issue` | 초보 친화 (~1일 작업) |
| `help wanted` | 도움 요청 |
| `breaking change` | 호환성 깨짐 |
| `security` | 보안 (private 처리 권장) |
| `wontfix` | 의도된 동작 — fix 안 함 |
| `duplicate` | 중복 |
| `needs-repro` | 재현 단계 필요 |
| `needs-review` | 리뷰 ping |
| `needs-work` | DoD 미충족 |
| `critical` | 긴급 (보안 / 프로덕션 장애) |

---

## 📃 라이선스 / 저작권

기여한 코드는 프로젝트 라이선스 (TBD) 를 따릅니다.

- 외부 코드 차용 시 — 라이선스 호환성 확인 + credit 명시
- AI 생성 코드 — PR description 에 도구 명시 (e.g. "Claude Code 활용")
- 데이터 / 자산 — 출처 + 사용 권한 명시

---

## 📋 첫 PR 전 체크리스트

- [ ] [[Getting-Started]] 로 환경 셋업
- [ ] [[Project-Structure]] 로 코드 위치 파악
- [ ] [[Testing]] 로 테스트 패턴 파악
- [ ] [[Game-Design]] 로 게임 룰 이해 (룰 변경 시)
- [ ] 작은 변경부터 시작 (오타 · 주석 · docs)
- [ ] 위 [Hard Rules](#-hard-rules-절대-금지) 1회 통독
- [ ] 위 [Definition of Done](#-definition-of-done-dod) 1회 통독
- [ ] [Code of Conduct](#-code-of-conduct) 1회 통독
- [ ] CI 통과 확인 (analyze + test)
- [ ] PR description 4 섹션 (What/Why/How/Tests) 작성

기여 환영합니다 🙌
