# FindIt 2026 P0 — 기반 (레포 재구성 · 에셋 파이프라인 · 공유 프로토콜) Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** 2012년 원작 APK에 갇혀 있는 에셋 492장(PNG 481 + OGG 11)과 좌표 262개를 재실행 가능한 스크립트로 꺼내고, 클라이언트와 서버가 공유할 타입 안전 프로토콜을 세운다.

**Architecture:** 기존 트리 전체를 `legacy/`로 격리해 읽기 전용 진실 출처로 삼는다. `tools/`의 추출기가 거기서 읽어 `content/`(퍼즐 JSON + WebP)와 `app/assets/`(UI·오디오)를 생성한다. `packages/protocol/`은 메시지를 한 번만 선언하고 TypeScript 검증기와 Dart 데이터 클래스를 **생성**한다 — 클라와 서버가 같은 메시지를 두 번 정의하면 반드시 어긋나기 때문이다.

**Tech Stack:** Node 24 LTS · TypeScript 5.7 · npm workspaces · vitest 3 · tsx · sharp

**Spec:** [`docs/superpowers/specs/2026-09-18-findit-2026-p0-design.md`](../specs/2026-09-18-findit-2026-p0-design.md)

## Global Constraints

- **Node 런타임**: 24 LTS. `.nvmrc` = `24`, Docker `node:24-alpine`, CI `node-version: 24`. 개발 머신의 Node 25.6은 비-LTS이나 로컬 개발에는 허용한다. `engines`는 `">=24"` (npm 기본값에서 advisory).
- **패키지 매니저**: npm workspaces. pnpm/yarn 도입 금지.
- **언어**: 모든 신규 서버·툴 코드는 TypeScript. `any` 금지, `strict: true`.
- **베이스 이미지 규격**: 전 퍼즐 640×720 고정 (30세트 전부 확인됨).
- **퍼즐 rect 수**: 이미지당 7~10개, 30세트 합계 **262개**. "이미지당 7개"는 PDF의 단순화이므로 코드에 하드코딩 금지.
- **노출 개수**: 정의된 N개 중 **5개** 랜덤.
- **커밋**: 각 Task 종료 시 1커밋. 커밋 메시지는 한국어 본문 + Conventional Commits 접두어.
- **`legacy/`는 읽기 전용**: 추출기는 읽기만 한다. `legacy/` 아래 파일을 수정하는 코드를 쓰지 않는다.

---

## File Structure

| 경로 | 책임 |
|---|---|
| `legacy/` | 원작·v1 전량 격리. 읽기 전용 진실 출처 |
| `package.json` · `tsconfig.base.json` · `vitest.config.ts` | 워크스페이스 루트 설정 |
| `tools/src/java-constants.ts` | Java `static final int` 상수표 로드·해석 |
| `tools/src/puzzle-parser.ts` | `Objects.java` → `Puzzle[]` 파싱 + 검증 |
| `tools/src/bin/extract-puzzles.ts` | 퍼즐 CLI → `content/puzzles/` |
| `tools/src/bin/extract-images.ts` | 퍼즐 이미지 → WebP |
| `tools/src/bin/extract-assets.ts` | UI·오디오 → `app/assets/` |
| `packages/protocol/src/schema.ts` | 메시지 선언 (단일 진실 출처) |
| `packages/protocol/src/validate.ts` | 런타임 검증기 |
| `packages/protocol/tools/gen-dart.ts` | Dart 데이터 클래스 생성기 |

파싱 로직(`puzzle-parser.ts`)과 CLI(`bin/extract-puzzles.ts`)를 분리하는 이유는 파싱이 순수 함수여야 테스트할 수 있기 때문이다. CLI는 파일 I/O만 담당한다.

---

### Task 1: `legacy/` 격리 + 키스토어 유출 차단

**Files:**
- Create: `legacy/artifacts/` (디렉터리)
- Modify: `.gitignore`
- Move: `android_project` `client_flutter` `decoded_apk` `jadx_output` `server` `codemagic.yaml` `deploy.sh` `GCP_DEPLOYMENT.md` → `legacy/`
- Move: `game.apk` `game.apk.jadx` `findit-test-v1.01.apk` `findit-test-v1.01-mac.zip` → `legacy/artifacts/`

**Interfaces:**
- Consumes: 없음 (첫 태스크)
- Produces: 이후 모든 태스크가 참조하는 경로
  - `legacy/android_project/app/src/main/java/com/findit/battle/Objects.java`
  - `legacy/android_project/app/src/main/java/com/findit/battle/GameView.java`
  - `legacy/android_project/app/src/main/java/com/feelingk/iap/util/Defines.java`
  - `legacy/decoded_apk/res/drawable-hdpi-v4/` (PNG 481장 = 퍼즐 292 + UI 189)
  - `legacy/decoded_apk/res/raw/` (OGG 11개)

- [ ] **Step 1: 키스토어와 빌드 산출물을 먼저 무시 목록에 넣는다**

`android_project/findit-release.keystore`는 릴리스 서명 키스토어인데 현재 untracked이며 gitignore 대상도 아니다. 이 상태에서 `git add -A`를 하면 서명 키가 영구히 이력에 남는다. **파일을 옮기기 전에** 막아야 한다.

`.gitignore` 끝에 추가:

```gitignore
# 서명 키스토어 — 절대 커밋 금지
*.keystore
*.jks
legacy/android_project/local.properties

# Flutter / Dart 빌드 산출물
legacy/client_flutter/build/
legacy/client_flutter/.dart_tool/
app/build/
app/.dart_tool/

# Node
node_modules/

# 에셋 파이프라인 산출물 (tools 로 재생성 가능)
content/images/
app/assets/legacy/
app/assets/audio/
```

`content/puzzles/`는 무시하지 **않는다**. 좌표 JSON은 작고, diff가 사람이 읽을 수 있어 리뷰 가치가 있다.

- [ ] **Step 2: 키스토어가 실제로 차단됐는지 확인**

Run:
```bash
git check-ignore -v android_project/findit-release.keystore && echo "BLOCKED OK"
```
Expected: `.gitignore:NN:*.keystore ...` 출력 후 `BLOCKED OK`. 아무것도 안 나오면 Step 1이 잘못된 것이니 진행하지 말 것.

- [ ] **Step 3: 이동 전 작업 트리를 체크포인트로 커밋**

작업 트리에 v1 변경 50건이 남아 있다. 이동과 뒤섞이면 `git mv`의 rename 감지가 깨져 이력 추적이 끊긴다. 먼저 분리해 커밋한다.

```bash
git add -A
git status --short | head -20   # 키스토어가 목록에 없는지 눈으로 확인
git commit -m "chore: v1 작업 트리 체크포인트 (legacy 격리 직전)"
```

- [ ] **Step 4: `legacy/` 로 이동**

```bash
mkdir -p legacy/artifacts
git mv android_project client_flutter decoded_apk jadx_output server legacy/
git mv codemagic.yaml deploy.sh GCP_DEPLOYMENT.md legacy/
git mv game.apk game.apk.jadx findit-test-v1.01.apk findit-test-v1.01-mac.zip legacy/artifacts/
```

루트에 남는 것: `docs/` `landing/` `.github/` `.vscode/` `README.md` `LICENSE` `NOTICE` `CLA.md` `LEGAL.md` `SECURITY.md` `.gitignore`

- [ ] **Step 5: 이력이 보존됐는지 검증**

Run:
```bash
git add -A
git log --follow --oneline -- legacy/android_project/app/src/main/java/com/findit/battle/Objects.java | tail -3
ls legacy/decoded_apk/res/drawable-hdpi-v4/*.png | wc -l
ls legacy/decoded_apk/res/raw/*.ogg | wc -l
```
Expected: `git log --follow`가 이동 **이전** 커밋들을 보여줄 것. PNG `481`, OGG `11`.

숫자가 다르면 이동이 불완전한 것이니 다음 태스크로 넘어가지 말 것.

- [ ] **Step 6: 커밋**

```bash
git add -A
git commit -m "refactor: 원작·v1 전체를 legacy/ 로 격리

2026 버전을 루트에 새로 세우기 위해 기존 트리를 통째로 legacy/ 아래로
옮긴다. 삭제가 아니라 격리다 — tools/ 의 추출기가 여기서 읽어
content/ 와 app/assets/ 를 생성하므로 빌드 의존성으로 살아 있다.

git mv 를 써서 rename 감지가 동작하므로 git log --follow 로 이동 이전
이력을 계속 추적할 수 있다.

아울러 릴리스 서명 키스토어(*.keystore)를 .gitignore 에 추가한다.
현재 untracked 이면서 무시 대상도 아니라 git add -A 한 번이면 서명 키가
영구히 이력에 남는 상태였다."
```

---

### Task 2: 워크스페이스 스캐폴드

**Files:**
- Create: `package.json`, `tsconfig.base.json`, `vitest.config.ts`, `.nvmrc`
- Create: `tools/package.json`, `tools/tsconfig.json`
- Create: `tools/src/sanity.test.ts`

**Interfaces:**
- Consumes: Task 1의 `legacy/` 경로
- Produces:
  - `npm test` — 전체 테스트 실행
  - `tools` 워크스페이스에서 `tsx`로 스크립트 실행 가능
  - `tsconfig.base.json` — 이후 모든 워크스페이스가 `extends` 하는 베이스

- [ ] **Step 1: 실패하는 sanity 테스트 작성**

`tools/src/sanity.test.ts`:

```typescript
import { describe, expect, it } from 'vitest';
import { existsSync } from 'node:fs';
import { resolve } from 'node:path';

const ROOT = resolve(import.meta.dirname, '../..');

describe('legacy 진실 출처', () => {
  it('원작 좌표 소스가 존재한다', () => {
    const p = resolve(ROOT, 'legacy/android_project/app/src/main/java/com/findit/battle/Objects.java');
    expect(existsSync(p)).toBe(true);
  });

  it('원작 에셋 디렉터리가 존재한다', () => {
    expect(existsSync(resolve(ROOT, 'legacy/decoded_apk/res/drawable-hdpi-v4'))).toBe(true);
    expect(existsSync(resolve(ROOT, 'legacy/decoded_apk/res/raw'))).toBe(true);
  });
});
```

- [ ] **Step 2: 실패 확인**

Run: `npx vitest run tools/src/sanity.test.ts`
Expected: FAIL — `vitest` 미설치 또는 설정 없음 에러.

- [ ] **Step 3: 워크스페이스 설정 작성**

`.nvmrc`:
```
24
```

`package.json`:
```json
{
  "name": "findit-2026",
  "private": true,
  "type": "module",
  "workspaces": ["packages/*", "tools"],
  "engines": { "node": ">=24" },
  "scripts": {
    "test": "vitest run",
    "test:watch": "vitest",
    "typecheck": "tsc -b",
    "content:puzzles": "tsx tools/src/bin/extract-puzzles.ts",
    "content:images": "tsx tools/src/bin/extract-images.ts",
    "content:assets": "tsx tools/src/bin/extract-assets.ts",
    "content:all": "npm run content:puzzles && npm run content:images && npm run content:assets"
  },
  "devDependencies": {
    "@types/node": "^24.0.0",
    "tsx": "^4.19.2",
    "typescript": "^5.7.2",
    "vitest": "^3.0.0"
  }
}
```

`tsconfig.base.json`:
```json
{
  "compilerOptions": {
    "target": "ES2023",
    "lib": ["ES2023"],
    "module": "ESNext",
    "moduleResolution": "bundler",
    "strict": true,
    "noUncheckedIndexedAccess": true,
    "noImplicitOverride": true,
    "verbatimModuleSyntax": true,
    "skipLibCheck": true,
    "declaration": true,
    "composite": true
  }
}
```

`noUncheckedIndexedAccess`는 배열 인덱싱 결과를 `T | undefined`로 만든다. 파서가 정규식 캡처 그룹을 다루므로 이 옵션이 실수를 잡아준다.

`vitest.config.ts`:
```typescript
import { defineConfig } from 'vitest/config';

export default defineConfig({
  test: {
    include: ['tools/src/**/*.test.ts', 'packages/*/src/**/*.test.ts'],
    environment: 'node',
  },
});
```

`tools/package.json`:
```json
{
  "name": "@findit/tools",
  "private": true,
  "type": "module",
  "version": "0.0.0"
}
```

`tools/tsconfig.json`:
```json
{
  "extends": "../tsconfig.base.json",
  "compilerOptions": { "rootDir": "src", "outDir": "dist" },
  "include": ["src/**/*.ts"]
}
```

- [ ] **Step 4: 설치 후 테스트 통과 확인**

Run:
```bash
npm install
npm test
```
Expected: PASS — 2 tests.

- [ ] **Step 5: 커밋**

```bash
git add package.json package-lock.json tsconfig.base.json vitest.config.ts .nvmrc tools/
git commit -m "build: npm workspaces + TypeScript + vitest 스캐폴드

tools 워크스페이스와 루트 테스트 설정을 세운다. Node 는 24 LTS 로
고정한다 (.nvmrc). 개발 머신의 25.6 은 비-LTS 라 런타임 기준으로
삼지 않는다.

noUncheckedIndexedAccess 를 켠다. 뒤이어 쓸 파서가 정규식 캡처 그룹을
다루는데, 이 옵션이 없으면 undefined 접근이 조용히 통과한다."
```

---

### Task 3: Java 상수표 로더

**Files:**
- Create: `tools/src/java-constants.ts`
- Test: `tools/src/java-constants.test.ts`

**Interfaces:**
- Consumes: Task 2의 워크스페이스
- Produces:
  - `parseJavaIntConstants(source: string): Map<string, number>`
  - `loadConstantTable(files: string[]): Map<string, number>`
  - `resolveOperand(operand: string, table: Map<string, number>): number`

**배경:** jadx가 디컴파일하면서 좌표 자리의 숫자 리터럴을 **값이 같은 상수 심볼로 우연히 치환**해 놓았다. 예를 들어 `130`이 `Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG`(=130)로 바뀌어 있다. 좌표를 복원하려면 역치환해야 한다. 심볼은 두 클래스에서 온다 — `Defines.DIALOG_STATE.*` 19종과 `GameView`의 2종.

- [ ] **Step 1: 실패하는 테스트 작성**

`tools/src/java-constants.test.ts`:

```typescript
import { describe, expect, it } from 'vitest';
import { resolve } from 'node:path';
import { loadConstantTable, parseJavaIntConstants, resolveOperand } from './java-constants.js';

const ROOT = resolve(import.meta.dirname, '../..');
const JAVA = resolve(ROOT, 'legacy/android_project/app/src/main/java');

describe('parseJavaIntConstants', () => {
  it('static final int 선언을 뽑는다', () => {
    const table = parseJavaIntConstants(`
      public static final int DLG_DOTORI_AUTH_DIALOG = 130;
      public static final int INACTIVE_ALPHA = 150;
      public static final String IGNORED = "nope";
    `);
    expect(table.get('DLG_DOTORI_AUTH_DIALOG')).toBe(130);
    expect(table.get('INACTIVE_ALPHA')).toBe(150);
    expect(table.has('IGNORED')).toBe(false);
  });

  it('값이 다른 동명 상수는 충돌로 거부한다', () => {
    expect(() =>
      parseJavaIntConstants(`
        public static final int DUP = 1;
        public static final int DUP = 2;
      `),
    ).toThrow(/DUP/);
  });
});

describe('loadConstantTable', () => {
  it('원작 두 소스에서 필요한 상수를 전부 읽는다', () => {
    const table = loadConstantTable([
      resolve(JAVA, 'com/feelingk/iap/util/Defines.java'),
      resolve(JAVA, 'com/findit/battle/GameView.java'),
    ]);
    expect(table.get('DLG_DOTORI_AUTH_DIALOG')).toBe(130);
    expect(table.get('DLG_AUTO_PURCHASE')).toBe(110);
    expect(table.get('VIBRATOR_TIME_NOTFINDRECT')).toBe(200);
    expect(table.get('INACTIVE_ALPHA')).toBe(150);
  });
});

describe('resolveOperand', () => {
  const table = new Map([['DLG_DOTORI_AUTH_DIALOG', 130]]);

  it('숫자 리터럴은 그대로 통과시킨다', () => {
    expect(resolveOperand('187', table)).toBe(187);
    expect(resolveOperand('  0 ', table)).toBe(0);
  });

  it('정규화된 심볼의 말단 이름으로 조회한다', () => {
    expect(resolveOperand('Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG', table)).toBe(130);
  });

  it('모르는 심볼은 던진다 — 조용히 0 이 되면 좌표가 망가진다', () => {
    expect(() => resolveOperand('Some.Unknown.CONSTANT', table)).toThrow(/Unresolved/);
  });
});
```

- [ ] **Step 2: 실패 확인**

Run: `npx vitest run tools/src/java-constants.test.ts`
Expected: FAIL — `Cannot find module './java-constants.js'`

- [ ] **Step 3: 구현**

`tools/src/java-constants.ts`:

```typescript
import { readFileSync } from 'node:fs';

const INT_CONST = /public\s+static\s+final\s+int\s+(\w+)\s*=\s*(-?\d+)\s*;/g;

/** Java 소스에서 `public static final int` 선언을 모두 뽑는다. */
export function parseJavaIntConstants(source: string): Map<string, number> {
  const table = new Map<string, number>();
  for (const match of source.matchAll(INT_CONST)) {
    const name = match[1]!;
    const value = Number(match[2]!);
    const existing = table.get(name);
    if (existing !== undefined && existing !== value) {
      throw new Error(`상수 충돌: ${name} 이 ${existing} 과 ${value} 로 중복 선언됨`);
    }
    table.set(name, value);
  }
  return table;
}

/** 여러 Java 파일의 상수를 하나의 표로 합친다. 값이 다른 동명 상수는 거부한다. */
export function loadConstantTable(files: string[]): Map<string, number> {
  const table = new Map<string, number>();
  for (const file of files) {
    for (const [name, value] of parseJavaIntConstants(readFileSync(file, 'utf8'))) {
      const existing = table.get(name);
      if (existing !== undefined && existing !== value) {
        throw new Error(`상수 충돌: ${name} — ${existing} vs ${value} (${file})`);
      }
      table.set(name, value);
    }
  }
  return table;
}

/**
 * 좌표 피연산자를 숫자로 만든다.
 * 숫자 리터럴이면 그대로, 심볼이면 말단 이름으로 상수표를 조회한다.
 * 조회 실패 시 던진다 — 기본값 0 으로 넘어가면 좌표가 조용히 망가진다.
 */
export function resolveOperand(operand: string, table: Map<string, number>): number {
  const text = operand.trim();
  if (/^-?\d+$/.test(text)) return Number(text);

  const leaf = text.split('.').at(-1);
  if (leaf === undefined) throw new Error(`Unresolved constant: ${operand}`);

  const value = table.get(leaf);
  if (value === undefined) throw new Error(`Unresolved constant: ${operand}`);
  return value;
}
```

- [ ] **Step 4: 테스트 통과 확인**

Run: `npx vitest run tools/src/java-constants.test.ts`
Expected: PASS — 6 tests.

- [ ] **Step 5: 커밋**

```bash
git add tools/src/java-constants.ts tools/src/java-constants.test.ts
git commit -m "feat(tools): Java static final int 상수표 로더

jadx 가 디컴파일하면서 좌표 자리의 숫자 리터럴을 값이 같은 상수 심볼로
치환해 놓았다 (130 → Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG).
좌표를 복원하려면 역치환이 필요하다.

심볼 출처가 두 곳이라 (Defines 19종, GameView 2종) 여러 파일을 합치되
값이 다른 동명 상수는 충돌로 거부한다. 모르는 심볼도 던진다 — 조용히
0 으로 떨어지면 좌표가 망가진 채 통과한다."
```

---

### Task 4: 퍼즐 좌표 파서

**Files:**
- Create: `tools/src/puzzle-parser.ts`
- Test: `tools/src/puzzle-parser.test.ts`

**Interfaces:**
- Consumes: Task 3의 `resolveOperand`, `loadConstantTable`
- Produces:
  - `interface PuzzleRect { index: number; x: number; y: number; w: number; h: number; patch: string }`
  - `interface Puzzle { id: string; width: number; height: number; rects: PuzzleRect[] }`
  - `extractMethodBody(source: string, signature: string): string`
  - `parsePuzzles(segment: string, constants: Map<string, number>): Puzzle[]`
  - `validatePuzzles(puzzles: Puzzle[]): string[]` — 치명 오류는 던지고, 경고는 배열로 반환

**파싱 전략 (중요):** 소스의 인덱스 변수(`num`, `rectnum7` 등)는 jadx가 만든 별칭이라 값을 추적할 필요가 **없다**. 대입이 엄격히 순차적이므로 "직전 `new FindImage` 이후 등장한 `new FindRect`를 순서대로 append"하면 정확히 복원된다. 30세트 전부에서 검증했다.

- [ ] **Step 1: 실패하는 테스트 작성**

`tools/src/puzzle-parser.test.ts`:

```typescript
import { describe, expect, it } from 'vitest';
import { readFileSync } from 'node:fs';
import { resolve } from 'node:path';
import { loadConstantTable } from './java-constants.js';
import { extractMethodBody, parsePuzzles, validatePuzzles } from './puzzle-parser.js';

const ROOT = resolve(import.meta.dirname, '../..');
const JAVA = resolve(ROOT, 'legacy/android_project/app/src/main/java');

const constants = loadConstantTable([
  resolve(JAVA, 'com/feelingk/iap/util/Defines.java'),
  resolve(JAVA, 'com/findit/battle/GameView.java'),
]);

const puzzles = parsePuzzles(
  extractMethodBody(
    readFileSync(resolve(JAVA, 'com/findit/battle/Objects.java'), 'utf8'),
    'private void createBaseFindImages()',
  ),
  constants,
);

describe('parsePuzzles', () => {
  it('퍼즐 30세트를 뽑는다', () => {
    expect(puzzles).toHaveLength(30);
  });

  it('rect 총계가 262 개다', () => {
    expect(puzzles.reduce((n, p) => n + p.rects.length, 0)).toBe(262);
  });

  it('베이스 이미지는 전부 640x720 이다', () => {
    for (const p of puzzles) {
      expect([p.width, p.height]).toEqual([640, 720]);
    }
  });

  it('a0001 의 첫 rect 를 상수 역치환까지 포함해 복원한다', () => {
    const first = puzzles[0]!;
    expect(first.id).toBe('a0001');
    // 소스 원문: new FindRect(187, 340, DLG_DOTORI_AUTH_DIALOG, DLG_DOTORI_AUTH_DIALOG, a0001_01)
    expect(first.rects[0]).toEqual({
      index: 0, x: 187, y: 340, w: 130, h: 130, patch: 'a0001_01',
    });
  });

  it('rect 수가 이미지마다 다르다 — 7 로 하드코딩하면 안 된다', () => {
    const counts = new Set(puzzles.map((p) => p.rects.length));
    expect([...counts].sort((a, b) => a - b)).toEqual([7, 8, 9, 10]);
  });

  it('10 개짜리 퍼즐도 끝까지 읽는다', () => {
    const a0002 = puzzles.find((p) => p.id === 'a0002')!;
    expect(a0002.rects).toHaveLength(10);
    expect(a0002.rects.at(-1)!.patch).toBe('a0002_10');
  });
});

describe('validatePuzzles', () => {
  it('원작 데이터는 치명 오류 없이 통과한다', () => {
    expect(() => validatePuzzles(puzzles)).not.toThrow();
  });

  it('경계를 벗어난 rect 는 던진다', () => {
    expect(() =>
      validatePuzzles([
        { id: 'bad', width: 640, height: 720, rects: [
          { index: 0, x: 600, y: 0, w: 130, h: 130, patch: 'bad_01' },
        ] },
      ]),
    ).toThrow(/out of bounds/);
  });

  it('패치 접미사 순번이 어긋나면 던진다', () => {
    expect(() =>
      validatePuzzles([
        { id: 'bad', width: 640, height: 720, rects: [
          { index: 0, x: 0, y: 0, w: 10, h: 10, patch: 'bad_03' },
        ] },
      ]),
    ).toThrow(/suffix/);
  });

  it('rect 가 5 개 미만이면 던진다 — 5-of-N 이 성립하지 않는다', () => {
    expect(() =>
      validatePuzzles([
        { id: 'bad', width: 640, height: 720, rects: [
          { index: 0, x: 0, y: 0, w: 10, h: 10, patch: 'bad_01' },
        ] },
      ]),
    ).toThrow(/at least 5/);
  });
});
```

- [ ] **Step 2: 실패 확인**

Run: `npx vitest run tools/src/puzzle-parser.test.ts`
Expected: FAIL — `Cannot find module './puzzle-parser.js'`

- [ ] **Step 3: 구현**

`tools/src/puzzle-parser.ts`:

```typescript
import { resolveOperand } from './java-constants.js';

export interface PuzzleRect {
  index: number;
  x: number;
  y: number;
  w: number;
  h: number;
  /** 패치 드로어블 이름, 확장자 없음. 예: 'a0001_01' */
  patch: string;
}

export interface Puzzle {
  id: string;
  width: number;
  height: number;
  rects: PuzzleRect[];
}

const FIND_IMAGE = /new FindImage\((\d+),\s*(\d+),\s*R\.drawable\.(\w+)\)/;
const FIND_RECT = /new FindRect\(([^,]+),\s*([^,]+),\s*([^,]+),\s*([^,]+),\s*R\.drawable\.(\w+)\)/;

/** 5-of-N 노출이 성립하려면 퍼즐당 최소 이만큼의 rect 가 필요하다. */
const MIN_RECTS = 5;

/**
 * Java 소스에서 메서드 본문을 잘라낸다.
 * jadx 출력은 들여쓰기가 일정하므로 클래스 레벨 메서드의 닫는 중괄호는 항상 `\n    }\n` 이다.
 */
export function extractMethodBody(source: string, signature: string): string {
  const start = source.indexOf(signature);
  if (start < 0) throw new Error(`메서드를 찾지 못함: ${signature}`);

  const rest = source.slice(start);
  const end = rest.indexOf('\n    }\n');
  if (end < 0) throw new Error(`메서드 끝을 찾지 못함: ${signature}`);

  return rest.slice(0, end);
}

/**
 * `createBaseFindImages()` 본문에서 퍼즐 정의를 복원한다.
 *
 * 소스의 인덱스 변수(num, rectnum7 …)는 jadx 가 만든 별칭이라 추적하지 않는다.
 * 대입이 엄격히 순차적이므로 "직전 FindImage 이후의 FindRect 를 순서대로 append"
 * 하면 정확히 복원된다.
 */
export function parsePuzzles(segment: string, constants: Map<string, number>): Puzzle[] {
  const puzzles: Puzzle[] = [];
  let current: Puzzle | undefined;

  for (const line of segment.split('\n')) {
    const image = FIND_IMAGE.exec(line);
    if (image) {
      current = {
        id: image[3]!,
        width: Number(image[1]!),
        height: Number(image[2]!),
        rects: [],
      };
      puzzles.push(current);
      continue;
    }

    const rect = FIND_RECT.exec(line);
    if (rect && current) {
      current.rects.push({
        index: current.rects.length,
        x: resolveOperand(rect[1]!, constants),
        y: resolveOperand(rect[2]!, constants),
        w: resolveOperand(rect[3]!, constants),
        h: resolveOperand(rect[4]!, constants),
        patch: rect[5]!,
      });
    }
  }

  return puzzles;
}

/**
 * 치명 오류는 던지고, 치명적이지 않은 이상은 경고 문자열로 돌려준다.
 * 호출자가 경고를 출력할지 무시할지 정한다.
 */
export function validatePuzzles(puzzles: Puzzle[]): string[] {
  const errors: string[] = [];
  const warnings: string[] = [];

  if (puzzles.length === 0) errors.push('퍼즐이 하나도 파싱되지 않음');

  for (const puzzle of puzzles) {
    if (puzzle.rects.length < MIN_RECTS) {
      errors.push(`${puzzle.id}: rect ${puzzle.rects.length} 개 — at least ${MIN_RECTS} required`);
    }

    puzzle.rects.forEach((rect, i) => {
      const suffix = Number(rect.patch.split('_').at(-1));
      if (suffix !== i + 1) {
        errors.push(`${puzzle.id}: rect ${i} patch '${rect.patch}' — expected suffix ${i + 1}`);
      }

      if (
        rect.x < 0 || rect.y < 0 ||
        rect.x + rect.w > puzzle.width ||
        rect.y + rect.h > puzzle.height
      ) {
        errors.push(
          `${puzzle.id}: rect ${i} out of bounds ` +
            `(${rect.x},${rect.y},${rect.w},${rect.h}) vs ${puzzle.width}x${puzzle.height}`,
        );
      }

      if (rect.w <= 0 || rect.h <= 0) {
        errors.push(`${puzzle.id}: rect ${i} 크기가 0 이하 (${rect.w}x${rect.h})`);
      }
    });
  }

  if (errors.length > 0) {
    throw new Error(`퍼즐 검증 실패 (${errors.length}건):\n  ${errors.join('\n  ')}`);
  }

  return warnings;
}
```

- [ ] **Step 4: 테스트 통과 확인**

Run: `npx vitest run tools/src/puzzle-parser.test.ts`
Expected: PASS — 10 tests. 특히 `rect 총계가 262 개다`와 `rect 수가 이미지마다 다르다`가 통과해야 한다.

- [ ] **Step 5: 커밋**

```bash
git add tools/src/puzzle-parser.ts tools/src/puzzle-parser.test.ts
git commit -m "feat(tools): Objects.java 퍼즐 좌표 파서

createBaseFindImages() 에 하드코딩된 30세트 262개 rect 를 복원한다.

핵심은 인덱스 변수를 추적하지 않는 것이다. num/rectnum7 같은 변수는
jadx 가 만든 별칭이고 대입이 엄격히 순차적이라, 직전 FindImage 이후의
FindRect 를 순서대로 append 하면 정확히 복원된다.

검증 3종을 건다: 패치 접미사 순번, 640x720 경계, 퍼즐당 최소 5개
(5-of-N 노출 성립 조건). 원작 데이터는 전부 통과한다."
```

---

### Task 5: 퍼즐 추출 CLI

**Files:**
- Create: `tools/src/bin/extract-puzzles.ts`
- Create: `tools/src/paths.ts`
- Test: `tools/src/bin/extract-puzzles.test.ts`

**Interfaces:**
- Consumes: Task 4의 `parsePuzzles` / `validatePuzzles` / `extractMethodBody`, Task 3의 `loadConstantTable`
- Produces:
  - `content/puzzles/<id>.json` — 퍼즐 30개
  - `content/puzzles/manifest.json` — `{ version, generatedAt, puzzles: [{ id, width, height, rectCount }] }`
  - `tools/src/paths.ts`: `ROOT`, `LEGACY_JAVA`, `LEGACY_DRAWABLE`, `LEGACY_RAW`, `CONTENT`, `APP_ASSETS`

- [ ] **Step 1: 실패하는 테스트 작성**

`tools/src/bin/extract-puzzles.test.ts`:

```typescript
import { describe, expect, it } from 'vitest';
import { readFileSync } from 'node:fs';
import { resolve } from 'node:path';
import { buildPuzzleOutput } from './extract-puzzles.js';
import { CONTENT } from '../paths.js';

const { puzzles, manifest } = buildPuzzleOutput();

describe('buildPuzzleOutput', () => {
  it('퍼즐 30개와 매니페스트를 만든다', () => {
    expect(puzzles).toHaveLength(30);
    expect(manifest.puzzles).toHaveLength(30);
  });

  it('매니페스트의 rectCount 가 실제 rect 수와 맞는다', () => {
    for (const entry of manifest.puzzles) {
      const puzzle = puzzles.find((p) => p.id === entry.id)!;
      expect(entry.rectCount).toBe(puzzle.rects.length);
    }
  });

  it('매니페스트에 좌표가 들어가지 않는다 — 클라에 내려가는 파일이다', () => {
    // 문자열 검사가 아니라 키 집합을 고정한다. 좌표가 다른 이름으로 다시
    // 들어와도(px, coords 등) 이 단언이 막는다.
    for (const entry of manifest.puzzles) {
      expect(Object.keys(entry).sort()).toEqual(['height', 'id', 'rectCount', 'width']);
    }
    expect(Object.keys(manifest).sort()).toEqual(['generatedAt', 'puzzles', 'version']);
  });

  it('버전이 결정론적이다 — 같은 입력이면 같은 버전', () => {
    expect(buildPuzzleOutput().manifest.version).toBe(manifest.version);
  });
});

describe('생성된 파일', () => {
  it('npm run content:puzzles 실행 후 a0001.json 을 읽을 수 있다', () => {
    const raw = readFileSync(resolve(CONTENT, 'puzzles/a0001.json'), 'utf8');
    const puzzle = JSON.parse(raw) as { id: string; rects: unknown[] };
    expect(puzzle.id).toBe('a0001');
    expect(puzzle.rects).toHaveLength(7);
  });
});
```

마지막 describe는 CLI를 한 번 돌린 뒤에 통과한다. Step 4에서 실행한다.

- [ ] **Step 2: 실패 확인**

Run: `npx vitest run tools/src/bin/extract-puzzles.test.ts`
Expected: FAIL — `Cannot find module './extract-puzzles.js'`

- [ ] **Step 3: 구현**

`tools/src/paths.ts`:

```typescript
import { resolve } from 'node:path';

export const ROOT = resolve(import.meta.dirname, '../..');

export const LEGACY_JAVA = resolve(ROOT, 'legacy/android_project/app/src/main/java');
export const LEGACY_DRAWABLE = resolve(ROOT, 'legacy/decoded_apk/res/drawable-hdpi-v4');
export const LEGACY_RAW = resolve(ROOT, 'legacy/decoded_apk/res/raw');

export const CONTENT = resolve(ROOT, 'content');
export const APP_ASSETS = resolve(ROOT, 'app/assets');
```

`tools/src/bin/extract-puzzles.ts`:

```typescript
import { createHash } from 'node:crypto';
import { mkdirSync, readFileSync, writeFileSync } from 'node:fs';
import { resolve } from 'node:path';
import { pathToFileURL } from 'node:url';

import { loadConstantTable } from '../java-constants.js';
import { extractMethodBody, parsePuzzles, validatePuzzles, type Puzzle } from '../puzzle-parser.js';
import { CONTENT, LEGACY_JAVA } from '../paths.js';

export interface ManifestEntry {
  id: string;
  width: number;
  height: number;
  rectCount: number;
}

export interface PuzzleManifest {
  version: string;
  generatedAt: string;
  puzzles: ManifestEntry[];
}

const OBJECTS_JAVA = resolve(LEGACY_JAVA, 'com/findit/battle/Objects.java');
const DEFINES_JAVA = resolve(LEGACY_JAVA, 'com/feelingk/iap/util/Defines.java');
const GAMEVIEW_JAVA = resolve(LEGACY_JAVA, 'com/findit/battle/GameView.java');

export function buildPuzzleOutput(): {
  puzzles: Puzzle[];
  manifest: PuzzleManifest;
  warnings: string[];
} {
  const constants = loadConstantTable([DEFINES_JAVA, GAMEVIEW_JAVA]);
  const body = extractMethodBody(readFileSync(OBJECTS_JAVA, 'utf8'), 'private void createBaseFindImages()');
  const puzzles = parsePuzzles(body, constants);
  const warnings = validatePuzzles(puzzles);

  // 버전은 좌표 내용에서 유도한다. 내용이 같으면 재실행해도 같은 버전이 나오므로
  // 클라의 콘텐츠 캐시가 불필요하게 무효화되지 않는다.
  const version = createHash('sha256').update(JSON.stringify(puzzles)).digest('hex').slice(0, 12);

  const manifest: PuzzleManifest = {
    version,
    generatedAt: new Date().toISOString(),
    puzzles: puzzles.map((p) => ({
      id: p.id,
      width: p.width,
      height: p.height,
      rectCount: p.rects.length,
    })),
  };

  return { puzzles, manifest, warnings };
}

function main(): void {
  const { puzzles, manifest, warnings } = buildPuzzleOutput();
  const outDir = resolve(CONTENT, 'puzzles');
  mkdirSync(outDir, { recursive: true });

  for (const puzzle of puzzles) {
    writeFileSync(resolve(outDir, `${puzzle.id}.json`), `${JSON.stringify(puzzle, null, 2)}\n`);
  }
  writeFileSync(resolve(outDir, 'manifest.json'), `${JSON.stringify(manifest, null, 2)}\n`);

  for (const warning of warnings) console.warn(`  경고: ${warning}`);

  const rectTotal = puzzles.reduce((n, p) => n + p.rects.length, 0);
  console.log(`퍼즐 ${puzzles.length}세트 / rect ${rectTotal}개 → ${outDir}`);
  console.log(`콘텐츠 버전 ${manifest.version}`);
}

// 직접 실행일 때만 파일을 쓴다. import 는 부작용이 없어야 테스트가 가능하다.
if (process.argv[1] && import.meta.url === pathToFileURL(process.argv[1]).href) {
  main();
}
```

**`generatedAt`을 버전에서 제외한 이유**: 버전이 타임스탬프에 의존하면 재실행할 때마다 값이 바뀌고, 클라의 콘텐츠 캐시가 내용 변화 없이도 매번 무효화된다.

- [ ] **Step 4: 실행 후 테스트 통과 확인**

Run:
```bash
npm run content:puzzles
npx vitest run tools/src/bin/extract-puzzles.test.ts
```
Expected:
- CLI 출력 `퍼즐 30세트 / rect 262개 → .../content/puzzles`
- 테스트 PASS — 5 tests

- [ ] **Step 5: 커밋**

```bash
git add tools/src/paths.ts tools/src/bin/extract-puzzles.ts tools/src/bin/extract-puzzles.test.ts content/puzzles/
git commit -m "feat(tools): 퍼즐 좌표 추출 CLI + content/puzzles 산출

30세트 262개 rect 를 content/puzzles/*.json 으로 떨군다.

매니페스트에는 좌표를 넣지 않는다. 클라에 내려가는 파일이므로 rect 가
섞이면 서버 권위 판정이 무의미해진다. 테스트로 직접 막는다.

콘텐츠 버전은 좌표 내용의 sha256 앞 12자다. 타임스탬프를 쓰면 재실행
때마다 값이 바뀌어 클라 캐시가 내용 변화 없이 무효화된다."
```

---

### Task 6: 퍼즐 이미지 WebP 변환

**Files:**
- Create: `tools/src/bin/extract-images.ts`
- Test: `tools/src/bin/extract-images.test.ts`
- Modify: `package.json` (sharp 의존성 추가)

**Interfaces:**
- Consumes: Task 5의 `content/puzzles/*.json`, `tools/src/paths.ts`
- Produces:
  - `content/images/<puzzleId>/base.webp`
  - `content/images/<puzzleId>/patch_NN.webp`
  - `planConversions(puzzles: Puzzle[]): Conversion[]` — `Conversion` = `{ from: string; to: string }`
  - `checkPatchDimensions(puzzles: Puzzle[]): Promise<DimensionWarning[]>` — `DimensionWarning` = `{ patch: string; declared: [number, number]; actual: [number, number] }`

- [ ] **Step 1: 실패하는 테스트 작성**

`tools/src/bin/extract-images.test.ts`:

```typescript
import { describe, expect, it } from 'vitest';
import { existsSync } from 'node:fs';
import { planConversions, checkPatchDimensions } from './extract-images.js';
import { buildPuzzleOutput } from './extract-puzzles.js';

const { puzzles } = buildPuzzleOutput();

describe('planConversions', () => {
  const plan = planConversions(puzzles);

  it('베이스 30장 + 패치 262장 = 292 건을 계획한다', () => {
    expect(plan).toHaveLength(292);
  });

  it('원본 PNG 가 전부 실재한다', () => {
    const missing = plan.filter((c) => !existsSync(c.from));
    expect(missing).toEqual([]);
  });

  it('출력 경로가 퍼즐별 디렉터리로 갈린다', () => {
    const base = plan.find((c) => c.to.endsWith('a0001/base.webp'));
    expect(base).toBeDefined();
    const patch = plan.find((c) => c.to.endsWith('a0001/patch_01.webp'));
    expect(patch).toBeDefined();
  });
});

describe('checkPatchDimensions', () => {
  it('선언 크기와 PNG 실제 크기가 다른 4건을 경고로 보고한다', async () => {
    const warnings = await checkPatchDimensions(puzzles);
    const ids = warnings.map((w) => w.patch).sort();
    expect(ids).toEqual(['a0056_07', 'a0058_07', 'a0063_04', 'a0063_05']);
  });
});
```

**이 4건이 왜 경고이지 오류가 아닌가**: 원작은 패치를 rect 크기에 맞춰 스케일해서 그린다 (`Objects.java:2192`, `createScaledBitmap(bitmap2, mRateWidth, mRateHeight, true)`). 선언된 rect가 권위이고 PNG 픽셀 크기는 참고값이다. 빌드를 막을 이유가 없다.

- [ ] **Step 2: 실패 확인**

Run: `npx vitest run tools/src/bin/extract-images.test.ts`
Expected: FAIL — `Cannot find module './extract-images.js'`

- [ ] **Step 3: sharp 설치**

```bash
npm install --save-dev sharp@^0.33.5
```

- [ ] **Step 4: 구현**

`tools/src/bin/extract-images.ts`:

```typescript
import { mkdirSync } from 'node:fs';
import { dirname, resolve } from 'node:path';
import { pathToFileURL } from 'node:url';
import sharp from 'sharp';

import type { Puzzle } from '../puzzle-parser.js';
import { CONTENT, LEGACY_DRAWABLE } from '../paths.js';
import { buildPuzzleOutput } from './extract-puzzles.js';

/** WebP 품질. 퍼즐은 '다른 곳 찾기'가 목적이라 압축 아티팩트에 민감하다. */
const WEBP_QUALITY = 92;

export interface Conversion {
  from: string;
  to: string;
}

export interface DimensionWarning {
  patch: string;
  declared: [number, number];
  actual: [number, number];
}

export function planConversions(puzzles: Puzzle[]): Conversion[] {
  const plan: Conversion[] = [];

  for (const puzzle of puzzles) {
    plan.push({
      from: resolve(LEGACY_DRAWABLE, `${puzzle.id}.png`),
      to: resolve(CONTENT, 'images', puzzle.id, 'base.webp'),
    });

    for (const rect of puzzle.rects) {
      const n = String(rect.index + 1).padStart(2, '0');
      plan.push({
        from: resolve(LEGACY_DRAWABLE, `${rect.patch}.png`),
        to: resolve(CONTENT, 'images', puzzle.id, `patch_${n}.webp`),
      });
    }
  }

  return plan;
}

/**
 * 패치 PNG 의 실제 픽셀 크기가 선언된 rect 크기와 다른 경우를 모은다.
 * 원작이 그릴 때 rect 크기로 스케일하므로 (Objects.java:2192) 오류가 아니라 경고다.
 */
export async function checkPatchDimensions(puzzles: Puzzle[]): Promise<DimensionWarning[]> {
  const warnings: DimensionWarning[] = [];

  for (const puzzle of puzzles) {
    for (const rect of puzzle.rects) {
      const meta = await sharp(resolve(LEGACY_DRAWABLE, `${rect.patch}.png`)).metadata();
      if (meta.width !== rect.w || meta.height !== rect.h) {
        warnings.push({
          patch: rect.patch,
          declared: [rect.w, rect.h],
          actual: [meta.width ?? 0, meta.height ?? 0],
        });
      }
    }
  }

  return warnings;
}

async function main(): Promise<void> {
  const { puzzles } = buildPuzzleOutput();
  const plan = planConversions(puzzles);

  for (const { from, to } of plan) {
    mkdirSync(dirname(to), { recursive: true });
    await sharp(from).webp({ quality: WEBP_QUALITY }).toFile(to);
  }

  for (const w of await checkPatchDimensions(puzzles)) {
    console.warn(
      `  경고: ${w.patch} 선언 ${w.declared.join('x')} vs 실제 ${w.actual.join('x')} ` +
        `— 원작이 rect 크기로 스케일하므로 rect 가 권위`,
    );
  }

  console.log(`이미지 ${plan.length}장 변환 → ${resolve(CONTENT, 'images')}`);
}

if (process.argv[1] && import.meta.url === pathToFileURL(process.argv[1]).href) {
  await main();
}
```

- [ ] **Step 5: 실행 후 테스트 통과 확인**

Run:
```bash
npm run content:images
npx vitest run tools/src/bin/extract-images.test.ts
du -sh content/images
```
Expected:
- 경고 4줄 (`a0056_07`, `a0058_07`, `a0063_04`, `a0063_05`)
- `이미지 292장 변환 → .../content/images`
- 테스트 PASS — 4 tests

- [ ] **Step 6: 커밋**

`content/images/`는 `.gitignore` 대상이므로 스크립트만 커밋한다.

```bash
git add tools/src/bin/extract-images.ts tools/src/bin/extract-images.test.ts package.json package-lock.json
git commit -m "feat(tools): 퍼즐 이미지 WebP 변환 (베이스 30 + 패치 262)

품질 92 로 간다. 퍼즐은 '다른 곳 찾기'가 목적이라 압축 아티팩트가
가짜 단서가 될 수 있어 일반적인 웹 이미지보다 높게 잡는다.

패치 PNG 실제 크기가 선언 rect 와 다른 4건은 경고로만 낸다. 원작이
createScaledBitmap 으로 rect 크기에 맞춰 그리므로(Objects.java:2192)
rect 가 권위이고 PNG 픽셀 크기는 참고값이다. 빌드를 막을 이유가 없다."
```

---

### Task 7: UI · 오디오 에셋 추출

**Files:**
- Create: `tools/src/bin/extract-assets.ts`
- Test: `tools/src/bin/extract-assets.test.ts`

**Interfaces:**
- Consumes: `tools/src/paths.ts`
- Produces:
  - `app/assets/legacy/*.png` — UI·캐릭터·아이템·이펙트 189장
  - `app/assets/audio/*.ogg` — 11개
  - `app/assets/legacy/index.json` — 에셋 이름 목록 (Dart 상수 생성용)
  - `isPuzzleDrawable(name: string): boolean`

- [ ] **Step 1: 실패하는 테스트 작성**

`tools/src/bin/extract-assets.test.ts`:

```typescript
import { describe, expect, it } from 'vitest';
import { isPuzzleDrawable, collectUiAssets, collectAudioAssets } from './extract-assets.js';

describe('isPuzzleDrawable', () => {
  it('퍼즐 이미지와 패치를 가려낸다', () => {
    expect(isPuzzleDrawable('a0001')).toBe(true);
    expect(isPuzzleDrawable('a0065_08')).toBe(true);
  });

  it('UI 에셋은 남긴다', () => {
    expect(isPuzzleDrawable('main_btn_1')).toBe(false);
    expect(isPuzzleDrawable('slot_item_pen_01')).toBe(false);
    expect(isPuzzleDrawable('efct_skill_01')).toBe(false);
    expect(isPuzzleDrawable('attack')).toBe(false);
  });

  it('a 로 시작하지만 퍼즐이 아닌 이름을 오인하지 않는다', () => {
    expect(isPuzzleDrawable('ad_btn')).toBe(false);
    expect(isPuzzleDrawable('attack')).toBe(false);
  });
});

describe('collectUiAssets', () => {
  const assets = collectUiAssets();

  it('UI 에셋 189 장을 모은다', () => {
    expect(assets).toHaveLength(189);
  });

  it('스펙이 요구하는 스킬 이펙트 8종이 전부 있다', () => {
    for (const name of [
      'efct_skill_01', 'efct_skill_02',
      'efct_skill_101', 'efct_skill_102', 'efct_skill_103',
      'efct_skill_121', 'efct_skill_122', 'efct_skill_123',
    ]) {
      expect(assets).toContain(name);
    }
  });

  it('P0 아이템 3종이 전부 있다', () => {
    for (const name of ['slot_item_pen_01', 'slot_item_ring_01', 'slot_item_posion_01']) {
      expect(assets).toContain(name);
    }
  });

  it('퍼즐 이미지는 섞여 들어오지 않는다', () => {
    expect(assets.filter(isPuzzleDrawable)).toEqual([]);
  });
});

describe('collectAudioAssets', () => {
  it('효과음 11 개를 모은다', () => {
    const audio = collectAudioAssets();
    expect(audio).toHaveLength(11);
    expect(audio).toContain('win');
    expect(audio).toContain('lose');
    expect(audio).toContain('gaming');
  });
});
```

- [ ] **Step 2: 실패 확인**

Run: `npx vitest run tools/src/bin/extract-assets.test.ts`
Expected: FAIL — `Cannot find module './extract-assets.js'`

- [ ] **Step 3: 구현**

`tools/src/bin/extract-assets.ts`:

```typescript
import { copyFileSync, mkdirSync, readdirSync, writeFileSync } from 'node:fs';
import { resolve } from 'node:path';
import { pathToFileURL } from 'node:url';

import { APP_ASSETS, LEGACY_DRAWABLE, LEGACY_RAW } from '../paths.js';

/**
 * 퍼즐 드로어블 이름 규칙: 'a' + 4자리 숫자, 선택적으로 '_' + 2자리 패치 번호.
 * 'ad_btn' 이나 'attack' 처럼 a 로 시작하는 UI 에셋과 구분해야 한다.
 */
const PUZZLE_NAME = /^a\d{4}(_\d{2})?$/;

export function isPuzzleDrawable(name: string): boolean {
  return PUZZLE_NAME.test(name);
}

/** 확장자를 뗀 드로어블 이름. 9-patch(`foo.9.png`)는 `foo.9` 로 유지한다. */
function drawableName(file: string): string {
  return file.replace(/\.png$/, '');
}

export function collectUiAssets(): string[] {
  return readdirSync(LEGACY_DRAWABLE)
    .filter((f) => f.endsWith('.png'))
    .map(drawableName)
    .filter((name) => !isPuzzleDrawable(name))
    .sort();
}

export function collectAudioAssets(): string[] {
  return readdirSync(LEGACY_RAW)
    .filter((f) => f.endsWith('.ogg'))
    .map((f) => f.replace(/\.ogg$/, ''))
    .sort();
}

function main(): void {
  const uiDir = resolve(APP_ASSETS, 'legacy');
  const audioDir = resolve(APP_ASSETS, 'audio');
  mkdirSync(uiDir, { recursive: true });
  mkdirSync(audioDir, { recursive: true });

  const ui = collectUiAssets();
  for (const name of ui) {
    copyFileSync(resolve(LEGACY_DRAWABLE, `${name}.png`), resolve(uiDir, `${name}.png`));
  }

  const audio = collectAudioAssets();
  for (const name of audio) {
    copyFileSync(resolve(LEGACY_RAW, `${name}.ogg`), resolve(audioDir, `${name}.ogg`));
  }

  // Dart 쪽에서 에셋 상수를 생성할 때 쓴다. 디렉터리를 다시 훑지 않아도 되게.
  writeFileSync(resolve(uiDir, 'index.json'), `${JSON.stringify({ ui, audio }, null, 2)}\n`);

  console.log(`UI ${ui.length}장 → ${uiDir}`);
  console.log(`오디오 ${audio.length}개 → ${audioDir}`);
}

if (process.argv[1] && import.meta.url === pathToFileURL(process.argv[1]).href) {
  main();
}
```

**PNG를 WebP로 변환하지 않는 이유**: UI 에셋에는 9-patch(`.9.png`)가 섞여 있고, 9-patch는 테두리 1px에 늘임 영역 정보가 인코딩돼 있어 손실 변환하면 깨진다. 퍼즐 이미지와 달리 UI 에셋은 총 용량이 작아(약 8MB) 변환 이득도 없다.

- [ ] **Step 4: 실행 후 테스트 통과 확인**

Run:
```bash
npm run content:assets
npx vitest run tools/src/bin/extract-assets.test.ts
ls app/assets/legacy/*.png | wc -l
ls app/assets/audio/*.ogg | wc -l
```
Expected: `UI 189장`, `오디오 11개`. 테스트 PASS — 8 tests.

- [ ] **Step 5: 전체 파이프라인 한 번에 확인**

Run:
```bash
rm -rf content app/assets
npm run content:all
npm test
```
Expected: 세 스크립트가 순서대로 돌고 전체 테스트 그린. 파이프라인이 처음부터 재현 가능하다는 증거다.

- [ ] **Step 6: 커밋**

```bash
git add tools/src/bin/extract-assets.ts tools/src/bin/extract-assets.test.ts
git commit -m "feat(tools): UI 189장 + 오디오 11개 추출

퍼즐 드로어블(a0001, a0065_08)과 UI 에셋을 이름 규칙으로 가른다.
'a' 로 시작한다는 것만으로는 부족하다 — ad_btn, attack 이 오인된다.

UI 는 PNG 그대로 둔다. 9-patch(.9.png)는 테두리 1px 에 늘임 영역이
인코딩돼 있어 손실 변환하면 깨진다. 총 8MB 라 변환 이득도 없다."
```

---

### Task 8: 공유 프로토콜 패키지 + Dart 생성기

**Files:**
- Create: `packages/protocol/package.json`, `packages/protocol/tsconfig.json`
- Create: `packages/protocol/src/schema.ts`
- Create: `packages/protocol/src/validate.ts`
- Create: `packages/protocol/src/index.ts`
- Create: `packages/protocol/tools/gen-dart.ts`
- Test: `packages/protocol/src/validate.test.ts`, `packages/protocol/src/gen-dart.test.ts`
- Modify: `package.json` (스크립트 `protocol:dart` 추가)

**Interfaces:**
- Consumes: Task 2의 워크스페이스
- Produces:
  - `MESSAGES` — 메시지 선언 (단일 진실 출처)
  - `decodeEnvelope(raw: string): Envelope` — 파싱 + 검증, 실패 시 `ProtocolError`
  - `encodeEnvelope(type: MessageType, seq: number, payload: object): string`
  - `app/lib/domain/protocol.g.dart` — Dart 데이터 클래스

**왜 생성인가:** 클라와 서버가 같은 메시지를 각자 정의하면 반드시 어긋난다. 어긋난 지점은 런타임에, 보통 배틀 중에 드러난다. 선언은 한 곳에 두고 양쪽을 생성한다.

- [ ] **Step 1: 실패하는 테스트 작성**

`packages/protocol/src/validate.test.ts`:

```typescript
import { describe, expect, it } from 'vitest';
import { MESSAGES } from './schema.js';
import { decodeEnvelope, encodeEnvelope, ProtocolError } from './validate.js';

describe('MESSAGES 선언', () => {
  it('스펙 §8 의 C→S 7종을 모두 선언한다', () => {
    for (const t of ['AUTH', 'QUEUE_JOIN', 'QUEUE_LEAVE', 'READY', 'TAP', 'SKILL', 'LEAVE']) {
      expect(MESSAGES[t as keyof typeof MESSAGES]?.dir).toBe('c2s');
    }
  });

  it('스펙 §8 의 S→C 10종을 모두 선언한다', () => {
    for (const t of [
      'QUEUED', 'MATCH_FOUND', 'COUNTDOWN', 'START', 'REVEAL',
      'LOCK', 'BLIND', 'OPPONENT_PROGRESS', 'END', 'ERROR',
    ]) {
      expect(MESSAGES[t as keyof typeof MESSAGES]?.dir).toBe('s2c');
    }
  });
});

describe('decodeEnvelope', () => {
  it('유효한 TAP 을 파싱한다', () => {
    const env = decodeEnvelope('{"t":"TAP","seq":17,"d":{"x":231,"y":402}}');
    expect(env).toEqual({ t: 'TAP', seq: 17, d: { x: 231, y: 402 } });
  });

  it('모르는 메시지 타입을 거부한다', () => {
    expect(() => decodeEnvelope('{"t":"NOPE","seq":1,"d":{}}')).toThrow(ProtocolError);
  });

  it('필드가 빠지면 거부한다', () => {
    expect(() => decodeEnvelope('{"t":"TAP","seq":1,"d":{"x":1}}')).toThrow(/y/);
  });

  it('타입이 틀리면 거부한다 — 문자열 좌표는 int 가 아니다', () => {
    expect(() => decodeEnvelope('{"t":"TAP","seq":1,"d":{"x":"1","y":2}}')).toThrow(/x/);
  });

  it('int 자리에 소수를 거부한다', () => {
    expect(() => decodeEnvelope('{"t":"TAP","seq":1,"d":{"x":1.5,"y":2}}')).toThrow(/x/);
  });

  it('seq 가 없으면 거부한다 — 리플레이 방어의 근거다', () => {
    expect(() => decodeEnvelope('{"t":"TAP","d":{"x":1,"y":2}}')).toThrow(/seq/);
  });

  it('JSON 이 아니면 거부한다', () => {
    expect(() => decodeEnvelope('not json')).toThrow(ProtocolError);
  });

  it('선언되지 않은 여분 필드를 거부한다 — 오타를 조용히 넘기지 않는다', () => {
    expect(() => decodeEnvelope('{"t":"TAP","seq":1,"d":{"x":1,"y":2,"z":3}}')).toThrow(/z/);
  });

  it.each(['constructor', '__proto__', 'toString', 'valueOf'])(
    '프로토타입 속성명 %s 을 메시지 타입으로 위장해도 ProtocolError 로 거부한다',
    (name) => {
      // `in` 을 쓰면 여기서 TypeError 가 나서 게이트웨이가 죽는다.
      expect(() => decodeEnvelope(`{"t":"${name}","seq":1,"d":{}}`)).toThrow(ProtocolError);
    },
  );

  it.each(['constructor', 'toString', 'valueOf'])(
    '프로토타입 속성명 %s 을 여분 필드로 넣어도 거부한다',
    (name) => {
      expect(() =>
        decodeEnvelope(`{"t":"TAP","seq":1,"d":{"x":1,"y":2,"${name}":1}}`),
      ).toThrow(ProtocolError);
    },
  );
});

describe('encodeEnvelope', () => {
  it('왕복한다', () => {
    const raw = encodeEnvelope('REVEAL', 3, {
      by: 'p1', index: 0, x: 10, y: 20, w: 130, h: 130, patchUrl: '/c/a0001/patch_01.webp',
    });
    expect(decodeEnvelope(raw).d).toMatchObject({ index: 0, patchUrl: '/c/a0001/patch_01.webp' });
  });

  it('선언에 없는 필드를 넣으면 인코딩 단계에서 던진다', () => {
    expect(() => encodeEnvelope('LOCK', 1, { durationMs: 2000, bogus: 1 })).toThrow(/bogus/);
  });
});
```

`packages/protocol/src/gen-dart.test.ts`:

```typescript
import { describe, expect, it } from 'vitest';
import { generateDart } from '../tools/gen-dart.js';

const dart = generateDart();

describe('generateDart', () => {
  it('생성 파일임을 첫 줄에 밝힌다', () => {
    expect(dart.split('\n')[0]).toContain('GENERATED');
  });

  it('메시지 타입 enum 을 낸다', () => {
    expect(dart).toContain('enum MessageType {');
    expect(dart).toContain('tap,');
    expect(dart).toContain('reveal,');
  });

  it('TAP 클래스를 int 필드로 낸다', () => {
    expect(dart).toContain('class TapMessage {');
    expect(dart).toContain('final int x;');
    expect(dart).toContain('final int y;');
  });

  it('REVEAL 의 문자열 필드를 String 으로 낸다', () => {
    expect(dart).toContain('final String patchUrl;');
  });

  it('bool 필드를 낸다', () => {
    expect(dart).toContain('final bool isAi;');
  });

  it('fromJson 팩토리를 낸다', () => {
    expect(dart).toContain('factory TapMessage.fromJson(Map<String, dynamic> json)');
  });
});
```

- [ ] **Step 2: 실패 확인**

Run: `npx vitest run packages/protocol`
Expected: FAIL — 모듈 없음.

- [ ] **Step 3: 스키마 선언**

`packages/protocol/package.json`:
```json
{
  "name": "@findit/protocol",
  "private": true,
  "type": "module",
  "version": "0.0.0",
  "exports": { ".": "./src/index.ts" }
}
```

`packages/protocol/tsconfig.json`:
```json
{
  "extends": "../../tsconfig.base.json",
  "compilerOptions": { "rootDir": ".", "outDir": "dist" },
  "include": ["src/**/*.ts", "tools/**/*.ts"]
}
```

`packages/protocol/src/schema.ts`:

```typescript
export type FieldType = 'int' | 'double' | 'string' | 'bool';

export interface FieldDef {
  readonly type: FieldType;
}

export interface MessageDef {
  readonly dir: 'c2s' | 's2c';
  readonly fields: Readonly<Record<string, FieldDef>>;
}

const int = { type: 'int' } as const satisfies FieldDef;
const str = { type: 'string' } as const satisfies FieldDef;
const bool = { type: 'bool' } as const satisfies FieldDef;

/**
 * 프로토콜 단일 진실 출처. 스펙 §8 의 메시지 목록에 대응한다.
 * 여기만 고치면 TypeScript 검증기와 Dart 데이터 클래스가 함께 따라온다.
 */
export const MESSAGES = {
  // ── C→S ──────────────────────────────────────────────
  AUTH: { dir: 'c2s', fields: { token: str } },
  QUEUE_JOIN: { dir: 'c2s', fields: { mode: str } },
  QUEUE_LEAVE: { dir: 'c2s', fields: {} },
  READY: { dir: 'c2s', fields: {} },
  TAP: { dir: 'c2s', fields: { x: int, y: int } },
  SKILL: { dir: 'c2s', fields: { skillId: str } },
  LEAVE: { dir: 'c2s', fields: {} },

  // ── S→C ──────────────────────────────────────────────
  QUEUED: { dir: 's2c', fields: { position: int } },
  MATCH_FOUND: {
    dir: 's2c',
    fields: { matchId: str, opponentName: str, opponentLevel: int, isAi: bool },
  },
  COUNTDOWN: { dir: 's2c', fields: { seconds: int } },
  START: {
    dir: 's2c',
    fields: { puzzleId: str, imageUrl: str, width: int, height: int, targetCount: int, durationMs: int },
  },
  REVEAL: {
    dir: 's2c',
    fields: { by: str, index: int, x: int, y: int, w: int, h: int, patchUrl: str },
  },
  LOCK: { dir: 's2c', fields: { durationMs: int } },
  BLIND: { dir: 's2c', fields: { durationMs: int, effectId: str } },
  OPPONENT_PROGRESS: { dir: 's2c', fields: { found: int } },
  END: {
    dir: 's2c',
    fields: {
      result: str, myFound: int, opponentFound: int,
      score: int, coinDelta: int, expDelta: int,
    },
  },
  ERROR: { dir: 's2c', fields: { code: str, message: str } },
} as const satisfies Record<string, MessageDef>;

export type MessageType = keyof typeof MESSAGES;
```

`START`에 좌표가 없다는 점에 주의할 것. 클라는 베이스 이미지와 찾아야 할 **개수**만 받는다. 위치는 `REVEAL`로만 내려간다. 스펙 §6.3의 첫 번째 방어선이다.

- [ ] **Step 4: 검증기 구현**

`packages/protocol/src/validate.ts`:

```typescript
import { MESSAGES, type FieldType, type MessageType } from './schema.js';

export class ProtocolError extends Error {
  override readonly name = 'ProtocolError';
}

export interface Envelope {
  t: MessageType;
  seq: number;
  d: Record<string, unknown>;
}

function matchesType(value: unknown, type: FieldType): boolean {
  switch (type) {
    case 'int':
      return typeof value === 'number' && Number.isInteger(value);
    case 'double':
      return typeof value === 'number' && Number.isFinite(value);
    case 'string':
      return typeof value === 'string';
    case 'bool':
      return typeof value === 'boolean';
  }
}

function checkPayload(type: MessageType, payload: Record<string, unknown>): void {
  const { fields } = MESSAGES[type];

  for (const [name, def] of Object.entries(fields)) {
    if (!Object.hasOwn(payload, name)) {
      throw new ProtocolError(`${type}: 필드 '${name}' 누락`);
    }
    if (!matchesType(payload[name], def.type)) {
      throw new ProtocolError(
        `${type}: 필드 '${name}' 타입 불일치 — ${def.type} 기대, ${typeof payload[name]} 수신`,
      );
    }
  }

  // 여분 필드를 거부한다. 필드명 오타가 조용히 넘어가면 원인을 찾기 어렵다.
  // Object.hasOwn 을 쓴다. `in` 은 프로토타입 체인을 타서 'constructor',
  // 'toString' 같은 이름의 여분 필드를 선언된 것으로 착각한다.
  for (const name of Object.keys(payload)) {
    if (!Object.hasOwn(fields, name)) {
      throw new ProtocolError(`${type}: 선언되지 않은 필드 '${name}'`);
    }
  }
}

export function decodeEnvelope(raw: string): Envelope {
  let parsed: unknown;
  try {
    parsed = JSON.parse(raw);
  } catch {
    throw new ProtocolError('JSON 파싱 실패');
  }

  if (typeof parsed !== 'object' || parsed === null) {
    throw new ProtocolError('봉투가 객체가 아님');
  }

  const env = parsed as Record<string, unknown>;

  // `in` 이 아니라 Object.hasOwn. `in` 은 't'가 'constructor' 나 '__proto__' 일 때
  // 참이 되고, 이어지는 MESSAGES[type] 접근이 ProtocolError 가 아닌 TypeError 로
  // 터진다 — 조작된 메시지 한 통으로 게이트웨이를 죽일 수 있다.
  if (typeof env['t'] !== 'string' || !Object.hasOwn(MESSAGES, env['t'])) {
    throw new ProtocolError(`알 수 없는 메시지 타입: ${String(env['t'])}`);
  }
  if (typeof env['seq'] !== 'number' || !Number.isInteger(env['seq'])) {
    throw new ProtocolError('seq 가 없거나 정수가 아님');
  }
  if (typeof env['d'] !== 'object' || env['d'] === null) {
    throw new ProtocolError('페이로드 d 가 객체가 아님');
  }

  const type = env['t'] as MessageType;
  const payload = env['d'] as Record<string, unknown>;
  checkPayload(type, payload);

  return { t: type, seq: env['seq'], d: payload };
}

export function encodeEnvelope(
  type: MessageType,
  seq: number,
  payload: Record<string, unknown>,
): string {
  checkPayload(type, payload);
  return JSON.stringify({ t: type, seq, d: payload });
}
```

`packages/protocol/src/index.ts`:
```typescript
export { MESSAGES, type FieldDef, type FieldType, type MessageDef, type MessageType } from './schema.js';
export { decodeEnvelope, encodeEnvelope, ProtocolError, type Envelope } from './validate.js';
```

- [ ] **Step 5: Dart 생성기 구현**

`packages/protocol/tools/gen-dart.ts`:

```typescript
import { mkdirSync, writeFileSync } from 'node:fs';
import { dirname, resolve } from 'node:path';
import { pathToFileURL } from 'node:url';

import { MESSAGES, type FieldType } from '../src/schema.js';

const OUT = resolve(import.meta.dirname, '../../../app/lib/domain/protocol.g.dart');

const DART_TYPE: Record<FieldType, string> = {
  int: 'int',
  double: 'double',
  string: 'String',
  bool: 'bool',
};

/** SCREAMING_SNAKE → lowerCamel */
function toLowerCamel(name: string): string {
  const [head = '', ...tail] = name.toLowerCase().split('_');
  return head + tail.map((p) => p.charAt(0).toUpperCase() + p.slice(1)).join('');
}

/** SCREAMING_SNAKE → UpperCamel */
function toUpperCamel(name: string): string {
  const camel = toLowerCamel(name);
  return camel.charAt(0).toUpperCase() + camel.slice(1);
}

export function generateDart(): string {
  const lines: string[] = [
    '// GENERATED — 직접 수정하지 말 것.',
    '// 출처: packages/protocol/src/schema.ts',
    '// 재생성: npm run protocol:dart',
    '',
    '// ignore_for_file: type=lint',
    '',
    'enum MessageType {',
  ];

  for (const type of Object.keys(MESSAGES)) {
    lines.push(`  ${toLowerCamel(type)},`);
  }
  lines.push('}', '');

  lines.push('const Map<MessageType, String> messageTypeWire = {');
  for (const type of Object.keys(MESSAGES)) {
    lines.push(`  MessageType.${toLowerCamel(type)}: '${type}',`);
  }
  lines.push('};', '');

  for (const [type, def] of Object.entries(MESSAGES)) {
    const className = `${toUpperCamel(type)}Message`;
    const entries = Object.entries(def.fields);

    lines.push(`/// ${def.dir === 'c2s' ? '클라 → 서버' : '서버 → 클라'}`);
    lines.push(`class ${className} {`);

    for (const [name, field] of entries) {
      lines.push(`  final ${DART_TYPE[field.type]} ${name};`);
    }
    lines.push('');

    if (entries.length === 0) {
      lines.push(`  const ${className}();`);
    } else {
      lines.push(`  const ${className}({`);
      for (const [name] of entries) lines.push(`    required this.${name},`);
      lines.push('  });');
    }
    lines.push('');

    lines.push(`  factory ${className}.fromJson(Map<String, dynamic> json) => ${className}(`);
    for (const [name, field] of entries) {
      lines.push(`    ${name}: json['${name}'] as ${DART_TYPE[field.type]},`);
    }
    lines.push('  );', '');

    lines.push('  Map<String, dynamic> toJson() => {');
    for (const [name] of entries) lines.push(`    '${name}': ${name},`);
    lines.push('  };');
    lines.push('}', '');
  }

  return lines.join('\n');
}

function main(): void {
  const dart = generateDart();
  mkdirSync(dirname(OUT), { recursive: true });
  writeFileSync(OUT, dart);
  console.log(`Dart ${Object.keys(MESSAGES).length}개 메시지 → ${OUT}`);
}

if (process.argv[1] && import.meta.url === pathToFileURL(process.argv[1]).href) {
  main();
}
```

루트 `package.json`의 `scripts`에 추가:
```json
"protocol:dart": "tsx packages/protocol/tools/gen-dart.ts"
```

- [ ] **Step 6: 테스트 통과 확인**

Run:
```bash
npm install
npx vitest run packages/protocol
npm run protocol:dart
head -20 app/lib/domain/protocol.g.dart
```
Expected: 테스트 PASS — 18 tests (validate 12 + gen-dart 6). Dart 파일 첫 줄이 `// GENERATED — 직접 수정하지 말 것.`

- [ ] **Step 7: 전체 검증**

Run:
```bash
npm run typecheck
npm test
```
Expected: 타입체크 통과, 전체 테스트 그린.

- [ ] **Step 8: 커밋**

```bash
git add packages/protocol package.json package-lock.json app/lib/domain/protocol.g.dart
git commit -m "feat(protocol): 공유 메시지 선언 + 검증기 + Dart 생성기

메시지를 schema.ts 한 곳에만 선언하고 TypeScript 검증기와 Dart 데이터
클래스를 생성한다. 클라와 서버가 같은 메시지를 각자 정의하면 반드시
어긋나고, 어긋난 지점은 런타임에 — 보통 배틀 중에 — 드러난다.

검증기는 여분 필드도 거부한다. 필드명 오타가 조용히 통과하면 원인을
찾는 데 훨씬 오래 걸린다.

START 에 좌표 필드를 두지 않는다. 클라는 베이스 이미지와 찾을 개수만
받고 위치는 REVEAL 로만 내려간다 — 스펙 §6.3 의 첫 방어선이다."
```

---

## 완료 기준

이 계획이 끝나면 다음이 성립한다.

1. `legacy/`에 원작·v1이 이력 보존된 채 격리돼 있고, 릴리스 키스토어는 커밋될 수 없다
2. `npm run content:all` 한 번으로 `content/`와 `app/assets/`가 처음부터 재생성된다
3. `content/puzzles/`에 30세트 262 rect가 검증을 통과한 상태로 들어있다
4. `content/images/`에 WebP 292장, `app/assets/`에 UI 189장 + 오디오 11개
5. `packages/protocol/`이 메시지 17종을 선언하고, TS 검증기와 Dart 클래스를 생성한다
6. `npm test` 그린, `npm run typecheck` 통과

## 다음 계획

- **Plan 2 — 서버**: 배틀 엔진(순수 리듀서 + 주입 시계), 매칭, AI, WS 게이트웨이, PostgreSQL/Redis, Docker Compose
- **Plan 3 — 클라이언트**: Flutter + Flame 앱, MD3 메타 화면, 레거시 룩 배틀·결과 화면

Plan 2는 이 계획의 `packages/protocol`과 `content/puzzles` 스키마를 입력으로 받으므로, 이 계획을 **실행한 뒤** 작성하는 편이 낫다. 지금 쓰면 아직 존재하지 않는 산출물의 형태를 추측하게 된다.
