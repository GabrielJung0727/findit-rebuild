# FindIt 2026 P0 — 배틀 엔진 & 규칙 Implementation Plan

> **실행하는 에이전트에게:** 이 문서는 Task 1 부터 순서대로 실행한다. 각 Task 의 스텝은
> 체크박스(`- [ ]`)로 되어 있으니 끝낼 때마다 표시한다. 특정 도구나 플러그인을 요구하지
> 않는다 — 필요한 것은 Node 24, npm, git 뿐이다.
>
> **중요: 각 Task 를 끝낼 때마다 그 Task 의 diff 를 독립적으로 검토하는 단계를 넣어라.**
> 자세한 이유와 방법은 아래 "실행 방식" 을 읽을 것. 이 계획서를 쓴 사람은 앞선 계획서에서
> 세 번 틀렸고, 그 셋 다 계획서를 따라가는 것만으로는 잡히지 않았다.
>
> Claude Code 용 원본: [`docs/superpowers/plans/2026-09-20-findit-2026-p0-battle-engine.md`](../superpowers/plans/2026-09-20-findit-2026-p0-battle-engine.md) — 내용은 같고 실행 지침만 다르다. 한쪽을 고치면 다른 쪽도 고칠 것.

**Goal:** 40초 1v1 배틀의 게임 규칙 전체를 I/O 없는 순수 함수로 구현한다 — 한 판을 밀리초 안에 결정론적으로 재현하고 검증할 수 있게.

**Architecture:** 스펙 §6.2의 단일 설계 결정을 코드 구조로 집행한다. 배틀 엔진은 `reduce(state, event, ctx) → { state, outbound, wakeAt }` 하나이고, 시계와 난수는 주입된다. 네트워크·DB·타이머는 **전부 이 계획 밖**이다 — Plan 3의 런타임이 이 리듀서를 감싼다. 규칙 수치는 스펙의 표를 fixture로 박아 회귀를 막는다.

**Tech Stack:** Node 24 LTS · TypeScript 5.7 · vitest 3 · `@findit/protocol`(Plan 1 산출물)

**Spec:** [`docs/superpowers/specs/2026-09-18-findit-2026-p0-design.md`](../superpowers/specs/2026-09-18-findit-2026-p0-design.md)

**Depends on:** Plan 1 ([`2026-09-18-findit-2026-p0-foundation.md`](../superpowers/plans/2026-09-18-findit-2026-p0-foundation.md)) — `packages/protocol`, `content/puzzles/`

## Global Constraints

- **Node 런타임**: 24 LTS. 루트 `.nvmrc`·`engines`를 따른다. 새 워크스페이스를 추가하지 말고 **기존 루트 npm workspaces에 `server`를 편입**한다.
- **언어**: TypeScript. `any` 금지, `strict: true`, `noUncheckedIndexedAccess: true` (루트 `tsconfig.base.json` 상속).
- **I/O 금지**: 이 계획이 만드는 코드는 `fs`·`net`·`Date.now()`·`Math.random()`을 **직접 호출하지 않는다**. 시계·난수·콘텐츠는 전부 주입된다. 유일한 예외는 Task 7의 콘텐츠 로더이며, 그것도 경로를 인자로 받는다.
- **게임 수치는 스펙 §3이 유일한 출처**. 코드에 수치를 새로 만들지 않는다. 스펙에 없으면 계획서가 명시적으로 정한 값을 쓰고, 그 사실을 주석에 남긴다.
- **제한시간 40,000ms · 노출 5개 · 오답 잠금 2,000ms · 카운트다운 3초**.
- **퍼즐 rect는 이미지당 7~10개**. 5를 넘는 어떤 수도 하드코딩하지 않는다.
- **커밋**: Task당 1커밋. 한국어 본문 + Conventional Commits 접두어. 기여자(`Co-Authored-By`) 표기는 실행 환경의 규칙을 따른다 — 이 계획서의 커밋 예시에는 넣지 않았다.
- **`legacy/`는 읽기 전용**: 수치를 이식할 때 읽기만 한다.

---

## 실행 방식 — 반드시 읽을 것

이 계획서를 할 일 목록으로만 취급하면 안 된다. 이유는 근거가 있다.

같은 사람이 쓴 앞선 계획서(Plan 1, 8 태스크)를 실행했을 때 **계획서 자체의 버그가 3건**
나왔다. 셋 다 계획서 텍스트를 읽어서는 보이지 않았고, 구현된 diff 를 독립적으로 검토한
단계에서 잡혔다.

| 잡힌 곳 | 내용 |
|---|---|
| Task 4 | 계획서의 테스트가 `[...counts].sort()` 를 썼다. JS 는 숫자를 문자열로 정렬해 `[10,7,8,9]` 가 나오므로 그 단언은 **구현이 옳든 그르든 절대 통과할 수 없었다** |
| Task 5 | 엔트리 가드가 경로 동등 비교가 아닌 접미사 매칭이었다. `"extract-puzzles.ts".endsWith("puzzles.ts")` 는 참이다 |
| Task 8 | **Critical** — 검증기가 `in` 연산자를 써서 프로토타입 체인을 탔다. `{"t":"constructor"}` 한 통으로 게이트웨이가 `TypeError` 로 죽고, `constructor`·`toString` 이름의 여분 필드는 검증을 그냥 통과했다 |

그 외에 최종 전체 검토에서 CI 워크플로가 존재하지 않는 경로를 가리키는 Critical,
패치 URL 열거로 정답 전체를 복원할 수 있는 결함, 메시지 방향 미검증(클라가 보낸 `END` 로
코인 자체 지급 가능)이 추가로 나왔다.

정리하면: **계획서를 충실히 따를수록 계획서의 버그도 충실히 복제된다.** 이 문서의 테스트에는
그 교훈을 반영해 순환 검사·불변성 검사·키 집합 단언을 더 넣었지만, 검토 계층을 대신하지는
못한다.

### 그래서 각 Task 마다 이렇게 한다

1. Task 의 스텝을 순서대로 실행한다 (TDD: 실패 테스트 → 실패 확인 → 구현 → 통과 확인).
2. 커밋한다.
3. **커밋 직후, 그 Task 의 diff 만 놓고 다시 검토한다.** 가능하면 구현한 세션과 분리된
   맥락에서 하라 — 방금 코드를 쓴 쪽은 자기 가정을 다시 읽을 뿐이다. Plan 1 에서 구현자가
   자기 것에서 잡은 결함은 1건, 별도 검토가 잡은 것은 5건이었다.

검토할 때 볼 것:

- **테스트가 실제로 무언가를 검증하는가.** 통과하는 테스트가 곧 옳은 테스트는 아니다.
  Task 4 의 사례처럼 애초에 통과 불가능한 단언이 섞여 있을 수 있다. 각 단언을 "구현이
  틀렸다면 이게 실패하는가?" 로 되물어라.
- **계획서가 시킨 것이 실제로 맞는가.** 계획서와 충돌하는 무언가를 발견하면 계획서를
  따르지 말고 멈춰서 보고하라. 계획서는 스펙의 논증일 뿐이고, 구속력 있는 것은
  `docs/superpowers/specs/2026-09-18-findit-2026-p0-design.md` 다.
- **스펙 §3 의 수치와 코드가 일치하는가.** 수치는 전부 스펙에서 온다.

### 계획서가 틀렸다고 판단되면

고쳐서 진행하되, **무엇을 왜 바꿨는지 반드시 남겨라.** 조용히 계획서와 다르게 구현하면
나중에 스펙·계획서·코드가 삼자 불일치가 된다. Plan 1 에서는 이런 경우 계획서 문서 자체를
먼저 고쳐 커밋해 "수정이 곧 명세" 가 되게 했다.

---

## File Structure

```
server/
├─ package.json            워크스페이스 매니페스트
├─ tsconfig.json           루트 tsconfig.base.json 상속
└─ src/
   ├─ platform/
   │  ├─ clock.ts          Clock 포트 + TestClock
   │  └─ rng.ts            Rng 포트 + 시드 구현
   ├─ rules/
   │  ├─ levels.ts         LEVEL_SCORE · LEVEL_ABILITY · 등급 (legacy 이식)
   │  ├─ combo.ts          콤보 점수·시간 보너스
   │  ├─ score.ts          승자/패자 점수
   │  ├─ skills.ts         스킬 트리 29종 + 가림시간 공식
   │  └─ ai.ts             AI 탐색시간 공식
   ├─ content/
   │  ├─ types.ts          Puzzle · PuzzleRect
   │  ├─ loader.ts         content/puzzles 읽기 (이 계획의 유일한 I/O)
   │  └─ assigner.ts       PuzzleAssigner — 퍼즐 선택 + 5-of-N
   └─ battle/
      ├─ state.ts          BattleState · Player
      ├─ events.ts         BattleEvent · Outbound
      ├─ reducer.ts        reduce() — 상태기계 · 히트/미스 · 스킬 · 종료
      └─ ai-driver.ts      AI 행동 스케줄링
```

`rules/`를 `battle/`에서 분리하는 이유는 수치와 로직의 수명이 다르기 때문이다. 밸런스 패치는 `rules/`만 건드리고, 리듀서는 그대로 있어야 한다.

`content/loader.ts`가 파일을 읽는 유일한 파일이다. 리듀서는 `Puzzle` 객체를 받을 뿐 어디서 왔는지 모른다.

---

### Task 1: `server` 워크스페이스 + 시계·난수 포트

**Files:**
- Create: `server/package.json`, `server/tsconfig.json`
- Create: `server/src/platform/clock.ts`, `server/src/platform/rng.ts`
- Test: `server/src/platform/rng.test.ts`
- Modify: `package.json` (workspaces), `tsconfig.json` (references), `vitest.config.ts` (include)

**Interfaces:**
- Consumes: 루트 `tsconfig.base.json`, 루트 npm workspaces
- Produces:
  - `interface Clock { now(): number }`
  - `class TestClock implements Clock` — `constructor(start?: number)`, `now()`, `advance(ms: number): void`, `set(ms: number): void`
  - `interface Rng { float(): number; int(maxExclusive: number): number; pick<T>(items: readonly T[]): T }`
  - `function createRng(seed: number): Rng`

**왜 포트인가:** 40초 매치를 테스트에서 밀리초 안에 돌리려면 시간이 인자여야 한다. `Date.now()`를 한 곳이라도 직접 부르면 그 코드는 실시간으로만 테스트된다.

- [ ] **Step 1: 실패하는 테스트 작성**

`server/src/platform/rng.test.ts`:

```typescript
import { describe, expect, it } from 'vitest';
import { createRng } from './rng.js';
import { TestClock } from './clock.js';

describe('createRng', () => {
  it('같은 시드는 같은 수열을 낸다 — 매치 재현의 전제', () => {
    const a = createRng(12345);
    const b = createRng(12345);
    const seqA = Array.from({ length: 20 }, () => a.float());
    const seqB = Array.from({ length: 20 }, () => b.float());
    expect(seqA).toEqual(seqB);
  });

  it('다른 시드는 다른 수열을 낸다', () => {
    const a = createRng(1);
    const b = createRng(2);
    expect(a.float()).not.toBe(b.float());
  });

  it('float 은 [0, 1) 범위다', () => {
    const rng = createRng(7);
    for (let i = 0; i < 1000; i++) {
      const v = rng.float();
      expect(v).toBeGreaterThanOrEqual(0);
      expect(v).toBeLessThan(1);
    }
  });

  it('int 은 [0, max) 범위이고 경계를 넘지 않는다', () => {
    const rng = createRng(99);
    for (let i = 0; i < 1000; i++) {
      const v = rng.int(10);
      expect(Number.isInteger(v)).toBe(true);
      expect(v).toBeGreaterThanOrEqual(0);
      expect(v).toBeLessThan(10);
    }
  });

  it('int(1) 은 항상 0 이다', () => {
    const rng = createRng(3);
    expect([rng.int(1), rng.int(1), rng.int(1)]).toEqual([0, 0, 0]);
  });

  it('pick 은 배열 원소 중 하나를 고른다', () => {
    const rng = createRng(42);
    const items = ['a', 'b', 'c'] as const;
    for (let i = 0; i < 100; i++) {
      expect(items).toContain(rng.pick(items));
    }
  });

  it('pick 은 빈 배열에서 던진다 — 조용히 undefined 를 내면 원인 추적이 어렵다', () => {
    expect(() => createRng(1).pick([])).toThrow(/empty/i);
  });
});

describe('TestClock', () => {
  it('advance 한 만큼만 흐른다', () => {
    const clock = new TestClock(1000);
    expect(clock.now()).toBe(1000);
    clock.advance(500);
    expect(clock.now()).toBe(1500);
  });

  it('set 은 절대 시각을 지정한다', () => {
    const clock = new TestClock();
    clock.set(40_000);
    expect(clock.now()).toBe(40_000);
  });

  it('뒤로 가는 advance 를 거부한다 — monotonic 계약이다', () => {
    const clock = new TestClock(100);
    expect(() => clock.advance(-1)).toThrow(/monotonic/i);
  });
});
```

- [ ] **Step 2: 실패 확인**

Run: `npx vitest run server/src/platform/rng.test.ts`
Expected: FAIL — `Cannot find module './rng.js'` (또는 include 글롭 미매치로 "No test files found")

- [ ] **Step 3: 워크스페이스 배선**

루트 `package.json`의 `workspaces`를 `["packages/*", "tools", "server"]`로 바꾼다.

루트 `tsconfig.json`의 `references`에 `{ "path": "./server" }`를 추가한다.

루트 `vitest.config.ts`의 `include`에 `'server/src/**/*.test.ts'`를 추가한다.

`server/package.json` — `@findit/protocol`을 의존성으로 선언해야 한다. npm workspaces 에서 워크스페이스 간 import 는 의존성 선언이 있어야 심볼릭 링크가 걸린다.
```json
{
  "name": "@findit/server",
  "private": true,
  "type": "module",
  "version": "0.0.0",
  "dependencies": {
    "@findit/protocol": "*"
  }
}
```

`server/tsconfig.json` 도 protocol 을 참조해야 `tsc -b` 가 빌드 순서를 안다:

`server/tsconfig.json`:
```json
{
  "extends": "../tsconfig.base.json",
  "compilerOptions": { "rootDir": "src", "outDir": "dist" },
  "include": ["src/**/*.ts"],
  "references": [{ "path": "../packages/protocol" }]
}
```

- [ ] **Step 4: 구현**

`server/src/platform/clock.ts`:

```typescript
/**
 * 단조 증가하는 밀리초 시계.
 * 배틀 엔진은 이 포트로만 시간을 읽는다 — Date.now() 를 직접 부르는 순간
 * 그 코드는 실시간으로만 테스트할 수 있게 된다.
 */
export interface Clock {
  now(): number;
}

/** 운영용. performance.now() 는 프로세스 시작 기준 단조 증가를 보장한다. */
export class SystemClock implements Clock {
  now(): number {
    return performance.now();
  }
}

/** 테스트용. 시간이 오직 advance/set 으로만 흐른다. */
export class TestClock implements Clock {
  #ms: number;

  constructor(start = 0) {
    this.#ms = start;
  }

  now(): number {
    return this.#ms;
  }

  advance(ms: number): void {
    if (ms < 0) throw new Error('TestClock: monotonic 계약 위반 — 음수 advance');
    this.#ms += ms;
  }

  set(ms: number): void {
    if (ms < this.#ms) throw new Error('TestClock: monotonic 계약 위반 — 과거로 set');
    this.#ms = ms;
  }
}
```

`server/src/platform/rng.ts`:

```typescript
/**
 * 시드 기반 난수. 매치 전체가 시드 하나로 재현 가능해야 버그를 재현할 수 있다.
 * Math.random() 은 이 프로젝트 어디에서도 쓰지 않는다.
 */
export interface Rng {
  /** [0, 1) */
  float(): number;
  /** [0, maxExclusive) 정수 */
  int(maxExclusive: number): number;
  /** 배열에서 하나 */
  pick<T>(items: readonly T[]): T;
}

/**
 * mulberry32 — 32비트 상태, 통계 품질이 게임 용도에 충분하고 구현이 짧아
 * 다른 언어로 이식해 동일 수열을 재현하기 쉽다.
 */
export function createRng(seed: number): Rng {
  let state = seed >>> 0;

  const float = (): number => {
    state = (state + 0x6d2b79f5) >>> 0;
    let t = state;
    t = Math.imul(t ^ (t >>> 15), t | 1);
    t ^= t + Math.imul(t ^ (t >>> 7), t | 61);
    return ((t ^ (t >>> 14)) >>> 0) / 4294967296;
  };

  return {
    float,
    int(maxExclusive: number): number {
      if (!Number.isInteger(maxExclusive) || maxExclusive < 1) {
        throw new Error(`Rng.int: maxExclusive 는 1 이상 정수여야 함 (${maxExclusive})`);
      }
      return Math.floor(float() * maxExclusive);
    },
    pick<T>(items: readonly T[]): T {
      if (items.length === 0) throw new Error('Rng.pick: empty array');
      return items[Math.floor(float() * items.length)]!;
    },
  };
}
```

- [ ] **Step 5: 테스트 통과 확인**

Run:
```bash
npm install
npx vitest run server/src/platform/rng.test.ts
npm run typecheck
```
Expected: PASS — 10 tests. typecheck exit 0.

- [ ] **Step 6: 커밋**

```bash
git add package.json package-lock.json tsconfig.json vitest.config.ts server/
git commit -m "$(cat <<'EOF'
feat(server): 워크스페이스 스캐폴드 + 시계·난수 포트

배틀 엔진이 40초 매치를 밀리초 안에 결정론적으로 돌리려면 시간과 난수가
주입돼야 한다. Date.now() 나 Math.random() 을 한 곳이라도 직접 부르면
그 코드는 실시간으로만, 그리고 재현 불가능하게 테스트된다.

난수는 mulberry32 를 쓴다. 상태가 32비트뿐이라 시드 하나로 매치 전체를
재현할 수 있고, 구현이 짧아 나중에 클라이언트 쪽에 이식해 같은 수열을
뽑기도 쉽다.
EOF
)"
```

---

### Task 2: 레벨·능력치 테이블 이식

**Files:**
- Create: `server/src/rules/levels.ts`
- Test: `server/src/rules/levels.test.ts`

**Interfaces:**
- Consumes: 없음 (순수 데이터)
- Produces:
  - `interface Ability { attack: number; defense: number; hp: number; grade: string }`
  - `function levelForScore(score: number): number` — 1~100
  - `function abilityForLevel(level: number): Ability`
  - `function gradeForLevel(level: number): string` — A~J
  - `function rankNameForLevel(level: number): string` — 시력 계급 11단계

**출처:** `legacy/server/src/util/balance.js`의 `LEVEL_SCORE`(101행)와 `LEVEL_ABILITY`(101행)를 **값 그대로** 옮긴다. 원 출처는 기획서 `레벨별 첨수체계_기본능력치_02.xlsx`다. 숫자를 재계산하거나 보간하지 말 것 — 표가 진실이다.

**시력 계급 (스펙 §3.7):** 지렁이 → 두더지 → 박쥐 → 곤충 → 개 → 토끼 → 사람 → 고양이 → 매 → 독수리 → 타조 (11계급). 스펙은 "레벨 1–100을 11계급에 매핑"만 말하고 경계는 정하지 않았다. **이 계획이 정한다: 지렁이~고양이는 각 10레벨(1–80), 매는 81–85, 독수리는 86–90, 타조는 91–100.** 11개 계급을 100레벨에 매핑하면서 기존 테스트의 1–10 지렁이·11–20 두더지·61 사람·91 타조 경계를 모두 보존한다.

**실행 중 정정 (2026-09-20):** 이전의 `Math.floor((level - 1) / 10)` 공식은 91–100을 독수리로 매핑하여 타조를 도달 불가능하게 만들었다. 11개 계급을 모두 도달 가능하게 하는 위 경계 배열로 교체한다. 또한 매개변수화된 테스트를 포함한 실제 테스트 수는 27개였고, `LEVEL_ABILITY`의 legacy 값 동일성 및 계급 clamp 검사를 보강해 29개로 정정한다.

- [ ] **Step 1: 실패하는 테스트 작성**

`server/src/rules/levels.test.ts`:

```typescript
import { describe, expect, it } from 'vitest';
import { readFileSync } from 'node:fs';
import { resolve } from 'node:path';
import {
  LEVEL_ABILITY,
  LEVEL_SCORE,
  abilityForLevel,
  gradeForLevel,
  levelForScore,
  rankNameForLevel,
} from './levels.js';

const ROOT = resolve(import.meta.dirname, '../../..');

describe('legacy 표와의 동일성', () => {
  it('LEVEL_SCORE 가 legacy balance.js 와 값까지 같다', () => {
    const src = readFileSync(resolve(ROOT, 'legacy/server/src/util/balance.js'), 'utf8');
    const block = src.slice(src.indexOf('const LEVEL_SCORE = ['));
    const numbers = block
      .slice(0, block.indexOf('];'))
      .match(/\d+/g)!
      .map(Number);
    expect(LEVEL_SCORE).toEqual(numbers);
  });

  it('두 표 모두 101 행이다 (레벨 0~100)', () => {
    expect(LEVEL_SCORE).toHaveLength(101);
    expect(LEVEL_ABILITY).toHaveLength(101);
  });
});

describe('levelForScore', () => {
  it.each([
    [0, 1],
    [4999, 1],
    [5000, 2],
    [175_710, 15],
    [662_881_154, 100],
    [999_999_999, 100],
  ])('점수 %i → 레벨 %i', (score, level) => {
    expect(levelForScore(score)).toBe(level);
  });

  it('음수 점수도 레벨 1 로 떨어진다', () => {
    expect(levelForScore(-1)).toBe(1);
  });
});

describe('abilityForLevel', () => {
  it('스펙 §3.7 이 인용한 값과 일치한다', () => {
    expect(abilityForLevel(1)).toMatchObject({ attack: 0.5, defense: 0.5, hp: 110 });
    expect(abilityForLevel(10)).toMatchObject({ attack: 0.59, defense: 0.59, hp: 200 });
    expect(abilityForLevel(100)).toMatchObject({ attack: 1.57, defense: 1.57, hp: 5000 });
  });

  it('범위를 벗어난 레벨을 [0, 100] 으로 clamp 한다', () => {
    expect(abilityForLevel(-5)).toEqual(abilityForLevel(0));
    expect(abilityForLevel(500)).toEqual(abilityForLevel(100));
  });

  it('공격력은 레벨에 따라 단조 증가한다', () => {
    for (let lv = 2; lv <= 100; lv++) {
      expect(abilityForLevel(lv).attack).toBeGreaterThanOrEqual(abilityForLevel(lv - 1).attack);
    }
  });
});

describe('gradeForLevel', () => {
  it.each([
    [1, 'A'], [10, 'A'], [11, 'B'], [50, 'E'], [91, 'J'], [100, 'J'],
  ])('레벨 %i → 등급 %s', (level, grade) => {
    expect(gradeForLevel(level)).toBe(grade);
  });
});

describe('rankNameForLevel — 시력 계급 11단계', () => {
  it.each([
    [1, '지렁이'], [10, '지렁이'],
    [11, '두더지'], [20, '두더지'],
    [21, '박쥐'],
    [61, '사람'],
    [91, '타조'], [100, '타조'],
  ])('레벨 %i → %s', (level, rank) => {
    expect(rankNameForLevel(level)).toBe(rank);
  });

  it('11 계급이 모두 도달 가능하다 — 죽은 계급이 없어야 한다', () => {
    const reached = new Set<string>();
    for (let lv = 1; lv <= 100; lv++) reached.add(rankNameForLevel(lv));
    expect(reached.size).toBe(11);
  });
});
```

- [ ] **Step 2: 실패 확인**

Run: `npx vitest run server/src/rules/levels.test.ts`
Expected: FAIL — `Cannot find module './levels.js'`

- [ ] **Step 3: 구현**

`server/src/rules/levels.ts` — `LEVEL_SCORE`와 `LEVEL_ABILITY`는 **손으로 옮기지 말 것.** 101개 숫자를 눈으로 베끼면 반드시 틀린다. 아래 명령으로 두 블록을 그대로 뽑아 붙여넣는다:

```bash
sed -n '/^const LEVEL_SCORE = \[/,/^\];/p'   legacy/server/src/util/balance.js
sed -n '/^const LEVEL_ABILITY = \[/,/^\];/p' legacy/server/src/util/balance.js
```

출력을 아래 뼈대의 해당 위치에 그대로 넣고, `const X = [` 를 `export const X: readonly … = [` 로만 바꾼다. 숫자는 한 글자도 건드리지 않는다.

```typescript
// 레벨 밸런스 — 원 출처: 기획서 "레벨별 첨수체계_기본능력치_02.xlsx"
// legacy/server/src/util/balance.js 에서 값 그대로 이식. 재계산·보간 금지.

/** 레벨 N 에 도달하는 데 필요한 누적 점수. 인덱스 = 레벨 (0 번은 자리 맞춤용). */
export const LEVEL_SCORE: readonly number[] = [
  /* 위 sed 명령의 출력 101 항목을 그대로 */
];

/** [attack, defense, hp]. 인덱스 = 레벨. */
export const LEVEL_ABILITY: readonly (readonly [number, number, number])[] = [
  /* 위 sed 명령의 출력 101 항목을 그대로 */
];

const GRADE_BANDS = [
  { grade: 'A', min: 1, max: 10 },
  { grade: 'B', min: 11, max: 20 },
  { grade: 'C', min: 21, max: 30 },
  { grade: 'D', min: 31, max: 40 },
  { grade: 'E', min: 41, max: 50 },
  { grade: 'F', min: 51, max: 60 },
  { grade: 'G', min: 61, max: 70 },
  { grade: 'H', min: 71, max: 80 },
  { grade: 'I', min: 81, max: 90 },
  { grade: 'J', min: 91, max: 100 },
] as const;

/**
 * 시력 컨셉 계급 (스펙 §3.7). 낮은 시력에서 높은 시력 순.
 * 스펙은 11 계급만 정하고 경계는 정하지 않았다. 지렁이~고양이는 10 레벨
 * 단위이고, 매/독수리/타조는 각각 81~85/86~90/91~100 을 받는다.
 */
const RANK_NAMES = [
  '지렁이', '두더지', '박쥐', '곤충', '개', '토끼', '사람', '고양이', '매', '독수리', '타조',
] as const;

const RANK_MAX_LEVELS = [10, 20, 30, 40, 50, 60, 70, 80, 85, 90, 100] as const;

export interface Ability {
  attack: number;
  defense: number;
  hp: number;
  grade: string;
}

export function levelForScore(score: number): number {
  for (let i = 1; i < LEVEL_SCORE.length; i++) {
    if (score < LEVEL_SCORE[i]!) return i;
  }
  return 100;
}

export function gradeForLevel(level: number): string {
  const band = GRADE_BANDS.find((b) => level >= b.min && level <= b.max);
  return band?.grade ?? 'J';
}

export function rankNameForLevel(level: number): string {
  const clamped = Math.max(1, Math.min(100, level));
  const index = RANK_MAX_LEVELS.findIndex((max) => clamped <= max);
  return RANK_NAMES[index]!;
}

export function abilityForLevel(level: number): Ability {
  const clamped = Math.max(0, Math.min(100, level));
  const row = LEVEL_ABILITY[clamped]!;
  return { attack: row[0], defense: row[1], hp: row[2], grade: gradeForLevel(clamped) };
}
```

- [ ] **Step 4: 테스트 통과 확인**

Run: `npx vitest run server/src/rules/levels.test.ts`
Expected: PASS — 29 tests. 특히 `LEVEL_SCORE`와 `LEVEL_ABILITY`가 모두 legacy `balance.js`와 값까지 같아야 한다. 실패하면 표를 손으로 옮기다 틀린 것이다.

- [ ] **Step 5: 커밋**

```bash
git add server/src/rules/levels.ts server/src/rules/levels.test.ts
git commit -m "$(cat <<'EOF'
feat(server): 레벨·능력치 표 이식 + 시력 계급

legacy/server/src/util/balance.js 의 LEVEL_SCORE / LEVEL_ABILITY 101행을
값 그대로 옮긴다. 원 출처는 2012 기획서 xlsx 다.

표를 손으로 옮기면 틀렸는지 알 방법이 없으므로, 테스트가 legacy 파일을
직접 파싱해 값 일치를 강제한다.

시력 계급 11 단계는 스펙 §3.7 이 이름만 정하고 경계는 비워뒀다. 10 레벨
단위로 자르되 마지막 계급이 91~100 을 받도록 정하고, 죽은 계급이 없음을
테스트로 확인한다.
EOF
)"
```

---

### Task 3: 콤보 · 점수 규칙

**Files:**
- Create: `server/src/rules/combo.ts`, `server/src/rules/score.ts`
- Test: `server/src/rules/combo.test.ts`, `server/src/rules/score.test.ts`

**Interfaces:**
- Consumes: 없음
- Produces:
  - `function comboScoreBonus(combo: number): number`
  - `function comboTimeBonusMs(combo: number): number`
  - `function matchScore(params: { findCount: number; comboBonus: number; isWinner: boolean }): number`

**스펙 §3.2 표 (그대로 구현):**

| 콤보 | 점수 보너스 | 시간 보너스 |
|---:|---:|---:|
| 1 | +100 | +1초 |
| 2 | +200 | +2초 |
| 3 | +400 | +4초 |
| 4 이상 | +700 | +7초 |

```
승자 점수 = findCount × 50 + 100 + comboBonus
패자 점수 = findCount × 50 + comboBonus
```

- [ ] **Step 1: 실패하는 테스트 작성**

`server/src/rules/combo.test.ts`:

```typescript
import { describe, expect, it } from 'vitest';
import { comboScoreBonus, comboTimeBonusMs } from './combo.js';

describe('comboScoreBonus — 스펙 §3.2 표', () => {
  it.each([
    [0, 0], [1, 100], [2, 200], [3, 400], [4, 700], [5, 700], [99, 700],
  ])('콤보 %i → %i 점', (combo, bonus) => {
    expect(comboScoreBonus(combo)).toBe(bonus);
  });

  it('음수 콤보는 0 이다', () => {
    expect(comboScoreBonus(-1)).toBe(0);
  });

  it('4 이상에서 포화한다 — 무한 누적을 막는다', () => {
    expect(comboScoreBonus(4)).toBe(comboScoreBonus(1000));
  });
});

describe('comboTimeBonusMs — 스펙 §3.2 표', () => {
  it.each([
    [0, 0], [1, 1000], [2, 2000], [3, 4000], [4, 7000], [10, 7000],
  ])('콤보 %i → %ims', (combo, ms) => {
    expect(comboTimeBonusMs(combo)).toBe(ms);
  });
});
```

`server/src/rules/score.test.ts`:

```typescript
import { describe, expect, it } from 'vitest';
import { matchScore } from './score.js';

describe('matchScore — 스펙 §3.2 공식', () => {
  it('승자는 findCount×50 + 100 + 콤보보너스', () => {
    expect(matchScore({ findCount: 5, comboBonus: 700, isWinner: true })).toBe(5 * 50 + 100 + 700);
  });

  it('패자는 승리 보너스 100 이 없다', () => {
    expect(matchScore({ findCount: 3, comboBonus: 200, isWinner: false })).toBe(3 * 50 + 200);
  });

  it('승패 점수 차이는 정확히 100 이다', () => {
    const args = { findCount: 4, comboBonus: 400 };
    expect(
      matchScore({ ...args, isWinner: true }) - matchScore({ ...args, isWinner: false }),
    ).toBe(100);
  });

  it('0 개 발견 · 콤보 0 인 패자는 0 점이다', () => {
    expect(matchScore({ findCount: 0, comboBonus: 0, isWinner: false })).toBe(0);
  });

  it('음수 findCount 를 거부한다 — 정산 버그가 조용히 통과하면 안 된다', () => {
    expect(() => matchScore({ findCount: -1, comboBonus: 0, isWinner: true })).toThrow(/findCount/);
  });
});
```

- [ ] **Step 2: 실패 확인**

Run: `npx vitest run server/src/rules/combo.test.ts server/src/rules/score.test.ts`
Expected: FAIL — 두 모듈 모두 없음.

- [ ] **Step 3: 구현**

`server/src/rules/combo.ts`:

```typescript
// 콤보 보너스 — 스펙 §3.2. 원작 GameView.comboScoreBonus / comboTimeBonus 와 동일.

const SCORE_BONUS = [100, 200, 400, 700] as const;
const TIME_BONUS_MS = [1000, 2000, 4000, 7000] as const;

/** 콤보 n 이 4 를 넘어도 보너스는 포화한다. 원작이 그렇게 잘랐다. */
function tableLookup(table: readonly number[], combo: number): number {
  if (combo <= 0) return 0;
  const index = Math.min(combo, table.length) - 1;
  return table[index]!;
}

export function comboScoreBonus(combo: number): number {
  return tableLookup(SCORE_BONUS, combo);
}

export function comboTimeBonusMs(combo: number): number {
  return tableLookup(TIME_BONUS_MS, combo);
}
```

`server/src/rules/score.ts`:

```typescript
// 매치 점수 — 스펙 §3.2.
//   승자 = findCount × 50 + 100 + comboBonus
//   패자 = findCount × 50 + comboBonus

const POINTS_PER_FIND = 50;
const WINNER_BONUS = 100;

export interface MatchScoreParams {
  findCount: number;
  comboBonus: number;
  isWinner: boolean;
}

export function matchScore({ findCount, comboBonus, isWinner }: MatchScoreParams): number {
  if (!Number.isInteger(findCount) || findCount < 0) {
    throw new Error(`matchScore: findCount 는 0 이상 정수여야 함 (${findCount})`);
  }
  return findCount * POINTS_PER_FIND + (isWinner ? WINNER_BONUS : 0) + comboBonus;
}
```

- [ ] **Step 4: 테스트 통과 확인**

Run: `npx vitest run server/src/rules/`
Expected: PASS — combo 15 + score 5 = 20 tests (levels 29 포함 시 49). `it.each`의 각 행도 독립 테스트이므로, 이전 합계는 잘못 셌다.

- [ ] **Step 5: 커밋**

```bash
git add server/src/rules/combo.ts server/src/rules/combo.test.ts server/src/rules/score.ts server/src/rules/score.test.ts
git commit -m "$(cat <<'EOF'
feat(server): 콤보·점수 규칙

스펙 §3.2 의 두 표를 그대로 구현한다. 콤보 보너스는 4 이상에서 포화하는데,
원작이 그렇게 잘라둔 것이라 그대로 따른다.

수치는 전부 테이블 테스트로 고정한다. 밸런스 값은 시간이 지나면 누군가
"대충 이 정도겠지" 로 바꾸게 되는데, 표를 fixture 로 박아두면 그 순간
테스트가 잡는다.
EOF
)"
```

---

### Task 4: 스킬 트리 + 가림시간 공식

**Files:**
- Create: `server/src/rules/skills.ts`
- Test: `server/src/rules/skills.test.ts`

**Interfaces:**
- Consumes: 없음
- Produces:
  - `interface SkillDef { id: string; family: SkillFamily; tier: number; durationMs: number; unlockLevel: number; pointCost: number; requires: readonly string[]; effectAsset: string }`
  - `type SkillFamily = 'handprint' | 'footprint' | 'shadow' | 'clone' | 'ghost'`
  - `const SKILLS: readonly SkillDef[]` — 29개
  - `function skillById(id: string): SkillDef | undefined`
  - `function blindDurationMs(params: BlindParams): number`

**스펙 §3.4 표 (그대로 구현, 총 29 스킬):**

| 계열 | id 접두어 | 단계 | 지속시간 | 언락 레벨 | 포인트 | 선행 |
|---|---|---:|---|---|---:|---|
| 손도장 | `handprint_` | 1–9 | 1.0 → 1.8초 (+0.1) | 1, 3, 5, … 17 (홀수) | 1 | 직전 단계 |
| 발도장 | `footprint_` | 1–5 | 1.9 → 2.3초 (+0.1) | 10, 12, 14, 16, 18 | 2 | `handprint_5` + 직전 |
| 그림자 | `shadow_` | 1–5 | 2.0 → 2.4초 (+0.1) | 20, 22, 24, 26, 28 | 3 | `handprint_8`, `footprint_5` + 직전 |
| 분신 | `clone_` | 1–5 | 2.5 → 2.9초 (+0.1) | 30, 33, 36, 39, 42 | 4 | `shadow_5` + 직전 |
| 유령 | `ghost_` | 1–5 | 3.0 → 4.0초 | 45, 48, 51, 54, 57 | 5 | `clone_5`, `footprint_5`, `handprint_9` + 직전 |

**이 계획이 정하는 것 두 가지:**

1. **유령 계열 지속시간.** 스펙은 끝점 3.0·4.0초와 "단계당 +0.2s~0.5s"만 준다. **균등 +0.25초로 정한다** → `[3.0, 3.25, 3.5, 3.75, 4.0]`. 두 끝점을 정확히 맞추고 명시된 0.2~0.5 범위 안에 든다.
2. **유령의 "손도장 10" 선행 요건.** 손도장은 9단계까지만 존재한다. 스펙 §3.4가 이미 **손도장 9로 해석**하라고 정해뒀다. 그대로 따른다.

**이펙트 에셋 매핑은 스펙 §3.5:** handprint→`efct_skill_01`, footprint→`efct_skill_02`, shadow→`efct_skill_101`, clone→`efct_skill_102`, ghost→`efct_skill_103`.

**가림시간 공식 (스펙 §3.3):**
```
최종 = 스킬 기본시간 + 공격자 공격력 + 공격자 아이템 추가시간
                    − 방어자 방어력 − 방어자 아이템 감쇄시간
```
하한 **0초**로 clamp (스펙이 명시적으로 정함). 능력치는 초 단위 계수로 취급한다.

- [ ] **Step 1: 실패하는 테스트 작성**

`server/src/rules/skills.test.ts`:

```typescript
import { describe, expect, it } from 'vitest';
import { SKILLS, blindDurationMs, skillById } from './skills.js';

describe('SKILLS 표 — 스펙 §3.4', () => {
  it('총 29 개다 (손도장 9 + 발도장 5 + 그림자 5 + 분신 5 + 유령 5)', () => {
    expect(SKILLS).toHaveLength(29);
  });

  it('계열별 개수가 맞는다', () => {
    const count = (f: string) => SKILLS.filter((s) => s.family === f).length;
    expect(count('handprint')).toBe(9);
    expect(count('footprint')).toBe(5);
    expect(count('shadow')).toBe(5);
    expect(count('clone')).toBe(5);
    expect(count('ghost')).toBe(5);
  });

  it('id 가 중복되지 않는다', () => {
    expect(new Set(SKILLS.map((s) => s.id)).size).toBe(SKILLS.length);
  });

  it.each([
    ['handprint_1', 1000, 1, 1],
    ['handprint_9', 1800, 17, 1],
    ['footprint_1', 1900, 10, 2],
    ['footprint_5', 2300, 18, 2],
    ['shadow_1', 2000, 20, 3],
    ['shadow_5', 2400, 28, 3],
    ['clone_1', 2500, 30, 4],
    ['clone_5', 2900, 42, 4],
    ['ghost_1', 3000, 45, 5],
    ['ghost_5', 4000, 57, 5],
  ])('%s → %ims, Lv%i, %ipt', (id, durationMs, unlockLevel, pointCost) => {
    expect(skillById(id)).toMatchObject({ durationMs, unlockLevel, pointCost });
  });

  it('손도장 언락 레벨은 홀수만 쓴다', () => {
    for (const s of SKILLS.filter((x) => x.family === 'handprint')) {
      expect(s.unlockLevel % 2).toBe(1);
    }
  });

  it('유령 지속시간은 3.0 → 4.0 을 균등 +0.25 로 채운다', () => {
    const ghosts = SKILLS.filter((s) => s.family === 'ghost').map((s) => s.durationMs);
    expect(ghosts).toEqual([3000, 3250, 3500, 3750, 4000]);
  });

  it('모든 선행 요건이 실재하는 스킬을 가리킨다 — 오타면 영구히 못 배운다', () => {
    const ids = new Set(SKILLS.map((s) => s.id));
    for (const s of SKILLS) {
      for (const req of s.requires) expect(ids.has(req)).toBe(true);
    }
  });

  it('선행 요건에 순환이 없다 — 위상 정렬이 성립한다', () => {
    const byId = new Map(SKILLS.map((s) => [s.id, s]));
    const state = new Map<string, 'visiting' | 'done'>();
    const visit = (id: string): void => {
      if (state.get(id) === 'done') return;
      if (state.get(id) === 'visiting') throw new Error(`cycle at ${id}`);
      state.set(id, 'visiting');
      for (const r of byId.get(id)!.requires) visit(r);
      state.set(id, 'done');
    };
    expect(() => SKILLS.forEach((s) => visit(s.id))).not.toThrow();
  });

  it('선행 스킬의 언락 레벨이 항상 더 낮거나 같다 — 배울 수 없는 스킬을 막는다', () => {
    const byId = new Map(SKILLS.map((s) => [s.id, s]));
    for (const s of SKILLS) {
      for (const r of s.requires) {
        expect(byId.get(r)!.unlockLevel).toBeLessThanOrEqual(s.unlockLevel);
      }
    }
  });

  it('유령은 손도장 9 를 요구한다 — 스펙이 "손도장 10" 을 9 로 해석하라고 정했다', () => {
    expect(skillById('ghost_1')!.requires).toContain('handprint_9');
  });

  it('계열별 이펙트 에셋이 스펙 §3.5 매핑과 같다', () => {
    const asset = (f: string) => SKILLS.find((s) => s.family === f)!.effectAsset;
    expect(asset('handprint')).toBe('efct_skill_01');
    expect(asset('footprint')).toBe('efct_skill_02');
    expect(asset('shadow')).toBe('efct_skill_101');
    expect(asset('clone')).toBe('efct_skill_102');
    expect(asset('ghost')).toBe('efct_skill_103');
  });
});

describe('blindDurationMs — 스펙 §3.3 공식', () => {
  const base = {
    skillDurationMs: 2000,
    attackerAttack: 0,
    attackerItemBonusMs: 0,
    defenderDefense: 0,
    defenderItemReductionMs: 0,
  };

  it('수식어가 없으면 스킬 기본시간 그대로다', () => {
    expect(blindDurationMs(base)).toBe(2000);
  });

  it('공격력은 초 단위로 더해진다', () => {
    expect(blindDurationMs({ ...base, attackerAttack: 0.5 })).toBe(2500);
  });

  it('방어력은 초 단위로 빠진다', () => {
    expect(blindDurationMs({ ...base, defenderDefense: 0.5 })).toBe(1500);
  });

  it('아이템 보정이 양쪽 다 적용된다', () => {
    expect(
      blindDurationMs({ ...base, attackerItemBonusMs: 800, defenderItemReductionMs: 600 }),
    ).toBe(2200);
  });

  it('스펙 예시 전체 조합', () => {
    // 2.0 + 0.85 + 0.8 − 0.85 − 0.9 = 1.9초
    expect(
      blindDurationMs({
        skillDurationMs: 2000,
        attackerAttack: 0.85,
        attackerItemBonusMs: 800,
        defenderDefense: 0.85,
        defenderItemReductionMs: 900,
      }),
    ).toBe(1900);
  });

  it('0 으로 clamp 한다 — 음수 가림 시간은 정의되지 않는다', () => {
    expect(blindDurationMs({ ...base, defenderDefense: 99 })).toBe(0);
  });

  it('정수 밀리초를 낸다 — 부동소수 잔차가 새어나가면 안 된다', () => {
    const ms = blindDurationMs({ ...base, attackerAttack: 0.57, defenderDefense: 0.13 });
    expect(Number.isInteger(ms)).toBe(true);
    expect(ms).toBe(2440);
  });
});
```

- [ ] **Step 2: 실패 확인**

Run: `npx vitest run server/src/rules/skills.test.ts`
Expected: FAIL — `Cannot find module './skills.js'`

- [ ] **Step 3: 구현**

`server/src/rules/skills.ts`:

```typescript
// 스킬 트리 — 스펙 §3.4 표, 비주얼 매핑은 §3.5, 가림시간 공식은 §3.3.

export type SkillFamily = 'handprint' | 'footprint' | 'shadow' | 'clone' | 'ghost';

export interface SkillDef {
  id: string;
  family: SkillFamily;
  tier: number;
  durationMs: number;
  unlockLevel: number;
  pointCost: number;
  requires: readonly string[];
  effectAsset: string;
}

interface FamilySpec {
  family: SkillFamily;
  /** 단계별 지속시간(ms). 길이가 곧 계열의 단계 수다. */
  durationsMs: readonly number[];
  /** 단계별 언락 레벨. durationsMs 와 길이가 같아야 한다. */
  unlockLevels: readonly number[];
  pointCost: number;
  /** 1 단계의 선행 요건. 2 단계 이상은 직전 단계가 자동으로 붙는다. */
  entryRequires: readonly string[];
  effectAsset: string;
}

/**
 * 유령 계열 지속시간: 스펙은 끝점 3.0·4.0 초와 "단계당 +0.2s~0.5s" 만 준다.
 * 균등 +0.25 초로 정한다 — 두 끝점을 정확히 맞추고 명시된 범위 안에 든다.
 */
const FAMILIES: readonly FamilySpec[] = [
  {
    family: 'handprint',
    durationsMs: [1000, 1100, 1200, 1300, 1400, 1500, 1600, 1700, 1800],
    unlockLevels: [1, 3, 5, 7, 9, 11, 13, 15, 17],
    pointCost: 1,
    entryRequires: [],
    effectAsset: 'efct_skill_01',
  },
  {
    family: 'footprint',
    durationsMs: [1900, 2000, 2100, 2200, 2300],
    unlockLevels: [10, 12, 14, 16, 18],
    pointCost: 2,
    entryRequires: ['handprint_5'],
    effectAsset: 'efct_skill_02',
  },
  {
    family: 'shadow',
    durationsMs: [2000, 2100, 2200, 2300, 2400],
    unlockLevels: [20, 22, 24, 26, 28],
    pointCost: 3,
    entryRequires: ['handprint_8', 'footprint_5'],
    effectAsset: 'efct_skill_101',
  },
  {
    family: 'clone',
    durationsMs: [2500, 2600, 2700, 2800, 2900],
    unlockLevels: [30, 33, 36, 39, 42],
    pointCost: 4,
    entryRequires: ['shadow_5'],
    effectAsset: 'efct_skill_102',
  },
  {
    family: 'ghost',
    durationsMs: [3000, 3250, 3500, 3750, 4000],
    unlockLevels: [45, 48, 51, 54, 57],
    pointCost: 5,
    // 스펙 §3.4: "손도장 10" 요구는 손도장이 9 단계까지뿐이므로 9 로 해석한다.
    entryRequires: ['clone_5', 'footprint_5', 'handprint_9'],
    effectAsset: 'efct_skill_103',
  },
];

function buildSkills(): SkillDef[] {
  const skills: SkillDef[] = [];
  for (const spec of FAMILIES) {
    if (spec.durationsMs.length !== spec.unlockLevels.length) {
      throw new Error(`${spec.family}: durationsMs 와 unlockLevels 길이 불일치`);
    }
    spec.durationsMs.forEach((durationMs, i) => {
      const tier = i + 1;
      const previous = i === 0 ? [] : [`${spec.family}_${tier - 1}`];
      skills.push({
        id: `${spec.family}_${tier}`,
        family: spec.family,
        tier,
        durationMs,
        unlockLevel: spec.unlockLevels[i]!,
        pointCost: spec.pointCost,
        requires: [...(i === 0 ? spec.entryRequires : []), ...previous],
        effectAsset: spec.effectAsset,
      });
    });
  }
  return skills;
}

export const SKILLS: readonly SkillDef[] = buildSkills();

const BY_ID = new Map(SKILLS.map((s) => [s.id, s]));

export function skillById(id: string): SkillDef | undefined {
  return BY_ID.get(id);
}

export interface BlindParams {
  skillDurationMs: number;
  /** 레벨 기반 공격력. 초 단위 계수다. */
  attackerAttack: number;
  attackerItemBonusMs: number;
  /** 레벨 기반 방어력. 초 단위 계수다. */
  defenderDefense: number;
  defenderItemReductionMs: number;
}

/**
 * 스펙 §3.3:
 *   최종 = 기본시간 + 공격력 + 공격아이템 − 방어력 − 방어아이템
 * 하한 0 으로 clamp 한다 — 음수 가림 시간은 정의되지 않는다.
 */
export function blindDurationMs({
  skillDurationMs,
  attackerAttack,
  attackerItemBonusMs,
  defenderDefense,
  defenderItemReductionMs,
}: BlindParams): number {
  const raw =
    skillDurationMs +
    attackerAttack * 1000 +
    attackerItemBonusMs -
    defenderDefense * 1000 -
    defenderItemReductionMs;
  // 능력치가 소수라 부동소수 잔차가 남는다. 반올림해 정수 ms 로 고정한다.
  return Math.max(0, Math.round(raw));
}
```

- [ ] **Step 4: 테스트 통과 확인**

Run: `npx vitest run server/src/rules/skills.test.ts`
Expected: PASS — 29 tests. `it.each`의 10개 스킬 행도 독립 테스트고, 독립 검토에서 추가한 두 fixture가 모든 계열의 수치와 1단계 교차 선행 요건을 고정한다. 특히 순환 검사와 "선행 스킬의 언락 레벨이 더 낮다"가 통과해야 한다 — 이 둘이 깨지면 플레이어가 영원히 못 배우는 스킬이 생긴다.

- [ ] **Step 5: 커밋**

```bash
git add server/src/rules/skills.ts server/src/rules/skills.test.ts
git commit -m "$(cat <<'EOF'
feat(server): 스킬 트리 29종 + 가림시간 공식

스펙 §3.4 표를 계열 명세에서 생성한다. 29 줄을 손으로 나열하면 선행
요건 오타가 눈에 안 띄는데, 생성하면 직전 단계 연결이 구조적으로 보장된다.

테스트가 세 가지를 강제한다: 선행 요건이 실재하는 스킬을 가리킬 것,
순환이 없을 것, 선행 스킬의 언락 레벨이 더 낮을 것. 이 중 하나라도
깨지면 플레이어가 영원히 배울 수 없는 스킬이 생긴다.

스펙이 비워둔 유령 계열 지속시간은 균등 +0.25 초로 정했다. 끝점
3.0·4.0 을 정확히 맞추고 명시된 0.2~0.5 범위 안에 든다.

가림시간은 정수 ms 로 반올림한다. 능력치가 소수라 그냥 두면 부동소수
잔차가 프로토콜 밖으로 새어나간다.
EOF
)"
```

---

### Task 5: AI 탐색시간 공식

**Files:**
- Create: `server/src/rules/ai.ts`
- Test: `server/src/rules/ai.test.ts`

**Interfaces:**
- Consumes: `Rng` (Task 1)
- Produces: `function aiFindDelayMs(level: number, rng: Rng): number`

**스펙 §3.6 공식:**
```
탐색 소요시간(초) = clamp( (7 − level × 0.03) × (1 + U(−0.15, +0.15)), 1.0, 7.0 )
```

- [ ] **Step 1: 실패하는 테스트 작성**

`server/src/rules/ai.test.ts`:

```typescript
import { describe, expect, it } from 'vitest';
import { createRng } from '../platform/rng.js';
import { AI_BASE_SECONDS, AI_MAX_SECONDS, AI_MIN_SECONDS, aiFindDelayMs } from './ai.js';

describe('aiFindDelayMs — 스펙 §3.6', () => {
  it('상수가 스펙과 같다', () => {
    expect(AI_BASE_SECONDS).toBe(7);
    expect(AI_MIN_SECONDS).toBe(1);
    expect(AI_MAX_SECONDS).toBe(7);
  });

  it('같은 시드는 같은 값을 낸다', () => {
    expect(aiFindDelayMs(30, createRng(5))).toBe(aiFindDelayMs(30, createRng(5)));
  });

  it('항상 [1000, 7000] ms 범위 안이다', () => {
    const rng = createRng(1);
    for (let level = 1; level <= 100; level++) {
      for (let i = 0; i < 40; i++) {
        const ms = aiFindDelayMs(level, rng);
        expect(ms).toBeGreaterThanOrEqual(1000);
        expect(ms).toBeLessThanOrEqual(7000);
      }
    }
  });

  it('정수 밀리초를 낸다', () => {
    const rng = createRng(2);
    for (let i = 0; i < 50; i++) expect(Number.isInteger(aiFindDelayMs(50, rng))).toBe(true);
  });

  it('고레벨일수록 평균이 빨라진다 — 난이도 상승이 실제로 작동하는지', () => {
    const mean = (level: number): number => {
      const rng = createRng(777);
      let total = 0;
      for (let i = 0; i < 2000; i++) total += aiFindDelayMs(level, rng);
      return total / 2000;
    };
    expect(mean(100)).toBeLessThan(mean(50));
    expect(mean(50)).toBeLessThan(mean(1));
  });

  it('레벨 1 의 평균이 기본 7 초에 근접한다 (±15% jitter 는 평균 0)', () => {
    const rng = createRng(31);
    let total = 0;
    for (let i = 0; i < 5000; i++) total += aiFindDelayMs(1, rng);
    // 7 − 0.03 = 6.97 초. 단 상한 7.0 clamp 가 위쪽을 잘라 평균이 조금 내려간다.
    expect(total / 5000).toBeGreaterThan(6000);
    expect(total / 5000).toBeLessThan(7000);
  });

  it('범위를 벗어난 레벨을 [1, 100] 으로 clamp 한다', () => {
    expect(aiFindDelayMs(0, createRng(9))).toBe(aiFindDelayMs(1, createRng(9)));
    expect(aiFindDelayMs(999, createRng(9))).toBe(aiFindDelayMs(100, createRng(9)));
  });
});
```

- [ ] **Step 2: 실패 확인**

Run: `npx vitest run server/src/rules/ai.test.ts`
Expected: FAIL — `Cannot find module './ai.js'`

- [ ] **Step 3: 구현**

`server/src/rules/ai.ts`:

```typescript
import type { Rng } from '../platform/rng.js';

// AI 탐색 주기 — 스펙 §3.6.
//   clamp( (7 − level × 0.03) × (1 + U(−0.15, +0.15)), 1.0, 7.0 )
// 원작 기획서의 초기안은 level × 0.02 였고 0.03 으로 개정됐다.

export const AI_BASE_SECONDS = 7;
export const AI_LEVEL_FACTOR = 0.03;
export const AI_JITTER = 0.15;
export const AI_MIN_SECONDS = 1;
export const AI_MAX_SECONDS = 7;

/** AI 가 다음 틀린 부위를 찾기까지 걸리는 시간(ms). */
export function aiFindDelayMs(level: number, rng: Rng): number {
  const clampedLevel = Math.max(1, Math.min(100, level));
  const base = AI_BASE_SECONDS - clampedLevel * AI_LEVEL_FACTOR;
  const jitter = 1 + (rng.float() * 2 - 1) * AI_JITTER;
  const seconds = Math.max(AI_MIN_SECONDS, Math.min(AI_MAX_SECONDS, base * jitter));
  return Math.round(seconds * 1000);
}
```

- [ ] **Step 4: 테스트 통과 확인**

Run: `npx vitest run server/src/rules/ai.test.ts`
Expected: PASS — 8 tests. 독립 검토에서 0.03 계수와 ±15% jitter 상수를 직접 고정하는 결정론 테스트를 추가했다.

- [ ] **Step 5: 커밋**

```bash
git add server/src/rules/ai.ts server/src/rules/ai.test.ts
git commit -m "$(cat <<'EOF'
feat(server): AI 탐색시간 공식

스펙 §3.6 의 clamp((7 − level×0.03) × (1 ± 15%), 1.0, 7.0) 을 구현한다.

난수를 주입받으므로 시드 하나로 AI 의 한 판 전체가 재현된다. 밸런스
이슈를 재현 없이 논의하는 상황을 피하려는 것이다.

"고레벨일수록 평균이 빨라진다" 를 2000 회 표본으로 직접 검증한다.
공식을 옮겨 적는 것만으로는 부호 실수를 잡지 못한다.
EOF
)"
```

---

### Task 6: 콘텐츠 로더 + PuzzleAssigner

**Files:**
- Create: `server/src/content/types.ts`, `server/src/content/loader.ts`, `server/src/content/assigner.ts`
- Test: `server/src/content/loader.test.ts`, `server/src/content/assigner.test.ts`

**Interfaces:**
- Consumes: `Rng` (Task 1), Plan 1의 `content/puzzles/*.json`
- Produces:
  - `interface PuzzleRect { index: number; x: number; y: number; w: number; h: number; sourceDrawable: string }`
  - `interface Puzzle { id: string; width: number; height: number; rects: readonly PuzzleRect[] }`
  - `function loadPuzzles(dir: string): Puzzle[]`
  - `interface PuzzleAssignment { puzzle: Puzzle; targetIndices: readonly number[] }`
  - `function assignPuzzle(puzzles: readonly Puzzle[], rng: Rng): PuzzleAssignment`
  - `const TARGET_COUNT = 5`

**스펙 §3.8 — 대칭 모델:** 두 플레이어가 **같은 퍼즐과 같은 5개 노출**을 받는다. `assignPuzzle`이 한 번 호출되고 결과가 양쪽에 공유된다. 스펙이 요구한 격리 지점이 바로 이 함수다 — 나중에 캐주얼=비대칭 / 랭크=대칭으로 나누면 여기만 바뀐다.

**주의:** `loadPuzzles`는 이 계획에서 파일을 읽는 **유일한** 함수다. 디렉터리를 인자로 받으므로 테스트가 실제 `content/puzzles`를 가리킨다.

- [ ] **Step 1: 실패하는 테스트 작성**

`server/src/content/loader.test.ts`:

```typescript
import { describe, expect, it } from 'vitest';
import { resolve } from 'node:path';
import { loadPuzzles } from './loader.js';

const CONTENT = resolve(import.meta.dirname, '../../../content/puzzles');
const puzzles = loadPuzzles(CONTENT);

describe('loadPuzzles', () => {
  it('Plan 1 이 만든 퍼즐 30 세트를 읽는다', () => {
    expect(puzzles).toHaveLength(30);
  });

  it('rect 총계가 262 개다', () => {
    expect(puzzles.reduce((n, p) => n + p.rects.length, 0)).toBe(262);
  });

  it('매니페스트를 퍼즐로 착각하지 않는다', () => {
    expect(puzzles.map((p) => p.id)).not.toContain('manifest');
  });

  it('모든 퍼즐이 640x720 이다', () => {
    for (const p of puzzles) expect([p.width, p.height]).toEqual([640, 720]);
  });

  it('모든 퍼즐이 최소 5 개의 rect 를 가진다 — 5-of-N 성립 조건', () => {
    for (const p of puzzles) expect(p.rects.length).toBeGreaterThanOrEqual(5);
  });

  it('id 순으로 정렬돼 결정론적이다 — 파일시스템 순서에 의존하면 안 된다', () => {
    const ids = puzzles.map((p) => p.id);
    expect(ids).toEqual([...ids].sort());
  });

  it('없는 디렉터리에서 던진다', () => {
    expect(() => loadPuzzles(resolve(CONTENT, '../nope'))).toThrow();
  });

  it('퍼즐이 하나도 없으면 던진다 — 빈 콘텐츠로 서버가 뜨면 안 된다', () => {
    expect(() => loadPuzzles(resolve(import.meta.dirname))).toThrow(/no puzzles/i);
  });
});
```

`server/src/content/assigner.test.ts`:

```typescript
import { describe, expect, it } from 'vitest';
import { resolve } from 'node:path';
import { createRng } from '../platform/rng.js';
import { loadPuzzles } from './loader.js';
import { TARGET_COUNT, assignPuzzle } from './assigner.js';

const puzzles = loadPuzzles(resolve(import.meta.dirname, '../../../content/puzzles'));

describe('assignPuzzle — 스펙 §3.8 대칭 모델', () => {
  it('노출 개수는 5 개다', () => {
    expect(TARGET_COUNT).toBe(5);
    expect(assignPuzzle(puzzles, createRng(1)).targetIndices).toHaveLength(5);
  });

  it('같은 시드는 같은 배정을 낸다 — 양쪽 플레이어가 동일 퍼즐을 받는 근거', () => {
    const a = assignPuzzle(puzzles, createRng(42));
    const b = assignPuzzle(puzzles, createRng(42));
    expect(a.puzzle.id).toBe(b.puzzle.id);
    expect(a.targetIndices).toEqual(b.targetIndices);
  });

  it('선택된 인덱스가 중복되지 않는다', () => {
    for (let seed = 0; seed < 200; seed++) {
      const { targetIndices } = assignPuzzle(puzzles, createRng(seed));
      expect(new Set(targetIndices).size).toBe(TARGET_COUNT);
    }
  });

  it('선택된 인덱스가 모두 해당 퍼즐의 rect 범위 안이다', () => {
    for (let seed = 0; seed < 200; seed++) {
      const { puzzle, targetIndices } = assignPuzzle(puzzles, createRng(seed));
      for (const i of targetIndices) {
        expect(i).toBeGreaterThanOrEqual(0);
        expect(i).toBeLessThan(puzzle.rects.length);
      }
    }
  });

  it('충분히 돌리면 30 세트가 모두 등장한다 — 특정 퍼즐만 나오지 않는지', () => {
    const seen = new Set<string>();
    for (let seed = 0; seed < 3000; seed++) seen.add(assignPuzzle(puzzles, createRng(seed)).puzzle.id);
    expect(seen.size).toBe(30);
  });

  it('같은 퍼즐이라도 시드가 다르면 노출 조합이 달라진다 — 암기 완화의 근거', () => {
    const combos = new Set<string>();
    for (let seed = 0; seed < 3000; seed++) {
      const a = assignPuzzle(puzzles, createRng(seed));
      if (a.puzzle.id === 'a0002') combos.add([...a.targetIndices].sort((x, y) => x - y).join(','));
    }
    // a0002 는 rect 10 개 → C(10,5) = 252 가지. 최소 수십 가지는 나와야 한다.
    expect(combos.size).toBeGreaterThan(20);
  });

  it('rect 가 5 개 미만인 퍼즐만 주면 던진다', () => {
    const tiny = [{ id: 'x', width: 640, height: 720, rects: puzzles[0]!.rects.slice(0, 3) }];
    expect(() => assignPuzzle(tiny, createRng(1))).toThrow(/at least 5|부족/i);
  });

  it('빈 목록에서 던진다', () => {
    expect(() => assignPuzzle([], createRng(1))).toThrow();
  });
});
```

- [ ] **Step 2: 실패 확인**

Run: `npx vitest run server/src/content/`
Expected: FAIL — 모듈 없음.

- [ ] **Step 3: 구현**

`server/src/content/types.ts`:

```typescript
/** Plan 1 의 tools/src/puzzle-parser.ts 가 만든 JSON 과 같은 모양이다. */
export interface PuzzleRect {
  index: number;
  x: number;
  y: number;
  w: number;
  h: number;
  /** 레거시 드로어블 이름. 서빙 경로가 아니다 — 패치 URL 은 서버가 따로 만든다. */
  sourceDrawable: string;
}

export interface Puzzle {
  id: string;
  width: number;
  height: number;
  rects: readonly PuzzleRect[];
}
```

`server/src/content/loader.ts`:

```typescript
import { readFileSync, readdirSync } from 'node:fs';
import { resolve } from 'node:path';

import type { Puzzle } from './types.js';

/** 5-of-N 이 성립하려면 퍼즐당 최소 이만큼의 rect 가 필요하다. */
const MIN_RECTS = 5;

/**
 * 퍼즐 디렉터리를 읽는다. 이 계획에서 파일시스템을 건드리는 유일한 함수다.
 * 배틀 엔진은 Puzzle 객체만 받고 그것이 어디서 왔는지 모른다.
 */
export function loadPuzzles(dir: string): Puzzle[] {
  const files = readdirSync(dir)
    .filter((f) => f.endsWith('.json') && f !== 'manifest.json')
    .sort(); // 파일시스템 순서에 의존하지 않도록 고정한다.

  const puzzles = files.map((file) => {
    const puzzle = JSON.parse(readFileSync(resolve(dir, file), 'utf8')) as Puzzle;
    if (puzzle.rects.length < MIN_RECTS) {
      throw new Error(`${puzzle.id}: rect ${puzzle.rects.length}개 — 최소 ${MIN_RECTS}개 필요`);
    }
    return puzzle;
  });

  if (puzzles.length === 0) throw new Error(`no puzzles found in ${dir}`);
  return puzzles;
}
```

`server/src/content/assigner.ts`:

```typescript
import type { Rng } from '../platform/rng.js';
import type { Puzzle } from './types.js';

/** 한 판에 노출되는 틀린 부위 개수 (스펙 §3.1). */
export const TARGET_COUNT = 5;

export interface PuzzleAssignment {
  puzzle: Puzzle;
  /** 이번 판에 노출할 rect 인덱스. 길이는 항상 TARGET_COUNT. */
  targetIndices: readonly number[];
}

/**
 * 한 매치의 퍼즐과 노출 조합을 정한다.
 *
 * 스펙 §3.8 은 대칭 모델을 채택했다 — 두 플레이어가 같은 퍼즐, 같은 5 개를 받는다.
 * 그래서 이 함수는 매치당 한 번만 불리고 결과가 양쪽에 공유된다.
 *
 * 스펙이 격리를 요구한 지점이 바로 여기다. 캐주얼=비대칭 / 랭크=대칭으로
 * 나누는 결정이 나오면 이 함수만 바뀐다.
 */
export function assignPuzzle(puzzles: readonly Puzzle[], rng: Rng): PuzzleAssignment {
  const puzzle = rng.pick(puzzles);

  if (puzzle.rects.length < TARGET_COUNT) {
    throw new Error(`${puzzle.id}: rect ${puzzle.rects.length}개 — at least ${TARGET_COUNT} required`);
  }

  // 부분 Fisher-Yates. 전체를 섞지 않고 앞 TARGET_COUNT 개만 확정한다.
  const pool = puzzle.rects.map((r) => r.index);
  for (let i = 0; i < TARGET_COUNT; i++) {
    const j = i + rng.int(pool.length - i);
    [pool[i], pool[j]] = [pool[j]!, pool[i]!];
  }

  return { puzzle, targetIndices: pool.slice(0, TARGET_COUNT) };
}
```

- [ ] **Step 4: 테스트 통과 확인**

Run: `npx vitest run server/src/content/`
Expected: PASS — loader 8 + assigner 8 = 16 tests.

- [ ] **Step 5: 커밋**

```bash
git add server/src/content/
git commit -m "$(cat <<'EOF'
feat(server): 콘텐츠 로더 + PuzzleAssigner

loadPuzzles 가 이 계획에서 파일시스템을 건드리는 유일한 함수다. 배틀
엔진은 Puzzle 객체만 받고 그것이 어디서 왔는지 모른다. 디렉터리를
인자로 받으므로 테스트가 실제 content/puzzles 를 읽는다.

파일 목록을 정렬한다. readdir 순서는 파일시스템마다 달라서 그대로 쓰면
같은 시드가 기계마다 다른 퍼즐을 고른다.

assignPuzzle 은 스펙 §3.8 이 격리를 요구한 지점이다. 지금은 대칭 —
매치당 한 번 불리고 결과가 양쪽에 공유된다. 캐주얼=비대칭 / 랭크=대칭
으로 나누는 결정이 나오면 이 함수만 바뀐다.

노출 선택은 부분 Fisher-Yates 다. 10개 중 5개를 뽑는 데 전체를 섞을
이유가 없고, 중복 없는 균등 표본이 구조적으로 보장된다.
EOF
)"
```

---

### Task 7: 배틀 상태 · 이벤트 타입

**Files:**
- Create: `server/src/battle/state.ts`, `server/src/battle/events.ts`
- Test: `server/src/battle/state.test.ts`

**Interfaces:**
- Consumes: `PuzzleAssignment` (Task 6), `SkillDef` (Task 4), `Ability` (Task 2)
- Produces:
  - `type PlayerSlot = 'p1' | 'p2'`
  - `type Phase = 'WAITING' | 'COUNTDOWN' | 'PLAYING' | 'ENDED'`
  - `interface PlayerState`, `interface BattleState`, `interface BattleConfig`
  - `type BattleEvent` — `READY | TAP | SKILL | LEAVE | TIMER`
  - `interface Outbound { to: PlayerSlot | 'both'; type: MessageType; payload: Record<string, unknown> }`
  - `function createBattle(params: CreateBattleParams): BattleState`
  - `function opponentOf(slot: PlayerSlot): PlayerSlot`

**설계 포인트 — `TIMER` 이벤트:** 스펙 §6.2는 "주기 틱을 쏘지 않는다"고 못박았다. 그렇다고 40초 만료나 AI 행동이 저절로 일어나지는 않는다. 리듀서는 `wakeAt`(다음에 깨워야 할 절대 시각)을 돌려주고, **런타임(Plan 3)이 그 시각에 `TIMER` 이벤트 하나를 넣는다.** 주기 틱이 아니라 필요한 순간에만 깨우는 구조이며, 리듀서는 여전히 순수하다.

- [ ] **Step 1: 실패하는 테스트 작성**

`server/src/battle/state.test.ts`:

```typescript
import { describe, expect, it } from 'vitest';
import { resolve } from 'node:path';
import { createRng } from '../platform/rng.js';
import { loadPuzzles } from '../content/loader.js';
import { assignPuzzle } from '../content/assigner.js';
import { COUNTDOWN_MS, MATCH_DURATION_MS, MISS_LOCK_MS, createBattle, opponentOf } from './state.js';

const puzzles = loadPuzzles(resolve(import.meta.dirname, '../../../content/puzzles'));

function newBattle() {
  return createBattle({
    matchId: 'm1',
    assignment: assignPuzzle(puzzles, createRng(1)),
    p1: { name: 'alice', level: 10, isAi: false },
    p2: { name: 'bot', level: 10, isAi: true },
    startedAt: 0,
  });
}

describe('상수 — 스펙 §3.1', () => {
  it('제한시간 40 초 · 카운트다운 3 초 · 오답 잠금 2 초', () => {
    expect(MATCH_DURATION_MS).toBe(40_000);
    expect(COUNTDOWN_MS).toBe(3_000);
    expect(MISS_LOCK_MS).toBe(2_000);
  });
});

describe('createBattle', () => {
  const battle = newBattle();

  it('WAITING 으로 시작한다', () => {
    expect(battle.phase).toBe('WAITING');
  });

  it('양쪽 모두 준비 전 · 0 개 발견 · 콤보 0 이다', () => {
    for (const slot of ['p1', 'p2'] as const) {
      expect(battle[slot]).toMatchObject({ ready: false, found: [], combo: 0, comboBonus: 0 });
    }
  });

  it('노출 대상 5 개를 들고 있다', () => {
    expect(battle.targetIndices).toHaveLength(5);
  });

  it('아직 아무것도 발견되지 않았다', () => {
    expect(battle.revealed).toEqual([]);
  });

  it('능력치가 레벨에서 파생된다', () => {
    expect(battle.p1.ability.attack).toBeGreaterThan(0);
    expect(battle.p1.ability.hp).toBeGreaterThan(0);
  });

  it('AI 여부를 기억한다', () => {
    expect(battle.p1.isAi).toBe(false);
    expect(battle.p2.isAi).toBe(true);
  });
});

describe('opponentOf', () => {
  it('두 슬롯을 맞바꾼다', () => {
    expect(opponentOf('p1')).toBe('p2');
    expect(opponentOf('p2')).toBe('p1');
  });
});
```

- [ ] **Step 2: 실패 확인**

Run: `npx vitest run server/src/battle/state.test.ts`
Expected: FAIL — `Cannot find module './state.js'`

- [ ] **Step 3: 구현**

`server/src/battle/state.ts`:

```typescript
import type { MessageType } from '@findit/protocol';
import { abilityForLevel, type Ability } from '../rules/levels.js';
import type { PuzzleAssignment } from '../content/assigner.js';

// 스펙 §3.1 확정 수치.
export const MATCH_DURATION_MS = 40_000;
export const COUNTDOWN_MS = 3_000;
export const MISS_LOCK_MS = 2_000;

export type PlayerSlot = 'p1' | 'p2';
export type Phase = 'WAITING' | 'COUNTDOWN' | 'PLAYING' | 'ENDED';

export function opponentOf(slot: PlayerSlot): PlayerSlot {
  return slot === 'p1' ? 'p2' : 'p1';
}

export interface PlayerState {
  name: string;
  level: number;
  isAi: boolean;
  ability: Ability;
  ready: boolean;
  /** 이 플레이어가 찾은 rect 인덱스 (발견 순서). */
  found: number[];
  combo: number;
  comboBonus: number;
  /** 오답 후 입력이 잠기는 절대 시각. 지났으면 잠금 없음. */
  lockedUntil: number;
  /** 상대 스킬로 화면이 가려지는 절대 시각. */
  blindedUntil: number;
  /** 아이템 보정 — P0 는 0. Plan 3 의 인벤토리가 채운다. */
  itemAttackBonusMs: number;
  itemDefenseReductionMs: number;
}

export interface BattleState {
  matchId: string;
  phase: Phase;
  puzzleId: string;
  width: number;
  height: number;
  /** 이번 판에 노출된 rect 인덱스. 좌표는 절대 클라로 나가지 않는다. */
  targetIndices: readonly number[];
  /** 이미 발견된 rect 인덱스 — 양쪽 통틀어. */
  revealed: number[];
  p1: PlayerState;
  p2: PlayerState;
  /** COUNTDOWN 진입 시각. PLAYING 시작은 여기에 COUNTDOWN_MS 를 더한 값. */
  countdownStartedAt: number;
  /** PLAYING 시작 시각 (권위 시계). 0 이면 아직 시작 전. */
  playStartedAt: number;
  /** 리듀서가 rect 좌표를 찾을 때 쓴다. 클라로 나가지 않는다. */
  assignment: PuzzleAssignment;
  winner: PlayerSlot | 'draw' | null;
}

export interface CreatePlayerParams {
  name: string;
  level: number;
  isAi: boolean;
}

export interface CreateBattleParams {
  matchId: string;
  assignment: PuzzleAssignment;
  p1: CreatePlayerParams;
  p2: CreatePlayerParams;
  startedAt: number;
}

function createPlayer({ name, level, isAi }: CreatePlayerParams): PlayerState {
  return {
    name,
    level,
    isAi,
    ability: abilityForLevel(level),
    ready: false,
    found: [],
    combo: 0,
    comboBonus: 0,
    lockedUntil: 0,
    blindedUntil: 0,
    itemAttackBonusMs: 0,
    itemDefenseReductionMs: 0,
  };
}

export function createBattle(params: CreateBattleParams): BattleState {
  const { assignment } = params;
  return {
    matchId: params.matchId,
    phase: 'WAITING',
    puzzleId: assignment.puzzle.id,
    width: assignment.puzzle.width,
    height: assignment.puzzle.height,
    targetIndices: assignment.targetIndices,
    revealed: [],
    p1: createPlayer(params.p1),
    p2: createPlayer(params.p2),
    countdownStartedAt: 0,
    playStartedAt: 0,
    assignment,
    winner: null,
  };
}

/** 리듀서가 런타임에 돌려주는 송신 지시. WS 를 모른다. */
export interface Outbound {
  to: PlayerSlot | 'both';
  type: MessageType;
  payload: Record<string, unknown>;
}
```

`server/src/battle/events.ts`:

```typescript
import type { PlayerSlot } from './state.js';

/**
 * 리듀서에 들어가는 이벤트.
 *
 * TIMER 는 주기 틱이 아니다. 리듀서가 돌려주는 wakeAt 시각에 런타임이
 * 한 번만 넣는다 — 40 초 만료, 카운트다운 종료, AI 행동이 이 경로로 온다.
 * 스펙 §6.2 의 "주기 틱을 쏘지 않는다" 를 지키면서도 시간이 흐르게 하는 장치다.
 */
export type BattleEvent =
  | { kind: 'READY'; slot: PlayerSlot }
  | { kind: 'TAP'; slot: PlayerSlot; x: number; y: number }
  | { kind: 'SKILL'; slot: PlayerSlot; skillId: string }
  | { kind: 'LEAVE'; slot: PlayerSlot }
  | { kind: 'TIMER' };
```

- [ ] **Step 4: 테스트 통과 확인**

Run: `npx vitest run server/src/battle/state.test.ts && npm run typecheck`
Expected: PASS — 8 tests, typecheck exit 0. 기존 합계는 createBattle 검사를 하나 더 센 오류였다.

- [ ] **Step 5: 커밋**

```bash
git add server/src/battle/state.ts server/src/battle/events.ts server/src/battle/state.test.ts
git commit -m "$(cat <<'EOF'
feat(server): 배틀 상태·이벤트 타입

스펙 §6.2 의 상태기계 WAITING → COUNTDOWN → PLAYING → ENDED 를 타입으로
고정한다.

TIMER 이벤트를 둔다. 스펙은 주기 틱을 금지했지만 40 초 만료와 AI 행동은
저절로 일어나지 않는다. 리듀서가 wakeAt 을 돌려주고 런타임이 그 시각에
TIMER 하나를 넣는 구조다 — 필요한 순간에만 깨우고, 리듀서는 순수하게
남는다.

Outbound 는 슬롯과 메시지 타입만 안다. WS 도 소켓도 모른다. 이 경계가
있어야 40 초 매치를 네트워크 없이 검증할 수 있다.
EOF
)"
```

---

### Task 8: 리듀서 — 상태 전이 · 히트/미스

**Files:**
- Create: `server/src/battle/reducer.ts`
- Test: `server/src/battle/reducer.test.ts`

**Interfaces:**
- Consumes: Task 7의 전부, `comboScoreBonus`/`comboTimeBonusMs` (Task 3)
- Produces:
  - `interface ContentUrls { base(matchId: string): string; patch(matchId: string, rectIndex: number): string }`
  - `interface ReduceContext { now: number; rng: Rng; urls: ContentUrls }`
  - `function nextWakeAt(state: BattleState): number | null`
  - `interface ReduceResult { state: BattleState; outbound: Outbound[]; wakeAt: number | null }`
  - `function reduce(state: BattleState, event: BattleEvent, ctx: ReduceContext): ReduceResult`
  - `function hitTest(assignment: PuzzleAssignment, targetIndices: readonly number[], revealed: readonly number[], x: number, y: number): number | null`

**이 태스크의 범위:** READY → COUNTDOWN → PLAYING 전이, TAP 히트/미스 판정, 콤보, 잠금. **스킬과 종료 처리는 Task 9.**

- [ ] **Step 1: 실패하는 테스트 작성**

`server/src/battle/reducer.test.ts`:

```typescript
import { describe, expect, it } from 'vitest';
import { resolve } from 'node:path';
import { createRng } from '../platform/rng.js';
import { loadPuzzles } from '../content/loader.js';
import { assignPuzzle } from '../content/assigner.js';
import { readFileSync } from 'node:fs';
import {
  COUNTDOWN_MS,
  MATCH_DURATION_MS,
  MISS_LOCK_MS,
  createBattle,
  type BattleState,
} from './state.js';
import { reduce, hitTest, nextWakeAt, type ReduceContext } from './reducer.js';

const puzzles = loadPuzzles(resolve(import.meta.dirname, '../../../content/puzzles'));

/**
 * 테스트용 URL 발급기. 리듀서는 URL 을 스스로 만들지 못하고 이 포트로만 받는다 —
 * 운영에서는 Plan 3 런타임이 서명된 일회용 URL 을 넣는다.
 */
const testUrls = {
  base: (matchId: string) => `test://${matchId}/base`,
  patch: (matchId: string, rectIndex: number) => `test://${matchId}/patch/${rectIndex}`,
};

function ctx(now: number): ReduceContext {
  return { now, rng: createRng(1), urls: testUrls };
}

function fresh(): BattleState {
  return createBattle({
    matchId: 'm1',
    assignment: assignPuzzle(puzzles, createRng(7)),
    p1: { name: 'alice', level: 10, isAi: false },
    p2: { name: 'bob', level: 10, isAi: false },
    startedAt: 0,
  });
}

/** 양쪽 READY → 카운트다운 종료까지 진행시킨 상태. */
function playing(): BattleState {
  let s = fresh();
  s = reduce(s, { kind: 'READY', slot: 'p1' }, ctx(0)).state;
  s = reduce(s, { kind: 'READY', slot: 'p2' }, ctx(0)).state;
  return reduce(s, { kind: 'TIMER' }, ctx(COUNTDOWN_MS)).state;
}

/** 아직 발견되지 않은 노출 대상의 중심 좌표. */
function centerOfUnrevealed(s: BattleState): { x: number; y: number } {
  const index = s.targetIndices.find((i) => !s.revealed.includes(i))!;
  const rect = s.assignment.puzzle.rects.find((r) => r.index === index)!;
  return { x: rect.x + Math.floor(rect.w / 2), y: rect.y + Math.floor(rect.h / 2) };
}

describe('hitTest', () => {
  const s = playing();

  it('노출 대상의 중심을 맞힌다', () => {
    const { x, y } = centerOfUnrevealed(s);
    expect(hitTest(s.assignment, s.targetIndices, s.revealed, x, y)).not.toBeNull();
  });

  it('노출되지 않은 rect 는 맞아도 히트가 아니다 — 5-of-N 의 핵심', () => {
    const hidden = s.assignment.puzzle.rects.find((r) => !s.targetIndices.includes(r.index));
    if (!hidden) return; // 모든 rect 가 노출된 퍼즐이면 이 검사는 무의미
    const x = hidden.x + Math.floor(hidden.w / 2);
    const y = hidden.y + Math.floor(hidden.h / 2);
    expect(hitTest(s.assignment, s.targetIndices, s.revealed, x, y)).toBeNull();
  });

  it('이미 발견된 rect 는 다시 히트되지 않는다', () => {
    const index = s.targetIndices[0]!;
    const rect = s.assignment.puzzle.rects.find((r) => r.index === index)!;
    const x = rect.x + 1;
    const y = rect.y + 1;
    expect(hitTest(s.assignment, s.targetIndices, [index], x, y)).toBeNull();
  });

  it('빈 곳은 null 이다', () => {
    expect(hitTest(s.assignment, s.targetIndices, s.revealed, -50, -50)).toBeNull();
  });
});

describe('READY → COUNTDOWN → PLAYING', () => {
  it('한쪽만 준비하면 WAITING 에 머문다', () => {
    const r = reduce(fresh(), { kind: 'READY', slot: 'p1' }, ctx(0));
    expect(r.state.phase).toBe('WAITING');
    expect(r.outbound).toEqual([]);
  });

  it('양쪽 준비되면 COUNTDOWN 으로 가고 3 초를 알린다', () => {
    let s = reduce(fresh(), { kind: 'READY', slot: 'p1' }, ctx(0)).state;
    const r = reduce(s, { kind: 'READY', slot: 'p2' }, ctx(0));
    expect(r.state.phase).toBe('COUNTDOWN');
    expect(r.outbound).toContainEqual({ to: 'both', type: 'COUNTDOWN', payload: { seconds: 3 } });
    expect(r.wakeAt).toBe(COUNTDOWN_MS);
  });

  it('중복 READY 는 아무 일도 하지 않는다', () => {
    let s = reduce(fresh(), { kind: 'READY', slot: 'p1' }, ctx(0)).state;
    const r = reduce(s, { kind: 'READY', slot: 'p1' }, ctx(0));
    expect(r.state.phase).toBe('WAITING');
  });

  it('카운트다운 만료 TIMER 가 PLAYING 을 시작시키고 START 를 보낸다', () => {
    let s = reduce(fresh(), { kind: 'READY', slot: 'p1' }, ctx(0)).state;
    s = reduce(s, { kind: 'READY', slot: 'p2' }, ctx(0)).state;
    const r = reduce(s, { kind: 'TIMER' }, ctx(COUNTDOWN_MS));
    expect(r.state.phase).toBe('PLAYING');
    expect(r.state.playStartedAt).toBe(COUNTDOWN_MS);
    const start = r.outbound.find((o) => o.type === 'START')!;
    expect(start.to).toBe('both');
    expect(start.payload).toMatchObject({ targetCount: 5, durationMs: 40_000 });
  });

  it('START 페이로드에 좌표가 들어가지 않는다 — 치팅 방어의 첫 방어선', () => {
    let s = reduce(fresh(), { kind: 'READY', slot: 'p1' }, ctx(0)).state;
    s = reduce(s, { kind: 'READY', slot: 'p2' }, ctx(0)).state;
    const start = reduce(s, { kind: 'TIMER' }, ctx(COUNTDOWN_MS)).outbound.find(
      (o) => o.type === 'START',
    )!;
    expect(Object.keys(start.payload).sort()).toEqual(
      ['durationMs', 'height', 'imageUrl', 'puzzleId', 'targetCount', 'width'].sort(),
    );
  });

  it('PLAYING 전 TAP 은 무시된다', () => {
    const r = reduce(fresh(), { kind: 'TAP', slot: 'p1', x: 100, y: 100 }, ctx(0));
    expect(r.outbound).toEqual([]);
  });
});

describe('TAP — 히트', () => {
  it('REVEAL 을 양쪽에 보내고 콤보를 올린다', () => {
    const s = playing();
    const { x, y } = centerOfUnrevealed(s);
    const r = reduce(s, { kind: 'TAP', slot: 'p1', x, y }, ctx(COUNTDOWN_MS + 500));

    const reveal = r.outbound.find((o) => o.type === 'REVEAL')!;
    expect(reveal.to).toBe('both');
    expect(reveal.payload).toMatchObject({ by: 'p1' });
    expect(r.state.p1.found).toHaveLength(1);
    expect(r.state.p1.combo).toBe(1);
    expect(r.state.revealed).toHaveLength(1);
  });

  it('OPPONENT_PROGRESS 로 상대 진행도를 알린다', () => {
    const s = playing();
    const { x, y } = centerOfUnrevealed(s);
    const r = reduce(s, { kind: 'TAP', slot: 'p1', x, y }, ctx(COUNTDOWN_MS + 500));
    expect(r.outbound).toContainEqual({
      to: 'p2', type: 'OPPONENT_PROGRESS', payload: { found: 1 },
    });
  });

  it('상대가 발견하면 내 콤보가 끊긴다 — 스펙 §3.2 리셋 조건', () => {
    let s = playing();
    let hit = centerOfUnrevealed(s);
    s = reduce(s, { kind: 'TAP', slot: 'p1', x: hit.x, y: hit.y }, ctx(COUNTDOWN_MS + 100)).state;
    expect(s.p1.combo).toBe(1);

    hit = centerOfUnrevealed(s);
    s = reduce(s, { kind: 'TAP', slot: 'p2', x: hit.x, y: hit.y }, ctx(COUNTDOWN_MS + 200)).state;
    expect(s.p1.combo).toBe(0);
    expect(s.p2.combo).toBe(1);
  });

  it('콤보 보너스가 스펙 §3.2 표대로 누적된다', () => {
    let s = playing();
    for (let n = 1; n <= 3; n++) {
      const { x, y } = centerOfUnrevealed(s);
      s = reduce(s, { kind: 'TAP', slot: 'p1', x, y }, ctx(COUNTDOWN_MS + n * 100)).state;
    }
    expect(s.p1.combo).toBe(3);
    expect(s.p1.comboBonus).toBe(100 + 200 + 400);
  });

  it('이미 발견된 곳을 다시 탭하면 미스로 처리된다', () => {
    let s = playing();
    const { x, y } = centerOfUnrevealed(s);
    s = reduce(s, { kind: 'TAP', slot: 'p1', x, y }, ctx(COUNTDOWN_MS + 100)).state;
    const r = reduce(s, { kind: 'TAP', slot: 'p1', x, y }, ctx(COUNTDOWN_MS + 200));
    expect(r.outbound.some((o) => o.type === 'LOCK')).toBe(true);
  });
});

describe('TAP — 미스', () => {
  it('LOCK 을 본인에게만 보내고 콤보를 끊는다', () => {
    let s = playing();
    const { x, y } = centerOfUnrevealed(s);
    s = reduce(s, { kind: 'TAP', slot: 'p1', x, y }, ctx(COUNTDOWN_MS + 100)).state;

    const r = reduce(s, { kind: 'TAP', slot: 'p1', x: -50, y: -50 }, ctx(COUNTDOWN_MS + 200));
    expect(r.outbound).toEqual([
      { to: 'p1', type: 'LOCK', payload: { durationMs: MISS_LOCK_MS } },
    ]);
    expect(r.state.p1.combo).toBe(0);
    expect(r.state.p1.comboBonus).toBe(100); // 이미 적립된 보너스는 남는다
  });

  it('잠금 중 TAP 은 무시된다 — 격자 스캔 봇 차단', () => {
    let s = playing();
    s = reduce(s, { kind: 'TAP', slot: 'p1', x: -50, y: -50 }, ctx(COUNTDOWN_MS)).state;
    const r = reduce(s, { kind: 'TAP', slot: 'p1', x: -60, y: -60 }, ctx(COUNTDOWN_MS + 500));
    expect(r.outbound).toEqual([]);
  });

  it('잠금이 풀리면 다시 탭할 수 있다', () => {
    let s = playing();
    s = reduce(s, { kind: 'TAP', slot: 'p1', x: -50, y: -50 }, ctx(COUNTDOWN_MS)).state;
    const r = reduce(
      s, { kind: 'TAP', slot: 'p1', x: -60, y: -60 }, ctx(COUNTDOWN_MS + MISS_LOCK_MS + 1),
    );
    expect(r.outbound.some((o) => o.type === 'LOCK')).toBe(true);
  });

  it('상대의 잠금은 나에게 영향이 없다', () => {
    let s = playing();
    s = reduce(s, { kind: 'TAP', slot: 'p1', x: -50, y: -50 }, ctx(COUNTDOWN_MS)).state;
    const { x, y } = centerOfUnrevealed(s);
    const r = reduce(s, { kind: 'TAP', slot: 'p2', x, y }, ctx(COUNTDOWN_MS + 100));
    expect(r.outbound.some((o) => o.type === 'REVEAL')).toBe(true);
  });
});

describe('URL 은 포트에서만 나온다 — 스펙 §6.3', () => {
  it('REVEAL 의 patchUrl 이 주입된 발급기에서 온다', () => {
    const s = playing();
    const { x, y } = centerOfUnrevealed(s);
    const spy = {
      base: () => 'BASE_SENTINEL',
      patch: (m: string, i: number) => `PATCH_SENTINEL:${m}:${i}`,
    };
    const r = reduce(
      s, { kind: 'TAP', slot: 'p1', x, y },
      { now: COUNTDOWN_MS + 100, rng: createRng(1), urls: spy },
    );
    const reveal = r.outbound.find((o) => o.type === 'REVEAL')!;
    expect(String(reveal.payload['patchUrl'])).toMatch(/^PATCH_SENTINEL:/);
  });

  it('START 의 imageUrl 도 주입된 발급기에서 온다', () => {
    let s = fresh();
    s = reduce(s, { kind: 'READY', slot: 'p1' }, ctx(0)).state;
    s = reduce(s, { kind: 'READY', slot: 'p2' }, ctx(0)).state;
    const spy = { base: () => 'BASE_SENTINEL', patch: () => 'P' };
    const r = reduce(s, { kind: 'TIMER' }, { now: COUNTDOWN_MS, rng: createRng(1), urls: spy });
    expect(r.outbound.find((o) => o.type === 'START')!.payload['imageUrl']).toBe('BASE_SENTINEL');
  });

  it('포트를 부르지 않고는 REVEAL 을 만들 수 없다', () => {
    // 행위 증명. 문자열 트릭으로 우회할 수 없다 — 포트가 호출되지 않으면 실패한다.
    const s = playing();
    const { x, y } = centerOfUnrevealed(s);
    const exploding = {
      base: () => { throw new Error('base port called'); },
      patch: () => { throw new Error('patch port called'); },
    };
    expect(() =>
      reduce(
        s, { kind: 'TAP', slot: 'p1', x, y },
        { now: COUNTDOWN_MS + 100, rng: createRng(1), urls: exploding },
      ),
    ).toThrow(/patch port called/);
  });

  it('리듀서 소스에 절대 경로 URL 리터럴이 없다 — 조립하면 반드시 예측 가능해진다', () => {
    // 위 행위 테스트가 닿지 않는 경로(앞으로 추가될 메시지 등)를 위한 트립와이어.
    // 따옴표 뒤의 /content/ 만 본다. `../content/assigner.js` 같은 import 경로는
    // 리듀서에 필수라 걸리면 안 된다.
    const src = readFileSync(resolve(import.meta.dirname, 'reducer.ts'), 'utf8');
    expect(src).not.toMatch(/['"`]\/content\//);
  });
});

describe('wakeAt 은 상태에서 파생된다', () => {
  it('PLAYING 중 무시된 이벤트도 종료 예약을 유지한다 — 40초 타이머가 사라지면 안 된다', () => {
    let s = playing();
    const deadline = s.playStartedAt + MATCH_DURATION_MS;

    // 오답으로 잠긴 뒤, 잠금 중 탭은 무시된다.
    s = reduce(s, { kind: 'TAP', slot: 'p1', x: -50, y: -50 }, ctx(COUNTDOWN_MS)).state;
    const ignored = reduce(s, { kind: 'TAP', slot: 'p1', x: -60, y: -60 }, ctx(COUNTDOWN_MS + 100));

    expect(ignored.outbound).toEqual([]);
    expect(ignored.wakeAt).toBe(deadline);
  });

  it('모르는 스킬 id 로 무시돼도 예약이 유지된다', () => {
    const s = playing();
    const r = reduce(s, { kind: 'SKILL', slot: 'p1', skillId: 'nope_9' }, ctx(COUNTDOWN_MS + 100));
    expect(r.wakeAt).toBe(s.playStartedAt + MATCH_DURATION_MS);
  });

  it('WAITING 과 ENDED 에서는 예약이 없다', () => {
    expect(nextWakeAt(fresh())).toBeNull();
    const ended = reduce(playing(), { kind: 'LEAVE', slot: 'p2' }, ctx(COUNTDOWN_MS + 1)).state;
    expect(nextWakeAt(ended)).toBeNull();
  });

  it('COUNTDOWN 에서는 카운트다운 종료 시각이다', () => {
    let s = reduce(fresh(), { kind: 'READY', slot: 'p1' }, ctx(0)).state;
    s = reduce(s, { kind: 'READY', slot: 'p2' }, ctx(0)).state;
    expect(nextWakeAt(s)).toBe(COUNTDOWN_MS);
  });
});

describe('불변성', () => {
  it('리듀서가 입력 상태를 변형하지 않는다', () => {
    const s = playing();
    const snapshot = JSON.stringify(s);
    const { x, y } = centerOfUnrevealed(s);
    reduce(s, { kind: 'TAP', slot: 'p1', x, y }, ctx(COUNTDOWN_MS + 100));
    expect(JSON.stringify(s)).toBe(snapshot);
  });
});
```

- [ ] **Step 2: 실패 확인**

Run: `npx vitest run server/src/battle/reducer.test.ts`
Expected: FAIL — `Cannot find module './reducer.js'`

- [ ] **Step 3: 구현**

`server/src/battle/reducer.ts`:

```typescript
import type { Rng } from '../platform/rng.js';
import { comboScoreBonus } from '../rules/combo.js';
import type { PuzzleAssignment } from '../content/assigner.js';
import type { BattleEvent } from './events.js';
import {
  COUNTDOWN_MS,
  MATCH_DURATION_MS,
  MISS_LOCK_MS,
  opponentOf,
  type BattleState,
  type Outbound,
  type PlayerSlot,
  type PlayerState,
} from './state.js';

/**
 * 콘텐츠 URL 발급 포트.
 *
 * 리듀서가 URL 문자열을 스스로 조립하면 반드시 예측 가능한 형태가 된다.
 * 그러면 클라가 REVEAL 하나로 규칙을 학습해 나머지 패치를 전부 선다운로드하고
 * 템플릿 매칭으로 정답 위치를 복원할 수 있다 — 좌표 엔드포인트를 건드리지 않고,
 * 미스 잠금도 발동시키지 않은 채로. 스펙 §6.3 이 금지한 바로 그 공격이다.
 *
 * 그래서 리듀서는 URL 을 만들 능력 자체를 갖지 않는다. 서명된 매치 한정 일회용
 * URL 발급은 Plan 3 런타임의 책임이다.
 */
export interface ContentUrls {
  base(matchId: string): string;
  patch(matchId: string, rectIndex: number): string;
}

export interface ReduceContext {
  /** 권위 시계의 현재 시각(ms). 클라가 보낸 타임스탬프는 절대 쓰지 않는다. */
  now: number;
  rng: Rng;
  urls: ContentUrls;
}

export interface ReduceResult {
  state: BattleState;
  outbound: Outbound[];
  /**
   * 런타임이 TIMER 를 넣어야 할 절대 시각. null 이면 예약 없음.
   *
   * 호출 결과와 무관하게 **항상 현재 상태 기준의 예약**이다. 이벤트가 무시돼도
   * 진행 중 매치라면 종료 시각이 그대로 돌아오므로, 런타임은 매 호출마다
   * 이 값으로 예약을 덮어써도 안전하다.
   */
  wakeAt: number | null;
}

/**
 * 좌표가 아직 발견되지 않은 노출 대상 안에 있으면 그 rect 인덱스를, 아니면 null.
 *
 * 노출되지 않은 rect(5-of-N 에서 빠진 것)는 맞아도 히트가 아니다. 같은 퍼즐을
 * 다시 만나도 매번 다른 정답이 되는 근거다.
 */
export function hitTest(
  assignment: PuzzleAssignment,
  targetIndices: readonly number[],
  revealed: readonly number[],
  x: number,
  y: number,
): number | null {
  for (const index of targetIndices) {
    if (revealed.includes(index)) continue;
    const rect = assignment.puzzle.rects.find((r) => r.index === index);
    if (!rect) continue;
    if (x >= rect.x && x < rect.x + rect.w && y >= rect.y && y < rect.y + rect.h) return index;
  }
  return null;
}

function clonePlayer(p: PlayerState): PlayerState {
  return { ...p, found: [...p.found] };
}

function cloneState(s: BattleState): BattleState {
  return { ...s, revealed: [...s.revealed], p1: clonePlayer(s.p1), p2: clonePlayer(s.p2) };
}

/**
 * 상태만 보고 다음에 깨울 시각을 정한다.
 *
 * 분기마다 wakeAt 을 손으로 배선하면 무시되는 이벤트가 null 을 돌려주게 되고,
 * 런타임이 그 결과로 예약을 갱신하면 40 초 종료 예약이 조용히 사라진다.
 * 파생값으로 만들면 그 실수가 구조적으로 불가능해진다.
 *
 * 잠금 해제·가림 해제는 여기 없다. 둘 다 다음 입력 때 now 와 비교해 판정하므로
 * 서버가 깨어날 이유가 없다.
 */
export function nextWakeAt(state: BattleState): number | null {
  switch (state.phase) {
    case 'COUNTDOWN':
      return state.countdownStartedAt + COUNTDOWN_MS;
    case 'PLAYING':
      return state.playStartedAt + MATCH_DURATION_MS;
    default:
      return null;
  }
}

function noChange(state: BattleState): ReduceResult {
  return { state, outbound: [], wakeAt: nextWakeAt(state) };
}

/** PLAYING 이 40 초 뒤 끝나는 절대 시각. */
function playDeadline(s: BattleState): number {
  return s.playStartedAt + MATCH_DURATION_MS;
}

function onReady(s: BattleState, slot: PlayerSlot, ctx: ReduceContext): ReduceResult {
  if (s.phase !== 'WAITING' || s[slot].ready) return noChange(s);

  const next = cloneState(s);
  next[slot] = { ...next[slot], ready: true };

  if (!(next.p1.ready && next.p2.ready)) {
    return { state: next, outbound: [], wakeAt: nextWakeAt(next) };
  }

  next.phase = 'COUNTDOWN';
  next.countdownStartedAt = ctx.now;
  return {
    state: next,
    outbound: [{ to: 'both', type: 'COUNTDOWN', payload: { seconds: COUNTDOWN_MS / 1000 } }],
    wakeAt: ctx.now + COUNTDOWN_MS,
  };
}

function startPlaying(s: BattleState, ctx: ReduceContext): ReduceResult {
  const next = cloneState(s);
  next.phase = 'PLAYING';
  next.playStartedAt = ctx.now;

  return {
    state: next,
    outbound: [
      {
        to: 'both',
        type: 'START',
        payload: {
          puzzleId: next.puzzleId,
          imageUrl: ctx.urls.base(next.matchId),
          width: next.width,
          height: next.height,
          targetCount: next.targetIndices.length,
          durationMs: MATCH_DURATION_MS,
        },
      },
    ],
    wakeAt: nextWakeAt(next),
  };
}

function onTap(
  s: BattleState,
  slot: PlayerSlot,
  x: number,
  y: number,
  ctx: ReduceContext,
): ReduceResult {
  if (s.phase !== 'PLAYING') return noChange(s);
  // 권위 시계로 범위를 검증한다. 클라가 보낸 시각은 쓰지 않는다.
  if (ctx.now < s.playStartedAt || ctx.now > playDeadline(s)) return noChange(s);
  if (ctx.now < s[slot].lockedUntil) return noChange(s);

  const hit = hitTest(s.assignment, s.targetIndices, s.revealed, x, y);
  const next = cloneState(s);
  const me = next[slot];
  const other = opponentOf(slot);

  if (hit === null) {
    next[slot] = { ...me, combo: 0, lockedUntil: ctx.now + MISS_LOCK_MS };
    return {
      state: next,
      outbound: [{ to: slot, type: 'LOCK', payload: { durationMs: MISS_LOCK_MS } }],
      wakeAt: nextWakeAt(next),
    };
  }

  const rect = next.assignment.puzzle.rects.find((r) => r.index === hit)!;
  const combo = me.combo + 1;

  next.revealed = [...next.revealed, hit];
  next[slot] = {
    ...me,
    found: [...me.found, hit],
    combo,
    comboBonus: me.comboBonus + comboScoreBonus(combo),
  };
  // 스펙 §3.2: 상대가 발견하면 내 콤보가 끊긴다.
  next[other] = { ...next[other], combo: 0 };

  return {
    state: next,
    outbound: [
      {
        to: 'both',
        type: 'REVEAL',
        payload: {
          by: slot,
          index: hit,
          x: rect.x,
          y: rect.y,
          w: rect.w,
          h: rect.h,
          // 리듀서는 URL 을 조립하지 않는다. 포트가 서명된 일회용 URL 을 준다.
          patchUrl: ctx.urls.patch(next.matchId, hit),
        },
      },
      { to: other, type: 'OPPONENT_PROGRESS', payload: { found: next[slot].found.length } },
    ],
    wakeAt: nextWakeAt(next),
  };
}

export function reduce(
  state: BattleState,
  event: BattleEvent,
  ctx: ReduceContext,
): ReduceResult {
  switch (event.kind) {
    case 'READY':
      return onReady(state, event.slot, ctx);
    case 'TAP':
      return onTap(state, event.slot, event.x, event.y, ctx);
    case 'TIMER':
      if (state.phase === 'COUNTDOWN' && ctx.now >= state.countdownStartedAt + COUNTDOWN_MS) {
        return startPlaying(state, ctx);
      }
      return noChange(state);
    // SKILL · LEAVE · 종료 처리는 Task 9 에서 붙인다.
    default:
      return noChange(state);
  }
}
```

- [ ] **Step 4: 테스트 통과 확인**

Run: `npx vitest run server/src/battle/reducer.test.ts`
Expected: PASS — 28 tests. 특히 다음 넷이 통과해야 한다: `START 페이로드에 좌표가 들어가지 않는다`, `포트를 부르지 않고는 REVEAL 을 만들 수 없다`, `PLAYING 중 무시된 이벤트도 종료 예약을 유지한다`, `리듀서가 입력 상태를 변형하지 않는다`.

- [ ] **Step 5: 커밋**

```bash
git add server/src/battle/reducer.ts server/src/battle/reducer.test.ts
git commit -m "$(cat <<'EOF'
feat(server): 배틀 리듀서 — 상태 전이 · 히트/미스

reduce(state, event, ctx) → { state, outbound, wakeAt } 로 스펙 §6.2 의
설계 결정을 코드 구조로 집행한다. 시계가 인자라서 40 초 매치가 밀리초
안에 결정론적으로 돌아간다.

히트 판정은 노출된 5 개만 대상으로 한다. 빠진 rect 는 맞아도 히트가
아니다 — 같은 퍼즐을 다시 만나도 매번 다른 정답이 되는 근거다.

시간 검증은 권위 시계로만 한다. 클라가 보낸 타임스탬프는 판정에
쓰지 않는다.

테스트가 두 가지를 못박는다: START 페이로드의 키 집합(좌표가 새어나가면
실패), 그리고 리듀서가 입력 상태를 변형하지 않는다는 것.
EOF
)"
```

---

### Task 9: 리듀서 — 스킬 · 종료 · 정산 · AI 드라이버

**Files:**
- Modify: `server/src/battle/reducer.ts`
- Create: `server/src/battle/ai-driver.ts`
- Test: `server/src/battle/skills-and-end.test.ts`, `server/src/battle/ai-driver.test.ts`

**Interfaces:**
- Consumes: Task 8의 `reduce`, `blindDurationMs`/`skillById` (Task 4), `matchScore` (Task 3), `aiFindDelayMs` (Task 5)
- Produces:
  - `reduce`가 `SKILL`·`LEAVE` 처리 및 종료 판정을 포함하도록 확장
  - `function planAiAction(state: BattleState, slot: PlayerSlot, ctx: ReduceContext): { at: number; event: BattleEvent } | null`

**종료 조건 (스펙 §3.1):** 5개 선취 / 40초 만료 시 더 많이 찾은 쪽 / 이탈. 동점이면 무승부이고 각자 본인 코인만 가진다.

**이 계획이 메우는 설계 구멍 — 네 번째 종료 조건.** 스펙의 세 조건만으로는 빈틈이 있다. 노출 대상이 5개인데 두 사람이 4:1로 나눠 가지면 **아무도 5개에 도달하지 못한 채 찾을 것이 하나도 남지 않는다.** 그대로 두면 두 플레이어가 남은 수십 초를 빈 화면 앞에서 대기한다.

**규칙을 하나 추가한다: 노출 대상이 전부 발견되면 즉시 종료하고 개수로 승부를 가린다.** 만료 시점의 판정 로직(`resolveByCount`)을 그대로 쓰므로 새 개념이 아니라 같은 판정을 앞당기는 것뿐이다. 이 결정은 스펙 §3.1에도 반영해야 한다.

**정산 (스펙 §3.1):** 부위 1개당 경험치 100 + 코인 1. **승자가 상대 코인을 독식한다.** 무승부면 각자 본인 것만.

- [ ] **Step 1: 실패하는 테스트 작성**

`server/src/battle/skills-and-end.test.ts`:

```typescript
import { describe, expect, it } from 'vitest';
import { resolve } from 'node:path';
import { createRng } from '../platform/rng.js';
import { loadPuzzles } from '../content/loader.js';
import { assignPuzzle } from '../content/assigner.js';
import { COUNTDOWN_MS, MATCH_DURATION_MS, createBattle, type BattleState } from './state.js';
import { reduce, type ReduceContext } from './reducer.js';

const puzzles = loadPuzzles(resolve(import.meta.dirname, '../../../content/puzzles'));
const testUrls = {
  base: (m: string) => `test://${m}/base`,
  patch: (m: string, i: number) => `test://${m}/patch/${i}`,
};
const ctx = (now: number): ReduceContext => ({ now, rng: createRng(1), urls: testUrls });
const T0 = COUNTDOWN_MS;

function playing(level = 10): BattleState {
  let s = createBattle({
    matchId: 'm1',
    assignment: assignPuzzle(puzzles, createRng(7)),
    p1: { name: 'alice', level, isAi: false },
    p2: { name: 'bob', level, isAi: false },
    startedAt: 0,
  });
  s = reduce(s, { kind: 'READY', slot: 'p1' }, ctx(0)).state;
  s = reduce(s, { kind: 'READY', slot: 'p2' }, ctx(0)).state;
  return reduce(s, { kind: 'TIMER' }, ctx(T0)).state;
}

function tapNext(s: BattleState, slot: 'p1' | 'p2', now: number): BattleState {
  const index = s.targetIndices.find((i) => !s.revealed.includes(i))!;
  const rect = s.assignment.puzzle.rects.find((r) => r.index === index)!;
  return reduce(
    s,
    { kind: 'TAP', slot, x: rect.x + Math.floor(rect.w / 2), y: rect.y + Math.floor(rect.h / 2) },
    ctx(now),
  ).state;
}

describe('SKILL', () => {
  it('BLIND 를 상대에게만 보낸다', () => {
    const r = reduce(playing(), { kind: 'SKILL', slot: 'p1', skillId: 'handprint_1' }, ctx(T0 + 100));
    const blind = r.outbound.find((o) => o.type === 'BLIND')!;
    expect(blind.to).toBe('p2');
    expect(blind.payload).toMatchObject({ effectId: 'efct_skill_01' });
  });

  it('가림시간이 스펙 §3.3 공식을 따른다', () => {
    // 레벨 10: attack = defense = 0.59. handprint_1 = 1000ms.
    // 1000 + 590 − 590 = 1000
    const r = reduce(playing(10), { kind: 'SKILL', slot: 'p1', skillId: 'handprint_1' }, ctx(T0 + 100));
    expect(r.outbound.find((o) => o.type === 'BLIND')!.payload['durationMs']).toBe(1000);
  });

  it('상대 blindedUntil 을 갱신한다', () => {
    const r = reduce(playing(), { kind: 'SKILL', slot: 'p1', skillId: 'ghost_5' }, ctx(T0 + 100));
    expect(r.state.p2.blindedUntil).toBeGreaterThan(T0 + 100);
  });

  it('모르는 스킬 id 는 무시된다', () => {
    const r = reduce(playing(), { kind: 'SKILL', slot: 'p1', skillId: 'nope_9' }, ctx(T0 + 100));
    expect(r.outbound).toEqual([]);
  });

  it('레벨이 낮아 못 배운 스킬은 거부된다 — 클라가 임의 id 를 보내도 막힌다', () => {
    const r = reduce(playing(1), { kind: 'SKILL', slot: 'p1', skillId: 'ghost_5' }, ctx(T0 + 100));
    expect(r.outbound).toEqual([]);
  });

  it('PLAYING 이 아니면 무시된다', () => {
    const s = createBattle({
      matchId: 'm', assignment: assignPuzzle(puzzles, createRng(1)),
      p1: { name: 'a', level: 10, isAi: false }, p2: { name: 'b', level: 10, isAi: false },
      startedAt: 0,
    });
    expect(reduce(s, { kind: 'SKILL', slot: 'p1', skillId: 'handprint_1' }, ctx(0)).outbound)
      .toEqual([]);
  });
});

describe('종료 — 5 개 선취', () => {
  it('5 개를 먼저 찾으면 즉시 ENDED 이고 그 쪽이 승자다', () => {
    let s = playing();
    for (let i = 0; i < 5; i++) s = tapNext(s, 'p1', T0 + 100 * (i + 1));
    expect(s.phase).toBe('ENDED');
    expect(s.winner).toBe('p1');
  });

  it('END 를 양쪽에 보내되 각자 관점으로 보낸다', () => {
    let s = playing();
    for (let i = 0; i < 4; i++) s = tapNext(s, 'p1', T0 + 100 * (i + 1));
    const index = s.targetIndices.find((i) => !s.revealed.includes(i))!;
    const rect = s.assignment.puzzle.rects.find((r) => r.index === index)!;
    const r = reduce(
      s, { kind: 'TAP', slot: 'p1', x: rect.x + 1, y: rect.y + 1 }, ctx(T0 + 600),
    );

    const ends = r.outbound.filter((o) => o.type === 'END');
    expect(ends).toHaveLength(2);
    const p1End = ends.find((o) => o.to === 'p1')!;
    const p2End = ends.find((o) => o.to === 'p2')!;
    expect(p1End.payload).toMatchObject({ result: 'win', myFound: 5, opponentFound: 0 });
    expect(p2End.payload).toMatchObject({ result: 'lose', myFound: 0, opponentFound: 5 });
  });

  it('승자가 상대 코인을 독식한다 — 스펙 §3.1', () => {
    let s = playing();
    for (let i = 0; i < 5; i++) s = tapNext(s, 'p1', T0 + 100 * (i + 1));
    const r = reduce(s, { kind: 'TAP', slot: 'p1', x: -1, y: -1 }, ctx(T0 + 700));
    // 이미 ENDED 라 무시되지만, 종료 시점의 END 를 직접 만들어 확인한다.
    expect(s.winner).toBe('p1');
    expect(r.outbound).toEqual([]);
  });

  it('4:1 로 나뉘어 아무도 5 개에 못 가도, 대상이 소진되면 즉시 끝난다', () => {
    let s = playing();
    s = tapNext(s, 'p2', T0 + 50);
    for (let i = 0; i < 4; i++) s = tapNext(s, 'p1', T0 + 100 * (i + 1));

    // 다섯 개가 모두 발견됐고 아무도 5 개를 갖지 못했다.
    expect(s.revealed).toHaveLength(5);
    expect(s.p1.found).toHaveLength(4);
    expect(s.p2.found).toHaveLength(1);

    // 그런데도 40 초를 기다리게 하면 안 된다.
    expect(s.phase).toBe('ENDED');
    expect(s.winner).toBe('p1');
  });

  it('대상 소진으로 끝나도 코인 독식 규칙은 같다', () => {
    let s = playing();
    s = tapNext(s, 'p2', T0 + 50);
    for (let i = 0; i < 4; i++) s = tapNext(s, 'p1', T0 + 100 * (i + 1));
    const r = reduce(s, { kind: 'LEAVE', slot: 'p2' }, ctx(T0 + 999)); // ENDED 라 무시
    expect(r.state.winner).toBe('p1');
  });

  it('종료 후 TAP 은 무시된다', () => {
    let s = playing();
    for (let i = 0; i < 5; i++) s = tapNext(s, 'p1', T0 + 100 * (i + 1));
    const r = reduce(s, { kind: 'TAP', slot: 'p2', x: 1, y: 1 }, ctx(T0 + 1000));
    expect(r.outbound).toEqual([]);
  });
});

describe('종료 — 40 초 만료', () => {
  it('더 많이 찾은 쪽이 이긴다', () => {
    let s = playing();
    s = tapNext(s, 'p1', T0 + 100);
    s = tapNext(s, 'p1', T0 + 200);
    s = tapNext(s, 'p2', T0 + 300);
    const r = reduce(s, { kind: 'TIMER' }, ctx(T0 + MATCH_DURATION_MS));
    expect(r.state.phase).toBe('ENDED');
    expect(r.state.winner).toBe('p1');
  });

  it('동점이면 무승부이고 각자 본인 코인만 가진다', () => {
    let s = playing();
    s = tapNext(s, 'p1', T0 + 100);
    s = tapNext(s, 'p2', T0 + 200);
    const r = reduce(s, { kind: 'TIMER' }, ctx(T0 + MATCH_DURATION_MS));
    expect(r.state.winner).toBe('draw');
    for (const o of r.outbound.filter((x) => x.type === 'END')) {
      expect(o.payload).toMatchObject({ result: 'draw', coinDelta: 1 });
    }
  });

  it('만료 전 TIMER 는 종료시키지 않는다', () => {
    const r = reduce(playing(), { kind: 'TIMER' }, ctx(T0 + 1000));
    expect(r.state.phase).toBe('PLAYING');
  });

  it('경험치는 발견 1 개당 100 이다', () => {
    let s = playing();
    s = tapNext(s, 'p1', T0 + 100);
    s = tapNext(s, 'p1', T0 + 200);
    const r = reduce(s, { kind: 'TIMER' }, ctx(T0 + MATCH_DURATION_MS));
    expect(r.outbound.find((o) => o.type === 'END' && o.to === 'p1')!.payload['expDelta']).toBe(200);
  });
});

describe('종료 — 이탈', () => {
  it('남은 쪽이 승자다', () => {
    const r = reduce(playing(), { kind: 'LEAVE', slot: 'p2' }, ctx(T0 + 500));
    expect(r.state.phase).toBe('ENDED');
    expect(r.state.winner).toBe('p1');
  });

  it('종료 후에는 더 이상 깨울 필요가 없다', () => {
    const r = reduce(playing(), { kind: 'LEAVE', slot: 'p2' }, ctx(T0 + 500));
    expect(r.wakeAt).toBeNull();
  });
});
```

`server/src/battle/ai-driver.test.ts`:

```typescript
import { describe, expect, it } from 'vitest';
import { resolve } from 'node:path';
import { createRng } from '../platform/rng.js';
import { loadPuzzles } from '../content/loader.js';
import { assignPuzzle } from '../content/assigner.js';
import { COUNTDOWN_MS, MATCH_DURATION_MS, createBattle, type BattleState } from './state.js';
import { reduce, type ReduceContext } from './reducer.js';
import { planAiAction } from './ai-driver.js';

const puzzles = loadPuzzles(resolve(import.meta.dirname, '../../../content/puzzles'));
const testUrls = {
  base: (m: string) => `test://${m}/base`,
  patch: (m: string, i: number) => `test://${m}/patch/${i}`,
};
const ctx = (now: number): ReduceContext => ({ now, rng: createRng(1), urls: testUrls });
const T0 = COUNTDOWN_MS;

function playingVsAi(aiLevel = 50): BattleState {
  let s = createBattle({
    matchId: 'm1',
    assignment: assignPuzzle(puzzles, createRng(7)),
    p1: { name: 'human', level: 10, isAi: false },
    p2: { name: 'bot', level: aiLevel, isAi: true },
    startedAt: 0,
  });
  s = reduce(s, { kind: 'READY', slot: 'p1' }, ctx(0)).state;
  s = reduce(s, { kind: 'READY', slot: 'p2' }, ctx(0)).state;
  return reduce(s, { kind: 'TIMER' }, ctx(T0)).state;
}

describe('planAiAction', () => {
  it('AI 슬롯에 대해 미래의 TAP 을 계획한다', () => {
    const s = playingVsAi();
    const plan = planAiAction(s, 'p2', ctx(T0))!;
    expect(plan.at).toBeGreaterThan(T0);
    expect(plan.event.kind).toBe('TAP');
  });

  it('계획된 탭이 아직 발견되지 않은 대상을 맞힌다 — AI 는 틀리지 않는다', () => {
    const s = playingVsAi();
    const plan = planAiAction(s, 'p2', ctx(T0))!;
    const r = reduce(s, plan.event, ctx(plan.at));
    expect(r.outbound.some((o) => o.type === 'REVEAL')).toBe(true);
  });

  it('사람 슬롯에는 계획을 세우지 않는다', () => {
    expect(planAiAction(playingVsAi(), 'p1', ctx(T0))).toBeNull();
  });

  it('PLAYING 이 아니면 계획하지 않는다', () => {
    const s = createBattle({
      matchId: 'm', assignment: assignPuzzle(puzzles, createRng(1)),
      p1: { name: 'a', level: 10, isAi: false }, p2: { name: 'b', level: 10, isAi: true },
      startedAt: 0,
    });
    expect(planAiAction(s, 'p2', ctx(0))).toBeNull();
  });

  it('남은 대상이 없으면 계획하지 않는다', () => {
    let s = playingVsAi();
    for (const index of [...s.targetIndices]) {
      const rect = s.assignment.puzzle.rects.find((r) => r.index === index)!;
      s = reduce(s, { kind: 'TAP', slot: 'p1', x: rect.x + 1, y: rect.y + 1 }, ctx(T0 + 10)).state;
      if (s.phase === 'ENDED') break;
    }
    expect(planAiAction(s, 'p2', ctx(T0 + 100))).toBeNull();
  });

  it('매치 만료 이후로는 계획하지 않는다', () => {
    const s = playingVsAi();
    expect(planAiAction(s, 'p2', ctx(T0 + MATCH_DURATION_MS - 1))).toBeNull();
  });

  it('같은 시드는 같은 계획을 낸다', () => {
    const s = playingVsAi();
    expect(planAiAction(s, 'p2', ctx(T0))!.at).toBe(planAiAction(s, 'p2', ctx(T0))!.at);
  });

  it('고레벨 AI 가 더 빨리 찾는다', () => {
    const slow = planAiAction(playingVsAi(1), 'p2', ctx(T0))!.at;
    const fast = planAiAction(playingVsAi(100), 'p2', ctx(T0))!.at;
    expect(fast).toBeLessThan(slow);
  });
});

describe('AI 와의 풀 매치', () => {
  it('AI 혼자 두면 5 개를 찾고 이긴다 — 엔진과 드라이버가 실제로 맞물리는지', () => {
    let s = playingVsAi(100);
    let now = T0;
    for (let guard = 0; guard < 50 && s.phase === 'PLAYING'; guard++) {
      const plan = planAiAction(s, 'p2', ctx(now));
      if (!plan) break;
      now = plan.at;
      s = reduce(s, plan.event, ctx(now)).state;
    }
    expect(s.phase).toBe('ENDED');
    expect(s.winner).toBe('p2');
    expect(s.p2.found).toHaveLength(5);
  });
});
```

- [ ] **Step 2: 실패 확인**

Run: `npx vitest run server/src/battle/skills-and-end.test.ts server/src/battle/ai-driver.test.ts`
Expected: FAIL — `SKILL` 무시됨(종료 미구현), `ai-driver.js` 없음.

- [ ] **Step 3: 리듀서 확장**

`server/src/battle/reducer.ts`에 다음을 추가한다. `reduce`의 `switch`에 `SKILL`·`LEAVE` 분기를 붙이고, `onTap`과 `TIMER` 처리에서 종료를 검사하게 바꾼다.

```typescript
// ── 파일 상단 import 에 추가 ──
import { matchScore } from '../rules/score.js';
import { blindDurationMs, skillById } from '../rules/skills.js';

// ── 정산 상수 (스펙 §3.1) ──
const EXP_PER_FIND = 100;
const COIN_PER_FIND = 1;

/** 종료 시 양쪽에 보낼 END 를 만든다. 각자 자기 관점이다. */
function endOutbound(s: BattleState): Outbound[] {
  return (['p1', 'p2'] as const).map((slot) => {
    const me = s[slot];
    const other = s[opponentOf(slot)];
    const isWinner = s.winner === slot;
    const isDraw = s.winner === 'draw';

    // 스펙 §3.1: 승자가 상대 코인을 독식한다. 무승부면 각자 본인 것만.
    const coinDelta = isDraw
      ? me.found.length * COIN_PER_FIND
      : isWinner
        ? (me.found.length + other.found.length) * COIN_PER_FIND
        : 0;

    return {
      to: slot,
      type: 'END' as const,
      payload: {
        result: isDraw ? 'draw' : isWinner ? 'win' : 'lose',
        myFound: me.found.length,
        opponentFound: other.found.length,
        score: matchScore({ findCount: me.found.length, comboBonus: me.comboBonus, isWinner }),
        coinDelta,
        expDelta: me.found.length * EXP_PER_FIND,
      },
    };
  });
}

/** 상태를 ENDED 로 확정하고 END 를 만든다. */
function finish(s: BattleState, winner: PlayerSlot | 'draw'): ReduceResult {
  const next = cloneState(s);
  next.phase = 'ENDED';
  next.winner = winner;
  return { state: next, outbound: endOutbound(next), wakeAt: nextWakeAt(next) };
}

function onSkill(s: BattleState, slot: PlayerSlot, skillId: string, ctx: ReduceContext): ReduceResult {
  if (s.phase !== 'PLAYING') return noChange(s);

  const skill = skillById(skillId);
  if (!skill) return noChange(s);
  // 클라가 임의 id 를 보내도 레벨 요건을 서버가 막는다.
  if (s[slot].level < skill.unlockLevel) return noChange(s);

  const attacker = s[slot];
  const other = opponentOf(slot);
  const defender = s[other];

  const durationMs = blindDurationMs({
    skillDurationMs: skill.durationMs,
    attackerAttack: attacker.ability.attack,
    attackerItemBonusMs: attacker.itemAttackBonusMs,
    defenderDefense: defender.ability.defense,
    defenderItemReductionMs: defender.itemDefenseReductionMs,
  });

  const next = cloneState(s);
  next[other] = { ...next[other], blindedUntil: ctx.now + durationMs };

  return {
    state: next,
    outbound: [
      { to: other, type: 'BLIND', payload: { durationMs, effectId: skill.effectAsset } },
    ],
    wakeAt: nextWakeAt(next),
  };
}

/** 40 초 만료 시 승패를 가린다. 스펙 §3.1: 더 많이 찾은 쪽, 동점이면 무승부. */
function resolveByCount(s: BattleState): PlayerSlot | 'draw' {
  if (s.p1.found.length > s.p2.found.length) return 'p1';
  if (s.p2.found.length > s.p1.found.length) return 'p2';
  return 'draw';
}
```

`onTap`의 히트 분기 끝에서 5개 선취를 검사하도록 바꾼다 — `return` 직전에:

```typescript
  // 5 개 선취 시 즉시 종료 (스펙 §3.1).
  if (next[slot].found.length >= next.targetIndices.length) {
    const ended = finish(next, slot);
    return { ...ended, outbound: [...revealOutbound, ...ended.outbound] };
  }

  // 네 번째 종료 조건 (이 계획이 추가): 대상이 전부 발견되면 아무도 5 개에
  // 도달하지 못했더라도 즉시 끝낸다. 4:1 로 나뉘면 찾을 것이 남지 않은 채
  // 남은 수십 초를 대기하게 되기 때문이다. 판정은 만료 때와 동일하다.
  if (next.revealed.length >= next.targetIndices.length) {
    const ended = finish(next, resolveByCount(next));
    return { ...ended, outbound: [...revealOutbound, ...ended.outbound] };
  }
```

여기서 `revealOutbound`는 기존에 만들던 `REVEAL` + `OPPONENT_PROGRESS` 배열을 지역 변수로 뽑아낸 것이다.

`reduce`의 `switch`를 다음으로 바꾼다:

```typescript
export function reduce(
  state: BattleState,
  event: BattleEvent,
  ctx: ReduceContext,
): ReduceResult {
  if (state.phase === 'ENDED') return noChange(state);

  switch (event.kind) {
    case 'READY':
      return onReady(state, event.slot, ctx);
    case 'TAP':
      return onTap(state, event.slot, event.x, event.y, ctx);
    case 'SKILL':
      return onSkill(state, event.slot, event.skillId, ctx);
    case 'LEAVE':
      // 이탈하면 남은 쪽이 승자다 (스펙 §3.1).
      return finish(state, opponentOf(event.slot));
    case 'TIMER':
      if (state.phase === 'COUNTDOWN' && ctx.now >= state.countdownStartedAt + COUNTDOWN_MS) {
        return startPlaying(state, ctx);
      }
      if (state.phase === 'PLAYING' && ctx.now >= playDeadline(state)) {
        return finish(state, resolveByCount(state));
      }
      return noChange(state);
  }
}
```

- [ ] **Step 4: AI 드라이버 구현**

`server/src/battle/ai-driver.ts`:

```typescript
import { aiFindDelayMs } from '../rules/ai.js';
import type { BattleEvent } from './events.js';
import { MATCH_DURATION_MS, type BattleState, type PlayerSlot } from './state.js';
import type { ReduceContext } from './reducer.js';

export interface AiPlan {
  /** 이 이벤트를 넣어야 할 절대 시각. */
  at: number;
  event: BattleEvent;
}

/**
 * AI 의 다음 행동을 계획한다. 리듀서 밖에 있는 이유는 AI 가 "입력을 보내는
 * 플레이어" 이기 때문이다 — 리듀서 입장에서 사람과 구분되지 않아야 판정
 * 로직이 한 갈래로 유지된다.
 *
 * 스펙 §3.6 대로 AI 는 틀리지 않고, 탐색 시간만 레벨에 따라 달라진다.
 * 런타임(Plan 3)이 at 시각에 event 를 리듀서에 넣는다.
 */
export function planAiAction(
  state: BattleState,
  slot: PlayerSlot,
  ctx: ReduceContext,
): AiPlan | null {
  const player = state[slot];
  if (!player.isAi || state.phase !== 'PLAYING') return null;

  const remaining = state.targetIndices.filter((i) => !state.revealed.includes(i));
  if (remaining.length === 0) return null;

  const at = ctx.now + aiFindDelayMs(player.level, ctx.rng);
  if (at >= state.playStartedAt + MATCH_DURATION_MS) return null;

  // AI 는 남은 대상 중 하나의 중심을 정확히 누른다.
  const index = ctx.rng.pick(remaining);
  const rect = state.assignment.puzzle.rects.find((r) => r.index === index)!;

  return {
    at,
    event: {
      kind: 'TAP',
      slot,
      x: rect.x + Math.floor(rect.w / 2),
      y: rect.y + Math.floor(rect.h / 2),
    },
  };
}
```

- [ ] **Step 5: 테스트 통과 확인**

Run:
```bash
npx vitest run server/
npm test
npm run typecheck
```
Expected: server 테스트 전체 PASS. 특히 `AI 혼자 두면 5 개를 찾고 이긴다`가 통과해야 한다 — 엔진과 드라이버가 실제로 맞물린다는 유일한 증거다.

- [ ] **Step 6: 커밋**

```bash
git add server/src/battle/
git commit -m "$(cat <<'EOF'
feat(server): 스킬 · 종료 · 정산 + AI 드라이버

리듀서에 SKILL 과 LEAVE 를 붙이고 종료 판정 세 갈래를 넣는다 — 5 개
선취, 40 초 만료 시 다수 발견, 이탈.

스킬은 레벨 요건을 서버가 검사한다. 클라가 임의 id 를 보내도 못 배운
스킬은 발동하지 않는다.

정산은 스펙 §3.1 대로 승자가 상대 코인을 독식하고, 무승부면 각자 본인
것만 가진다. END 는 양쪽에 각자 관점으로 나간다 — 한쪽의 win 이 다른
쪽에는 lose 다.

AI 드라이버는 리듀서 밖에 둔다. AI 는 "입력을 보내는 플레이어" 이고,
리듀서 입장에서 사람과 구분되지 않아야 판정 로직이 한 갈래로 유지된다.
EOF
)"
```

---

## 주의해서 볼 곳 — 저자가 가장 확신이 낮은 지점

이 계획서를 쓴 사람이 스스로 틀렸을 가능성이 높다고 보는 곳이다. 해당 Task 를 할 때
평소보다 의심하라.

**1. Task 9 의 리듀서 확장 (가장 위험)**

이 계획서에서 유일하게 "기존 파일을 이렇게 바꾼다" 로 서술된 부분이다. 나머지 Task 는
파일을 새로 만들지만 여기는 Task 8 이 만든 `reducer.ts` 를 수정한다. 특히:

- `onTap` 의 히트 분기에서 `REVEAL` + `OPPONENT_PROGRESS` 배열을 `revealOutbound` 라는
  지역 변수로 뽑아내야 하는데, Task 8 의 코드에는 그 변수가 없다 (인라인으로 `return` 한다).
  추출을 빠뜨리면 종료 시 `REVEAL` 이 유실된다.
- `reduce` 의 `switch` 를 통째로 교체하면서 맨 앞의 `if (state.phase === 'ENDED') return noChange(state);`
  를 빠뜨리기 쉽다. 이게 없으면 종료 후 입력이 계속 처리된다.

**2. 유령 계열 지속시간 `[3000, 3250, 3500, 3750, 4000]`**

스펙에 없는 값이다. 스펙은 끝점 3.0·4.0 초와 "단계당 +0.2s~0.5s" 만 준다. 균등 +0.25 로
정한 것은 이 계획서의 판단이며, 밸런스상 다른 분배가 나을 수 있다.

**3. 시력 계급 경계 — 11 계급 전부 도달 가능**

스펙 §3.7 은 계급 이름 11 개만 정하고 경계는 비워뒀다. 지렁이~고양이는 10 레벨 단위로
두고, 매/독수리/타조는 81~85/86~90/91~100 으로 둔다. 이전의 10레벨 단위 공식은 타조를
도달 불가능하게 만들었으므로 사용하지 않는다.

**4. 네 번째 종료 조건 (대상 소진 시 즉시 종료)**

PDF 기획서에 없던 게임 규칙을 추가한 것이다. 근거는 노출 5 개가 4:1 로 나뉘면 아무도
5 개에 도달하지 못한 채 찾을 것이 남지 않아 빈 화면 대기가 발생한다는 점이다. 스펙 §3.1 에
반영해 뒀지만, 기획 의도와 다를 수 있다.

**5. `blindDurationMs` 의 능력치 단위 해석**

스펙 §3.3 의 공식은 "+ 공격력 − 방어력" 이라고만 쓰여 있고 단위를 말하지 않는다. 능력치
표의 값이 0.5~1.57 범위인 것을 보고 **초 단위 계수**로 해석했다 (그래서 `× 1000`). 다른
해석도 가능하다 — 예를 들어 배율이라면 공식 자체가 달라진다.

**6. `content/puzzles` 의 `sourceDrawable` 필드**

이 필드는 레거시 드로어블 이름(`a0001_01`)이지 서빙 경로가 아니다. `REVEAL.patchUrl` 을
여기서 만들면 404 가 난다. Plan 1 에서 이 혼동 때문에 필드명을 `patch` 에서 바꾼 이력이 있다.

---

## 완료 기준

1. `server` 워크스페이스가 루트 npm workspaces·tsconfig references·vitest include 에 편입됨
2. 스펙 §3의 모든 수치표(레벨·능력치·콤보·점수·스킬 29종·AI 공식)가 코드와 테이블 테스트로 고정됨
3. `reduce()`가 순수 함수이고 입력 상태를 변형하지 않음 — 테스트로 강제
4. 40초 매치 한 판이 실시간을 기다리지 않고 결정론적으로 실행됨
5. AI 혼자 두면 5개를 찾고 이기는 것을 통합 테스트가 증명
6. 대상이 4:1로 나뉘어도 매치가 즉시 끝남 — 빈 화면 대기가 없음
7. `START` 페이로드에 좌표가 없음 — 키 집합 단언으로 강제
8. 리듀서가 URL 을 조립하지 않음 — 포트를 부르지 않으면 `REVEAL` 을 만들 수 없음을 행위 테스트로 강제하고, 소스의 절대 경로 리터럴을 트립와이어로 추가 차단
9. `wakeAt` 이 상태 파생값이라 무시된 이벤트도 종료 예약을 유지함
10. `npm test` 그린, `npm run typecheck` 통과
11. 서버 코드 어디에도 `Date.now()`·`Math.random()` 직접 호출이 없음

## 이 계획이 남기는 것 (Plan 3의 입력)

- `reduce(state, event, ctx) → { state, outbound, wakeAt }` — 런타임이 감쌀 인터페이스
- `planAiAction(state, slot, ctx) → { at, event } | null` — 런타임이 스케줄할 AI 행동
- `Outbound`는 슬롯과 메시지 타입만 안다. WS 매핑은 Plan 3의 몫
- **`ContentUrls` 포트 구현은 Plan 3의 책임.** 리듀서는 URL 을 조립할 능력 자체가 없다 — `ctx.urls`로만 받는다. 런타임은 **매치별로 서명된 일회용 불투명 URL**을 넣어야 하며, 각 URL 은 히트한 rect 하나에만 유효해야 한다 (스펙 §6.3). 예측 가능한 형태를 넣으면 클라가 REVEAL 하나로 규칙을 학습해 나머지를 전부 선다운로드할 수 있다
- **`wakeAt`은 매 호출마다 현재 상태 기준의 예약**이다. 런타임은 결과가 나올 때마다 이 값으로 예약을 덮어써도 안전하다 — 무시된 이벤트도 진행 중이면 종료 시각을 돌려준다
- `itemAttackBonusMs`·`itemDefenseReductionMs`는 0으로 남는다. Plan 3의 인벤토리가 채운다

## 다음 계획

- **Plan 3 — 서버 런타임**: WS 게이트웨이, 매칭 큐(5초 타임아웃 → AI 전환, 난입 처리), PostgreSQL/Redis, 인증·세션, 정산 영속화, 불투명 URL 발급, Docker Compose, 2-클라이언트 통합 테스트
- **Plan 4 — Flutter 클라**: MD3 메타 화면 + Flame 배틀 씬(레거시 룩)
