# Contributing

기여 가이드 — PR 흐름 + 코드 스타일 + 커밋 규칙.

## 기여 종류

| 종류 | 어디서 시작 |
|---|---|
| 버그 리포트 | [GitHub Issues](https://github.com/GabrielJung0727/findit-rebuild/issues) |
| 기능 제안 | GitHub Issues + 라벨 `enhancement` |
| 문서 수정 | 직접 PR 또는 Wiki 페이지 ✏️ Edit |
| 코드 변경 | fork → branch → PR |
| 디자인 자산 | (TBD) 디자이너 채널 |

---

## PR 흐름

### 1. fork + clone
```bash
gh repo fork GabrielJung0727/findit-rebuild --clone
cd findit-rebuild
git remote add upstream https://github.com/GabrielJung0727/findit-rebuild.git
```

### 2. branch
```bash
git checkout -b feat/skill-tree-search
# 또는
git checkout -b fix/login-network-error
git checkout -b docs/api-reference-update
git checkout -b refactor/auth-state
```

브랜치 prefix: `feat/`, `fix/`, `docs/`, `refactor/`, `test/`, `chore/`.

### 3. 작업

#### 클라
```bash
cd client_flutter
flutter pub get
# 코드 작업
flutter analyze     # 0 issues 유지
flutter test        # 모두 통과
```

#### 서버
```bash
cd server
npm install
# 코드 작업
node -e "require('./src/...')"   # 모듈 로드 smoke
docker compose up -d             # 통합 테스트 시 MySQL 띄우고 수동 검증
```

### 4. commit

[Conventional Commits](https://www.conventionalcommits.org/) 권장:

```
feat(client): add skill tree search bar
fix(server): handle 21007 sandbox fallback
docs(wiki): update IAP-Integration with Apple v2 API
test(client): cover game_controller AI tick edge cases
refactor(server): extract socket handlers to shared module
chore(ci): bump flutter version to 3.27.4
```

### 5. push + PR
```bash
git push origin feat/skill-tree-search
gh pr create --title "feat(client): add skill tree search bar" \
  --body "..."
```

PR template (자동 적용):
```markdown
## What
<변경 요약 1~2줄>

## Why
<배경 / 이슈 번호 + 동기>

## How
<주요 변경 포인트 bullet>

## Tests
- [ ] flutter analyze 통과
- [ ] flutter test 통과
- [ ] 수동 검증 시나리오: ...

## Screenshots (UI 변경 시)
<before / after>

## Related
Closes #123
```

### 6. 리뷰 + merge

CI 통과 + 리뷰 승인 → squash merge (하나의 깔끔한 commit 으로).

---

## 코드 스타일

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

서버는 별도 prettier/eslint 설정 X (TBD). 컨벤션:
- `const` / `let` 우선, `var` X
- 화살표 함수 우선
- `async/await` 우선 (`then` 지양)
- `'single quotes'`
- `;` 끝 (semicolons)
- 들여쓰기 2 spaces

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
- 테이블/컬럼: `snake_case`
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

## 디렉터리 / 네이밍

### Dart
- 파일: `snake_case.dart`
- 클래스: `PascalCase`
- 변수/함수: `camelCase`
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

## 테스트 규칙

PR 에 테스트 포함:
- 새 wrapper / 메서드 → 단위 테스트 1개 이상
- 버그 fix → 회귀 테스트 (실패 reproduce → 수정 → 통과)
- 화면 추가 → smoke widget test 1개 (build 만 검증)
- analyze 0 issues 유지

`flutter test` 통과 + `flutter analyze` 0 → CI 통과 → merge 가능.

[[Testing]] 참조.

---

## 커밋 메시지

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
- `test`: 테스트 추가/수정
- `chore`: 빌드 / CI / 의존성

### scope
- `client` — Flutter 클라
- `server` — Node 서버
- `db` — DB 마이그
- `wiki` — 위키
- `ci` — CI 파일

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

## 게임 룰 변경 시 주의

원본 게임 룰 (점수/콤보/AI/HP/강화 확률) 은 **서버 + 클라 양쪽이 동기**:

| 위치 | 파일 |
|---|---|
| 서버 진실 자료 | `server/src/util/balance.js` |
| 클라 mirror | `client_flutter/lib/util/constants.dart` |
| 디컴파일 reference | `android_project/.../GameView.java` |

룰 변경 시:
1. 서버 `balance.js` 수정
2. 클라 `constants.dart` 수정
3. `client_flutter/test/util/constants_test.dart` 갱신
4. 04-26.md `§7` 또는 `§8` 의 룰 표 갱신
5. (영향 시) `docs/04-24.md` 도 갱신

---

## 위키 수정

### 직접 편집 (간단한 수정)
- 위키 페이지 우상단 ✏️ Edit → markdown 수정 → Save
- 백업 안 됨 — 큰 변경 시 PR 추천

### PR 로 (큰 변경)
1. `docs/wiki/Page-Name.md` 수정
2. PR
3. merge 후 위키 repo 에 push (수동):
   ```bash
   git clone https://github.com/GabrielJung0727/findit-rebuild.wiki.git
   cp ../docs/wiki/*.md findit-rebuild.wiki/
   cd findit-rebuild.wiki
   git add -A && git commit -m "sync wiki from main" && git push
   ```

---

## 보안 / 시크릿

### 절대 commit X

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

`.gitignore` 가 보호하지만, 실수로 commit 시:
```bash
# 즉시 회전 + 이전 commit 에서 제거
git rm --cached <file>
git filter-branch --tree-filter 'rm -f <file>' HEAD
# 또는 BFG Repo-Cleaner 사용
```

### 발견 시 즉시
1. 시크릿 회전 (Apple key 재발급, Google service account 재발급 등)
2. PR / Issue 비공개 처리
3. 보안 담당자에게 알림

---

## 코드 리뷰 가이드

### 리뷰어
- 변경 의도 이해 (PR description 읽기)
- 테스트 추가 여부 확인
- 스타일 (위 컨벤션)
- 보안 (시크릿 노출 X, 인증 우회 X)
- 성능 (DB 쿼리 N+1, 무거운 위젯 rebuild)
- 명확한 변수명 / 주석

### 작성자
- 작은 PR (200 LoC 이내) 선호 — 큰 변경은 분할
- self-review 먼저 — 본인이 한 번 훑고 PR
- description 충분히 — 리뷰어 시간 절약
- 피드백 받으면 commit + push (force-push X — review 흐름 보존)

---

## 협업 채널

- **GitHub Issues** — 버그 / 기능 / 질문
- **PR comments** — 코드 리뷰
- **Wiki Discussion** — (선택, 활성화 시) 일반 토론

이슈 라벨:
- `bug` — 버그
- `enhancement` — 새 기능
- `docs` — 문서
- `good first issue` — 초보 친화
- `help wanted` — 도움 요청
- `breaking change` — 호환성 깨짐

---

## 행동 강령

- 존중과 친절
- 다양성 환영
- 건설적 비판
- 개인 공격 X

---

## 첫 PR 전 체크리스트

- [ ] [[Getting-Started]] 로 환경 셋업
- [ ] [[Project-Structure]] 로 코드 위치 파악
- [ ] [[Testing]] 로 테스트 패턴 파악
- [ ] 작은 변경부터 시작 (오타 / 주석 / docs)
- [ ] CI 통과 확인 (analyze + test)
- [ ] PR description 작성

기여 환영합니다 🙌
