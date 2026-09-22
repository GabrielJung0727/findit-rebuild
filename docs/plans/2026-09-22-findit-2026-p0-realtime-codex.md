# FindIt 2026 P0 — 실시간 계층 구현 계획 (Plan 4)

> **실행하는 에이전트에게:** Task 1 부터 순서대로 실행한다. 스텝은 체크박스(`- [ ]`)이니
> 끝낼 때마다 표시한다. 특정 도구나 플러그인을 요구하지 않는다 — Node 24, npm, git,
> Docker 면 된다.
>
> **각 Task 를 끝낼 때마다 그 Task 의 diff 를 독립적으로 검토하는 단계를 넣어라.**
> 이유는 아래 "실행 방식" 을 읽을 것. Plan 3 에서 독립 검토가 결함 13 건을 잡았고
> 13 건 모두 유효했다.
>
> Claude Code 용 원본: [`docs/superpowers/plans/2026-09-22-findit-2026-p0-realtime.md`](../superpowers/plans/2026-09-22-findit-2026-p0-realtime.md) — 내용은 같고 실행 지침만 다르다. 한쪽을 고치면 다른 쪽도 고칠 것.

**Goal:** Plan 2 의 순수 리듀서와 Plan 3 의 런타임을 WebSocket 으로 연결해, 두 사람이(또는 사람과 AI가) 매칭부터 정산까지 한 판을 끝까지 치를 수 있게 한다.

**Architecture:** 리듀서는 그대로 둔다. 그 바깥에 **매치 러너**를 두어 시간(타이머)과 AI 행동을 이벤트로 주입하고, **게이트웨이**가 WS 프레임을 이벤트로 번역해 넘긴다. 매칭 큐와 매치 인덱스는 Redis, 정산은 PostgreSQL 이다. 러너는 WS 를 모르고, 게이트웨이는 게임 규칙을 모른다.

**Tech Stack:** Node 24 LTS · TypeScript 5.7 strict (`noUncheckedIndexedAccess`) · `ws` 8 · ioredis 7 · pg 8 · vitest 3

**Spec:** [`docs/superpowers/specs/2026-09-18-findit-2026-p0-design.md`](../superpowers/specs/2026-09-18-findit-2026-p0-design.md)

---

## Global Constraints

- **Node 24 LTS**, TypeScript 5.7 strict + `noUncheckedIndexedAccess`. `engines` 로 강제돼 있다.
- **모든 판정은 서버가 한다** (스펙 §10-3). 클라이언트가 보낸 시각은 판정에 쓰지 않는다.
- **좌표는 절대 클라로 나가지 않는다** (스펙 §6.3). `START` 는 `targetCount` 만, `REVEAL` 은 **이미 찾은** rect 의 좌표만 싣는다.
- **패치 URL 은 매치별 서명 URL** 이다 (스펙 §6.3). 리듀서가 `ctx.urls` 로 받아 쓴다 — Plan 4 는 그 구현을 바꾸지 않는다.
- **동기화는 대칭** (스펙 §3.8). 두 플레이어가 같은 퍼즐, 같은 5 개를 받는다. `assignPuzzle` 은 매치당 **한 번만** 부른다.
- **비밀값을 소스·테스트·Compose 에 넣지 않는다.** `.env` 는 gitignore, Gitleaks 가 CI 에서 돈다.
- **커밋**: Task당 1커밋. 한국어 본문 + Conventional Commits 접두어. 기여자 표기는 실행 환경 규칙을 따른다.
- **TDD**: 실패하는 테스트 → 실패 확인 → 최소 구현 → 통과 확인 → 커밋.
- **CI 는 Postgres·Redis 서비스 컨테이너로 돈다.** skip 은 실패로 취급된다 (`numPendingTests > 0` 이면 CI 가 죽는다). 통합 테스트를 환경 변수 뒤에 숨겨도 CI 에서 반드시 실행된다.

---

## Review Focus

스펙이 함축하지만 어느 Task 의 테스트도 저절로 건드리지 않는, 사람을 물 가능성이 높은 다섯 가지. 각 줄의 테스트는 해당 코드를 가진 Task 안에 넣어 뒀다.

1. **게스트의 정산** — 게스트는 `account` 행이 없다. `match_history.account_id` 는 FK 이고 `player_profile` 행도 없다. 정산이 그대로 INSERT 하면 FK 위반으로 터지고, **매치 종료 경로 전체가 죽는다.** → Task 6.
2. **`bigint` 컬럼이 문자열로 돌아온다** — `player_profile.total_score` 와 `coins` 는 `bigint` 다. node-postgres 는 `int8` 을 **문자열로** 준다. JS 에서 `+` 를 쓰면 `"100" + 5 === "1005"` 가 된다. Plan 3 에서 같은 계열(다중 문장 질의가 배열을 돌려주는 것)에 한 번 당했다. → Task 6.
3. **AI 계획이 사람에게 선점당하는 경우** — `planAiAction` 은 계획 시점의 남은 대상에서 고른다. 발화 전에 사람이 그 rect 를 찾으면 AI 의 TAP 은 MISS 가 되어 2 초 잠긴다. 즉 **사람이 빠를수록 AI 가 부당하게 약해진다.** → Task 1.
4. **큐 동시 진입** — 두 사람이 같은 순간에 `QUEUE_JOIN` 하면, 둘 다 "큐가 비었다" 를 보고 각자 큐에 들어가 **둘 다 5 초 뒤 AI 와 붙는다.** 사람이 둘 있는데 아무도 못 만난다. → Task 4.
5. **양쪽이 다 끊긴 매치** — 두 연결이 모두 닫히면 리듀서는 `LEAVE` 로 매치를 끝내지만, 러너의 타이머·레지스트리 항목·Redis `match:{id}` 키가 남으면 **누수**다. 서버가 오래 돌수록 쌓인다. → Task 7.

---

## 실행 방식

- **각 Task 를 끝낼 때마다 그 Task 의 diff 를 독립적으로 검토하는 단계를 넣어라.** Plan 3 에서 독립 검토가 13 건의 결함을 잡았고 13 건 모두 유효했다. 그중 다수는 계획서를 따라가는 것만으로는 드러나지 않았다 — 테스트가 통과하는데 **그 테스트가 아무것도 증명하지 않는** 종류였다.
- **계약을 문장으로 선언했으면, 그 계약을 실패시킬 수 있는 검사를 함께 두어라.** Plan 3 의 결함 대부분이 이 규칙을 어긴 데서 나왔다. "X 를 먼저 한다", "Y 에 닿지 않는다" 같은 순서·부재 계약은 결과 값이 아니라 **호출 기록**으로 확인해야 한다.
- **변이를 넣어 확인하는 것이 가장 확실하다.** 이 계획서의 여러 스텝이 "이 줄을 지우면 이 테스트가 실패해야 한다" 를 명시한다. 실패하지 않으면 테스트가 잘못된 것이다.

---

## 조사 기록 — 원작과 v1 에서 확인한 것

계획을 쓰기 전에 원작 코드를 읽었다. 추측으로 적은 것이 아니다.

**AI 전환 5 초는 원작 수치의 정확한 번역이다.** `GameView.java:1240` 의 `SINGLETIME = 100` 은 프레임 카운터다. 같은 루프에서 `mGameTimeCount > 19` 일 때 `mGameTime++` 하므로(`GameView.java:3553-3558`) **20 프레임 = 1 초**다. 따라서 100 프레임 = **정확히 5 초**. 스펙 §3.6 의 "5 초" 는 재해석이 아니라 원작 그대로다. (Plan 3 의 Codex 사본 머리말에 "2026 재해석" 이라고 적었던 것은 틀렸다.)

**전환 조건은 "큐" 가 아니라 "방 안에 상대가 없음"이다.** `GameView.java:3542-3550`:

```java
if (i2 > 100 && GameView.this.mScreenGameRoom.mRightCharacterIndex < 0) {
    GameView.this.mScreenGameRoom.mRightCharacterIndex = 2;   // AI 는 인덱스 2
    GameView.this.mScreenBattleRoom.mTime = 4;
    GameView.this.mScreenBattleRoom.mSingleTimeCount = -1;    // 카운터 정지
}
```

v1 서버(`legacy/server/src/socket/handlers.js`, 248 줄)에는 **큐가 없다.** `CREATEBATTLEROOM`/`ENTERBATTLEROOM`/`READY` 의 방 기반 모델이고 AI 전환도 난입도 서버에 없다 — 둘 다 클라이언트가 혼자 했다. 2026 은 서버 권위이므로 큐로 옮긴다(스펙 §3.6 "실행 위치: 서버").

**난입은 `GameActivity.java:611-616`.** 세 가지가 일어난다: 진행 중인 AI 판을 즉시 끝내고(`mGameTime = 40`), 난입자가 그대로 상대가 되고(`setRightCharacter`), **정산이 일어나지 않는다**(`mResultPass = true` 로 결과 화면을 건너뛰는데, 코인·경험치 전송이 결과 화면 애니메이션 안에서만 실행된다 — `GameView.java:3257-3271`).

**원작에는 경험치가 없다.** 정산은 `score = mScore + calculateScore(...)`, `level = getLevel(score)`, `coin = coin + 1` 이고, **레벨이 오른 판에만 스킬 포인트가 1 오른다**(`if (prelevel < level) point++`). 즉 레벨링 통화는 **점수**다. Plan 2 의 `END.expDelta` 는 2026 에 내가 추가한 것이라 프로필에 들어갈 자리가 없다 — `match_history.exp_delta` 에 기록만 하고, 별도 축으로 만들지는 P1 이 정한다.

---

## 파일 구조

```
server/src/
  match/
    runner.ts        ← 매치 하나의 수명: 리듀서 호출 · 타이머 · AI 구동
    runner.test.ts
    registry.ts      ← 살아 있는 매치 목록 (프로세스 메모리)
    index.ts         ← Redis match:{id} 인덱스 — 콘텐츠 URL 검증용
    index.test.ts
    queue.ts         ← Redis 매칭 큐 + 5초 AI 전환 + 난입
    queue.test.ts
    settlement.ts    ← match_history · player_profile 갱신
    settlement.test.ts
  ws/
    gateway.ts       ← WS 연결 수명 · AUTH · 프레임 검증 · 송신
    gateway.test.ts
    session.ts       ← 연결 하나의 상태 (principal, 소속 매치, seq)
  main.ts            ← 배선 (수정)
  http/app.ts        ← resolvePuzzleId 주입만 (수정 없음, main.ts 가 바꿈)
```

**경계 규칙 셋.**

1. `match/runner.ts` 는 `ws` 를 import 하지 않는다. 송신은 주입받은 `send` 포트로만 한다. 그래야 러너를 타이머 없이, 소켓 없이 테스트할 수 있다.
2. `ws/gateway.ts` 는 `battle/` 을 import 하지 않는다. 프레임을 `BattleEvent` 로 번역하는 일은 게이트웨이가 하지만, 규칙은 러너 뒤에 있다.
3. **타이머는 포트다.** `setTimeout` 을 직접 부르지 않는다. 40 초 매치를 실시간으로 기다리는 테스트는 쓸 수 없다.

---

### Task 1: 매치 러너 — 리듀서에 시간과 AI 를 주입한다

**Files:**
- Create: `server/src/match/runner.ts`, `server/src/match/registry.ts`
- Test: `server/src/match/runner.test.ts`

**Interfaces:**
- Consumes: Plan 2 `reduce`·`createBattle`·`planAiAction`·`hitTest`·`nextWakeAt`, `BattleState`, `Outbound`, `PlayerSlot`, `BattleEvent`, `ContentUrls`; Plan 3 `Clock`, `Rng`
- Produces:
  - `interface Scheduler { at(time: number, fn: () => void): TimerHandle; cancel(h: TimerHandle): void }`
  - `type EndPayloads = Partial<Record<PlayerSlot, Record<string, unknown>>>`
  - `interface RunnerPorts { clock: Clock; rng: Rng; urls: ContentUrls; scheduler: Scheduler; send(slot: PlayerSlot, type: MessageType, payload: Record<string, unknown>): void; onEnd(state: BattleState, ends: EndPayloads): void }`

> **`onEnd` 가 `END` 페이로드를 함께 넘기는 이유.** 점수·코인·경험치는 리듀서가 `END` 를 만들 때 이미 계산해 뒀다(`score`·`coinDelta`·`expDelta`). `BattleState` 만으로는 그것을 되살릴 수 없다 — 콤보 보너스는 정산 시점의 live 콤보 한 번 조회라서, 상태를 다시 훑어 재계산하면 **원작과 다른 값이 나온다**(Plan 2 에서 정확히 이 실수를 해서 점수가 3 배가 됐다). 그래서 리듀서가 낸 값을 그대로 들고 간다.
  - `class MatchRunner { readonly matchId: string; get state(): BattleState; start(): void; submit(event: BattleEvent): void; abort(): void }`
  - `class MatchRegistry { add(r: MatchRunner): void; get(matchId: string): MatchRunner | undefined; remove(matchId: string): void; findAiMatchWith(accountKey: string): MatchRunner | undefined; get size(): number }`

**왜 러너가 따로 있어야 하는가.** 리듀서는 `reduce(state, event, ctx) → { state, outbound, wakeAt }` 로 끝난다. 시간이 흐르게 하는 것도, AI 가 움직이게 하는 것도 리듀서의 일이 아니다(스펙 §6.2 — 주기 틱을 쏘지 않는다). 러너가 `wakeAt` 에 `TIMER` 를 한 번 넣고, AI 슬롯에 대해 `planAiAction` 이 준 시각에 `TAP` 을 넣는다. 그래서 **AI 의 판정 경로는 사람과 완전히 같다.**

**타이머가 둘이라는 점이 함정이다.** `wakeAt` 타이머와 AI 타이머는 서로 다른 생명주기를 갖는다.

- `wakeAt` 타이머는 **매 `submit` 마다** 취소하고 다시 건다. 상태가 바뀌면 다음 깨어날 시각도 바뀐다.
- AI 타이머는 **그러면 안 된다.** 매번 다시 계획하면 사람이 탭할 때마다 AI 의 지연이 새로 굴려져, 사람이 자주 움직이면 AI 는 영원히 발화하지 못한다. AI 는 **자기 행동이 끝난 뒤에만** 다음을 계획한다(발화 → 적용 → 재계획의 사슬).

**Review Focus 3 — 계획이 선점당하는 경우.** `planAiAction` 은 계획 시점의 남은 대상 중 하나를 골라 그 중심 좌표를 `TAP` 으로 만든다. 발화 전에 사람이 그 rect 를 찾으면 그 탭은 MISS 가 되고 AI 는 2 초 잠긴다 — 사람이 빠를수록 AI 가 약해진다. **발화 시점에 `hitTest` 로 대상이 아직 살아 있는지 확인하고, 사라졌으면 누르지 말고 다시 계획한다.**

- [ ] **Step 1: 실패하는 테스트 작성**

`server/src/match/runner.test.ts`:

```typescript
import { describe, expect, it } from 'vitest';
import { TestClock } from '../platform/clock.js';
import { createRng } from '../platform/rng.js';
import { assignPuzzle } from '../content/assigner.js';
import { createBattle, MATCH_DURATION_MS, COUNTDOWN_MS, type BattleState } from '../battle/state.js';
import type { MessageType } from '@findit/protocol';
import { MatchRunner, type EndPayloads, type RunnerPorts, type Scheduler } from './runner.js';
import { MatchRegistry as Registry } from './registry.js';
import type { Puzzle } from '../content/types.js';

/**
 * 가짜 스케줄러. 절대 시각으로 예약을 받아 두고, 시계를 옮길 때
 * 만기가 된 것만 시각 순으로 발화한다. 실시간을 기다리지 않는다.
 */
class TestScheduler implements Scheduler {
  private seq = 0;
  private readonly jobs = new Map<number, { at: number; fn: () => void }>();

  at(time: number, fn: () => void): number {
    const id = ++this.seq;
    this.jobs.set(id, { at: time, fn });
    return id;
  }

  cancel(h: number): void {
    this.jobs.delete(h);
  }

  /** 현재 예약 수 — 누수 검사에 쓴다. */
  get pending(): number {
    return this.jobs.size;
  }

  /** clock 을 to 까지 옮기며 만기 예약을 발화한다. */
  runUntil(clock: TestClock, to: number): void {
    for (let guard = 0; guard < 10_000; guard += 1) {
      const due = [...this.jobs.entries()]
        .filter(([, j]) => j.at <= to)
        .sort((a, b) => a[1].at - b[1].at)[0];
      if (!due) break;
      const [id, job] = due;
      this.jobs.delete(id);
      clock.set(Math.max(clock.now(), job.at));
      job.fn();
    }
    clock.set(to);
  }
}

const puzzle: Puzzle = {
  id: 'p1', width: 400, height: 300,
  rects: Array.from({ length: 7 }, (_, i) => ({
    index: i, x: i * 50, y: 10, w: 40, h: 40, sourceDrawable: `p1_${i}`,
  })),
};

interface Sent { slot: string; type: MessageType; payload: Record<string, unknown> }

function harness(opts: { p2Ai: boolean; seed?: number }) {
  const clock = new TestClock(1_000_000);
  const scheduler = new TestScheduler();
  const rng = createRng(opts.seed ?? 42);
  const sent: Sent[] = [];
  const ended: { state: BattleState; ends: EndPayloads }[] = [];

  const state = createBattle({
    matchId: 'm1',
    assignment: assignPuzzle([puzzle], createRng(7)),
    p1: { name: '사람', level: 10, isAi: false },
    p2: { name: opts.p2Ai ? 'AI' : '상대', level: 10, isAi: opts.p2Ai },
  });

  const ports: RunnerPorts = {
    clock, rng, scheduler,
    urls: { base: (m) => `/c/${m}/base`, patch: (m, i) => `/c/${m}/patch/${i}` },
    send: (slot, type, payload) => { sent.push({ slot, type, payload }); },
    onEnd: (state, ends) => { ended.push({ state, ends }); },
  };

  return { clock, scheduler, sent, ended, runner: new MatchRunner(state, ports) };
}

const typesOf = (sent: Sent[]): string[] => sent.map((s) => s.type);
const rectCenter = (i: number): { x: number; y: number } => ({ x: i * 50 + 20, y: 30 });

describe('매치 러너 — 진행', () => {
  it('양쪽 READY 로 카운트다운이 시작되고 3초 뒤 START 가 나간다', () => {
    const h = harness({ p2Ai: false });
    h.runner.start();
    h.runner.submit({ kind: 'READY', slot: 'p1' });
    h.runner.submit({ kind: 'READY', slot: 'p2' });
    expect(typesOf(h.sent)).toContain('COUNTDOWN');

    h.scheduler.runUntil(h.clock, h.clock.now() + COUNTDOWN_MS);
    expect(typesOf(h.sent)).toContain('START');
    expect(h.runner.state.phase).toBe('PLAYING');
  });

  it('40초가 지나면 아무도 손대지 않아도 끝난다 — TIMER 가 실제로 걸려 있다', () => {
    const h = harness({ p2Ai: false });
    h.runner.start();
    h.runner.submit({ kind: 'READY', slot: 'p1' });
    h.runner.submit({ kind: 'READY', slot: 'p2' });
    h.scheduler.runUntil(h.clock, h.clock.now() + COUNTDOWN_MS + MATCH_DURATION_MS + 10);

    expect(h.runner.state.phase).toBe('ENDED');
    expect(typesOf(h.sent)).toContain('END');
    expect(h.ended).toHaveLength(1);
    // 정산이 쓸 값이 함께 넘어와야 한다. 없으면 모든 전적의 점수·코인이 0 이 된다.
    expect(h.ended[0]!.ends.p1).toMatchObject({ result: expect.any(String) });
    expect(h.ended[0]!.ends.p1).toHaveProperty('score');
    expect(h.ended[0]!.ends.p1).toHaveProperty('coinDelta');
    expect(h.ended[0]!.ends.p2).toHaveProperty('score');
  });

  it('START 페이로드에 좌표도 rect 개수 외의 정보도 없다 — 스펙 §6.3', () => {
    const h = harness({ p2Ai: false });
    h.runner.start();
    h.runner.submit({ kind: 'READY', slot: 'p1' });
    h.runner.submit({ kind: 'READY', slot: 'p2' });
    h.scheduler.runUntil(h.clock, h.clock.now() + COUNTDOWN_MS);

    const start = h.sent.find((s) => s.type === 'START')!;
    const json = JSON.stringify(start.payload);
    // 이 퍼즐의 rect 는 x = 0,50,...,300 / y = 10 이다. 하나라도 새면 안 된다.
    for (const v of [50, 100, 150, 200, 250, 300]) {
      expect(json).not.toContain(`:${v}`);
    }
    expect(json).not.toContain('rects');
  });

  it('매치가 끝나면 예약이 하나도 남지 않는다 — 타이머 누수', () => {
    const h = harness({ p2Ai: true });
    h.runner.start();
    h.runner.submit({ kind: 'READY', slot: 'p1' });
    h.runner.submit({ kind: 'READY', slot: 'p2' });
    h.scheduler.runUntil(h.clock, h.clock.now() + COUNTDOWN_MS + MATCH_DURATION_MS + 10);

    expect(h.runner.state.phase).toBe('ENDED');
    expect(h.scheduler.pending).toBe(0);
  });

  it('끝난 매치에 이벤트를 넣어도 아무 일도 없다', () => {
    const h = harness({ p2Ai: false });
    h.runner.start();
    h.runner.submit({ kind: 'LEAVE', slot: 'p1' });
    const after = h.sent.length;
    h.runner.submit({ kind: 'TAP', slot: 'p2', ...rectCenter(0) });
    expect(h.sent).toHaveLength(after);
  });

  it('abort 는 END 를 보내지도 onEnd 를 부르지도 않는다 — 난입이 쓴다', () => {
    const h = harness({ p2Ai: true });
    h.runner.start();
    h.runner.submit({ kind: 'READY', slot: 'p1' });
    h.runner.submit({ kind: 'READY', slot: 'p2' });
    h.scheduler.runUntil(h.clock, h.clock.now() + COUNTDOWN_MS);

    h.runner.abort();
    expect(typesOf(h.sent)).not.toContain('END');
    expect(h.ended).toHaveLength(0);
    // 정산이 없어야 하는 것과 별개로, 자원은 반드시 회수돼야 한다.
    expect(h.scheduler.pending).toBe(0);
  });
});

describe('매치 러너 — AI 구동', () => {
  it('AI 는 PLAYING 이 된 뒤에 스스로 rect 를 찾는다', () => {
    const h = harness({ p2Ai: true });
    h.runner.start();
    h.runner.submit({ kind: 'READY', slot: 'p1' });
    h.runner.submit({ kind: 'READY', slot: 'p2' });
    h.scheduler.runUntil(h.clock, h.clock.now() + COUNTDOWN_MS + 20_000);

    expect(h.runner.state.p2.found.length).toBeGreaterThan(0);
  });

  it('사람이 탭해도 AI 의 예정 시각이 미뤄지지 않는다', () => {
    const h = harness({ p2Ai: true });
    h.runner.start();
    h.runner.submit({ kind: 'READY', slot: 'p1' });
    h.runner.submit({ kind: 'READY', slot: 'p2' });
    h.scheduler.runUntil(h.clock, h.clock.now() + COUNTDOWN_MS);

    // 사람이 빈 곳을 100 번 두드린다. 매번 다시 계획한다면 AI 는 영원히
    // 발화하지 못한다 — 실제로 겪으면 "AI 가 가끔 아무것도 안 한다" 로 보인다.
    for (let i = 0; i < 100; i += 1) h.runner.submit({ kind: 'TAP', slot: 'p1', x: 399, y: 299 });
    h.scheduler.runUntil(h.clock, h.clock.now() + 20_000);

    expect(h.runner.state.p2.found.length).toBeGreaterThan(0);
  });

  it('계획한 rect 를 사람이 먼저 찾으면 AI 는 그것을 누르지 않는다 — 부당한 잠금 금지', () => {
    const h = harness({ p2Ai: true, seed: 3 });
    h.runner.start();
    h.runner.submit({ kind: 'READY', slot: 'p1' });
    h.runner.submit({ kind: 'READY', slot: 'p2' });
    h.scheduler.runUntil(h.clock, h.clock.now() + COUNTDOWN_MS);

    // 사람이 노출 대상 5개를 전부 먼저 찾아 버린다. AI 의 계획은 모두 무효가 된다.
    for (const index of h.runner.state.targetIndices) {
      h.runner.submit({ kind: 'TAP', slot: 'p1', ...rectCenter(index) });
    }
    h.scheduler.runUntil(h.clock, h.clock.now() + 20_000);

    // 재검증 없이 그대로 눌렀다면 MISS 로 lockedUntil 이 올라간다.
    // 대상이 다 사라졌으므로 AI 는 한 번도 누르지 않아야 한다.
    expect(h.runner.state.p2.lockedUntil).toBe(0);
    expect(h.runner.state.p2.found).toHaveLength(0);
  });
});

describe('매치 레지스트리', () => {
  it('넣고 찾고 지운다', () => {
    const reg = new Registry();
    const h = harness({ p2Ai: false });
    reg.add(h.runner);
    expect(reg.get('m1')).toBe(h.runner);
    expect(reg.size).toBe(1);
    reg.remove('m1');
    expect(reg.get('m1')).toBeUndefined();
    expect(reg.size).toBe(0);
  });

  it('없는 id 는 undefined 다 — 던지지 않는다', () => {
    expect(new Registry().get('nope')).toBeUndefined();
  });
});
```

- [ ] **Step 2: 실패 확인**

Run: `npx vitest run server/src/match/`
Expected: FAIL — `Cannot find module './runner.js'`

- [ ] **Step 3: 구현**

`server/src/match/runner.ts`:

```typescript
import type { MessageType } from '@findit/protocol';
import type { Clock } from '../platform/clock.js';
import type { Rng } from '../platform/rng.js';
import { hitTest, reduce, type ContentUrls, type ReduceContext } from '../battle/reducer.js';
import { planAiAction } from '../battle/ai-driver.js';
import type { BattleEvent } from '../battle/events.js';
import type { BattleState, Outbound, PlayerSlot } from '../battle/state.js';

export type TimerHandle = number;

/**
 * 타이머를 포트로 둔다. setTimeout 을 직접 부르면 40 초 매치를 40 초 기다리는
 * 테스트밖에 쓸 수 없다. 절대 시각을 받는 이유는 리듀서의 wakeAt 이 절대
 * 시각이기 때문이다 — 상대 지연으로 변환하는 일은 어댑터가 한다.
 */
export interface Scheduler {
  at(time: number, fn: () => void): TimerHandle;
  cancel(handle: TimerHandle): void;
}

export interface RunnerPorts {
  clock: Clock;
  rng: Rng;
  urls: ContentUrls;
  scheduler: Scheduler;
  /** 한 슬롯에 프레임을 보낸다. 연결이 없으면 구현이 조용히 버린다. */
  send(slot: PlayerSlot, type: MessageType, payload: Record<string, unknown>): void;
  /**
   * 정상 종료를 알린다. 정산과 정리는 바깥 책임이다. abort 로는 불리지 않는다.
   *
   * ends 는 리듀서가 만든 슬롯별 END 페이로드다. 점수·코인·경험치를 여기서
   * 넘기지 않으면 정산이 BattleState 를 훑어 재계산해야 하는데, 콤보 보너스는
   * 정산 시점의 live 콤보 한 번 조회라 재계산하면 값이 달라진다.
   */
  onEnd(state: BattleState, ends: EndPayloads): void;
}

export type EndPayloads = Partial<Record<PlayerSlot, Record<string, unknown>>>;

const SLOTS = ['p1', 'p2'] as const;

export class MatchRunner {
  private current: BattleState;
  private wakeTimer: TimerHandle | null = null;
  private readonly aiTimers: Record<PlayerSlot, TimerHandle | null> = { p1: null, p2: null };
  private closed = false;

  constructor(initial: BattleState, private readonly ports: RunnerPorts) {
    this.current = initial;
  }

  get matchId(): string {
    return this.current.matchId;
  }

  get state(): BattleState {
    return this.current;
  }

  /** 매치를 살린다. 아직 이벤트는 없고, WAITING 의 wakeAt 만 건다. */
  start(): void {
    this.reschedule(null);
  }

  submit(event: BattleEvent): void {
    if (this.closed || this.current.phase === 'ENDED') return;

    const before = this.current.phase;
    const ctx = this.ctx();
    const { state, outbound, wakeAt } = reduce(this.current, event, ctx);
    this.current = state;

    // 리듀서가 낸 END 를 슬롯별로 붙잡아 둔다. 정산이 이 값을 쓴다.
    const ends: EndPayloads = {};
    for (const item of outbound) {
      if (item.type === 'END' && item.to !== 'both') ends[item.to] = item.payload;
    }

    for (const item of outbound) this.emit(item);
    this.reschedule(wakeAt);

    // PLAYING 에 막 들어섰을 때 AI 사슬을 시작한다. 이후로는 AI 가 자기
    // 행동을 마칠 때마다 스스로 다음을 건다 — 사람의 탭이 AI 를 흔들지 않는다.
    if (before !== 'PLAYING' && state.phase === 'PLAYING') {
      for (const slot of SLOTS) if (state[slot].isAi) this.scheduleAi(slot);
    }

    if (state.phase === 'ENDED') this.finish(ends);
  }

  /**
   * 정산 없이 매치를 버린다. 난입이 쓴다 — 원작에서 중단된 AI 판은
   * 코인도 경험치도 0 이다 (GameActivity.java:611-616).
   * END 를 보내지 않고 onEnd 도 부르지 않지만, 자원은 회수한다.
   */
  abort(): void {
    this.closed = true;
    this.clearAll();
  }

  private ctx(): ReduceContext {
    return { now: this.ports.clock.now(), rng: this.ports.rng, urls: this.ports.urls };
  }

  private emit(item: Outbound): void {
    const targets: readonly PlayerSlot[] = item.to === 'both' ? SLOTS : [item.to];
    for (const slot of targets) this.ports.send(slot, item.type, item.payload);
  }

  private reschedule(wakeAt: number | null): void {
    if (this.wakeTimer !== null) {
      this.ports.scheduler.cancel(this.wakeTimer);
      this.wakeTimer = null;
    }
    if (wakeAt === null || this.current.phase === 'ENDED' || this.closed) return;
    this.wakeTimer = this.ports.scheduler.at(wakeAt, () => {
      this.wakeTimer = null;
      this.submit({ kind: 'TIMER' });
    });
  }

  private scheduleAi(slot: PlayerSlot): void {
    const existing = this.aiTimers[slot];
    if (existing !== null) {
      this.ports.scheduler.cancel(existing);
      this.aiTimers[slot] = null;
    }
    if (this.closed || this.current.phase !== 'PLAYING') return;

    const ctx = this.ctx();
    const plan = planAiAction(this.current, slot, ctx);

    if (plan === null) {
      // 잠겨 있어서 계획하지 못했다면 풀리는 시각에 다시 시도한다.
      // 이게 없으면 AI 는 한 번 미스한 뒤 판이 끝날 때까지 멈춰 있다.
      const lockedUntil = this.current[slot].lockedUntil;
      if (lockedUntil > ctx.now) {
        this.aiTimers[slot] = this.ports.scheduler.at(lockedUntil, () => {
          this.aiTimers[slot] = null;
          this.scheduleAi(slot);
        });
      }
      return;
    }

    this.aiTimers[slot] = this.ports.scheduler.at(plan.at, () => {
      this.aiTimers[slot] = null;

      // **발화 시점 재검증.** 계획을 세운 뒤 사람이 그 rect 를 먼저 찾았을 수
      // 있다. 그대로 누르면 MISS 가 되어 AI 가 2 초 잠긴다 — 사람이 빠를수록
      // AI 가 약해진다. 대상이 사라졌으면 누르지 말고 다시 계획한다.
      const event = plan.event;
      if (event.kind === 'TAP') {
        const alive = hitTest(
          this.current.assignment, this.current.targetIndices,
          this.current.revealed, event.x, event.y,
        );
        if (alive === null) {
          this.scheduleAi(slot);
          return;
        }
      }

      this.submit(event);
      this.scheduleAi(slot);
    });
  }

  private finish(ends: EndPayloads): void {
    this.clearAll();
    this.ports.onEnd(this.current, ends);
  }

  private clearAll(): void {
    if (this.wakeTimer !== null) {
      this.ports.scheduler.cancel(this.wakeTimer);
      this.wakeTimer = null;
    }
    for (const slot of SLOTS) {
      const handle = this.aiTimers[slot];
      if (handle !== null) {
        this.ports.scheduler.cancel(handle);
        this.aiTimers[slot] = null;
      }
    }
  }
}

export { MatchRegistry } from './registry.js';
```

`server/src/match/registry.ts`:

```typescript
import type { MatchRunner } from './runner.js';

/**
 * 살아 있는 매치 목록. P0 는 서버가 한 프로세스라 메모리에 둔다.
 *
 * Redis 에 두지 않는 이유: BattleState 에는 rect 좌표가 통째로 들어 있고
 * (assignment), 매 이벤트마다 직렬화·역직렬화하는 비용이 실시간 경로에
 * 그대로 얹힌다. 다중 인스턴스는 P1 의 문제다 — 그때는 매치를 인스턴스에
 * 고정(sticky)하거나 상태를 옮기는 설계가 따로 필요하다.
 */
export class MatchRegistry {
  private readonly byId = new Map<string, MatchRunner>();

  add(runner: MatchRunner): void {
    this.byId.set(runner.matchId, runner);
  }

  get(matchId: string): MatchRunner | undefined {
    return this.byId.get(matchId);
  }

  remove(matchId: string): void {
    this.byId.delete(matchId);
  }

  get size(): number {
    return this.byId.size;
  }

  /** 난입 대상 — 이 사람이 AI 와 붙고 있는 진행 중 매치. */
  findAiMatchWith(slotKey: string): MatchRunner | undefined {
    for (const runner of this.byId.values()) {
      const s = runner.state;
      if (s.phase === 'ENDED') continue;
      if (s.p2.isAi && s.p1.name === slotKey) return runner;
      if (s.p1.isAi && s.p2.name === slotKey) return runner;
    }
    return undefined;
  }
}
```

> `TestClock.set(ms)` 은 Plan 2 에서 이미 만들어 뒀다 (`server/src/platform/clock.ts`). **과거로 되돌리면 던진다** — 그래서 가짜 스케줄러는 `Math.max(clock.now(), job.at)` 으로 올라가기만 한다.
>
> `SystemClock.now()` 는 `performance.now()` 라 **벽시계가 아니다** — 프로세스 시작 기준 단조 증가다. 실제 스케줄러 어댑터는 `setTimeout(fn, at - clock.now())` 로 상대 지연을 계산하므로 같은 기준 위에서 일관된다. `Date.now()` 와 섞어 쓰면 두 기준이 어긋나 타이머가 즉시 발화하거나 영원히 오지 않는다.

- [ ] **Step 4: 통과 확인**

Run: `npx vitest run server/src/match/ && npm run typecheck`
Expected: PASS — 11 tests.

**변이로 확인할 것** (하나라도 실패하지 않으면 그 테스트가 잘못된 것이다):

| 변이 | 깨지는 테스트 |
|---|---|
| `scheduleAi` 의 `hitTest` 재검증 블록 제거 | `계획한 rect 를 사람이 먼저 찾으면…` |
| `submit` 끝에서 무조건 `scheduleAi` 재호출 | `사람이 탭해도 AI 의 예정 시각이 미뤄지지 않는다` |
| `finish` 에서 `clearAll()` 제거 | `매치가 끝나면 예약이 하나도 남지 않는다` |
| `abort` 가 `onEnd` 를 부르게 변경 | `abort 는 END 를 보내지도 onEnd 를 부르지도 않는다` |
| `finish(ends)` 에 빈 객체를 넘김 | `40초가 지나면 아무도 손대지 않아도 끝난다` |

- [ ] **Step 5: 커밋**

```bash
git add server/src/match/runner.ts server/src/match/registry.ts server/src/match/runner.test.ts
git commit -m "$(cat <<'EOF'
feat(server): 매치 러너 — 리듀서에 시간과 AI 를 주입

리듀서는 reduce(state, event, ctx) 로 끝나고 시간이 흐르게 하는 일은 하지
않는다 (스펙 §6.2 — 주기 틱을 쏘지 않는다). 러너가 wakeAt 에 TIMER 를 한 번
넣고, AI 슬롯에는 planAiAction 이 준 시각에 TAP 을 넣는다. 그래서 AI 의 판정
경로는 사람과 완전히 같다.

타이머 둘의 생명주기가 다르다. wakeAt 타이머는 매 submit 마다 다시 걸지만,
AI 타이머는 그러면 안 된다 — 매번 다시 계획하면 사람이 탭할 때마다 AI 의
지연이 새로 굴려져 사람이 자주 움직이면 AI 가 영원히 발화하지 못한다. AI 는
자기 행동을 마친 뒤에만 다음을 계획한다.

발화 시점에 hitTest 로 대상이 살아 있는지 확인한다. 계획을 세운 뒤 사람이
그 rect 를 먼저 찾았으면 그대로 누를 때 MISS 가 되어 AI 가 2 초 잠긴다 —
사람이 빠를수록 AI 가 부당하게 약해진다.

onEnd 는 리듀서가 만든 슬롯별 END 페이로드를 함께 넘긴다. 점수·코인·경험치는
리듀서가 이미 계산해 뒀고, BattleState 만으로는 되살릴 수 없다 — 콤보 보너스가
정산 시점의 live 콤보 한 번 조회라서 재계산하면 값이 달라진다. Plan 2 에서
정확히 그 실수로 점수가 3 배가 됐다.

abort 는 END 도 onEnd 도 없이 자원만 회수한다. 난입이 쓴다. 원작에서 중단된
AI 판은 결과 화면을 건너뛰므로 코인도 경험치도 0 이다
(GameActivity.java:611-616, GameView.java:3257-3271).

타이머는 포트다. setTimeout 을 직접 부르면 40 초 매치를 40 초 기다리는
테스트밖에 쓸 수 없다. SystemClock 이 performance.now() 기준이므로 어댑터는
at - clock.now() 로 상대 지연을 계산한다 — Date.now() 와 섞으면 기준이 어긋난다.

EOF
)"
```

---

### Task 2: Redis 매치 인덱스 — `resolvePuzzleId` 를 실제 조회로

**Files:**
- Create: `server/src/match/index.ts`
- Test: `server/src/match/index.test.ts`
- Modify: `server/src/platform/redis.ts` (`KEY.match` 추가)

**Interfaces:**
- Consumes: Plan 3 `Cache`, `KEY`
- Produces:
  - `interface MatchIndex { put(matchId: string, puzzleId: string): Promise<void>; puzzleIdOf(matchId: string): Promise<string | null>; drop(matchId: string): Promise<void> }`
  - `function createMatchIndex(cache: Cache, ttlMs?: number): MatchIndex`

**왜 Redis 인가.** 매치 **상태**는 프로세스 메모리에 있지만(Task 1), `GET /content/:matchId/:kind/:index` 는 **HTTP 경로**다. 스펙 §6.5 가 `match:{id}` 를 Redis 에 두라고 하는 이유가 여기다 — 콘텐츠 서빙은 매치를 진행하는 프로세스와 같은 프로세스일 필요가 없다. Plan 3 은 이 자리에 항등 함수를 넣어 뒀다:

```typescript
// Plan 3 의 main.ts — 알려진 퍼즐 id 만 통과시키는 임시 구현
resolvePuzzleId: async (matchId) => (knownPuzzleIds.has(matchId) ? matchId : null),
```

Plan 4 가 이것을 실제 조회로 바꾼다. **바뀌는 것이 보안상 중요하다**: 지금은 퍼즐 id 를 아는 사람이면 누구나 그 퍼즐의 base 이미지를 서명만 맞으면 받을 수 있다. 바뀐 뒤에는 **진행 중인 매치의 id** 를 알아야 한다.

**TTL 을 거는 이유.** `drop` 이 불리지 않는 경로가 반드시 생긴다 — 프로세스가 죽거나, 예외가 정리를 건너뛰거나. TTL 이 없으면 Redis 에 매치 키가 영원히 쌓인다. 매치는 카운트다운 3 초 + 40 초이므로 **10 분**이면 넉넉하고, 넘겨도 무해하다(만료된 매치의 URL 은 서명 TTL 5 분에 이미 걸린다).

- [ ] **Step 1: 실패하는 테스트 작성**

`server/src/match/index.test.ts`:

```typescript
import { afterAll, beforeAll, describe, expect, it } from 'vitest';
import { createCache, KEY, type Cache } from '../platform/redis.js';
import { createMatchIndex } from './index.js';

describe('KEY.match', () => {
  it('세션·게스트와 다른 접두어를 쓴다', () => {
    expect(KEY.match('m1')).toBe('findit:match:m1');
    expect(KEY.match('m1')).not.toBe(KEY.session('m1'));
    expect(KEY.match('m1')).not.toBe(KEY.guest('m1'));
  });
});

const url = process.env['REDIS_URL'];
const suite = url ? describe : describe.skip;

suite('매치 인덱스', () => {
  // suite 본문 최상위에서 만들지 않는다 — describe.skip 도 콜백 본문은
  // 평가하므로 url 이 undefined 여도 ioredis 가 localhost 로 붙는다.
  let cache: Cache;
  let seq = 0;
  const id = (): string => `m-${process.pid}-${++seq}`;

  beforeAll(() => { cache = createCache(url!, () => {}); });
  afterAll(async () => { await cache.close(); });

  it('넣은 매치의 퍼즐 id 를 돌려준다', async () => {
    const m = id();
    const index = createMatchIndex(cache);
    await index.put(m, 'a0001');
    expect(await index.puzzleIdOf(m)).toBe('a0001');
  });

  it('모르는 매치는 null 이다 — 던지지 않는다', async () => {
    expect(await createMatchIndex(cache).puzzleIdOf(id())).toBeNull();
  });

  it('drop 한 매치는 더 이상 조회되지 않는다 — 끝난 판의 URL 이 계속 먹으면 안 된다', async () => {
    const m = id();
    const index = createMatchIndex(cache);
    await index.put(m, 'a0001');
    await index.drop(m);
    expect(await index.puzzleIdOf(m)).toBeNull();
  });

  it('TTL 이 걸려 있다 — drop 을 놓쳐도 영원히 남지 않는다', async () => {
    const m = id();
    await createMatchIndex(cache, 200).put(m, 'a0001');
    await new Promise((r) => setTimeout(r, 350));
    expect(await createMatchIndex(cache).puzzleIdOf(m)).toBeNull();
  });

  it('빈 matchId 는 Redis 를 때리지 않고 null 이다', async () => {
    let calls = 0;
    const counting: Cache = {
      get: async () => { calls += 1; return null; },
      setEx: async () => { calls += 1; },
      del: async () => { calls += 1; },
      ping: async () => {},
      close: async () => {},
    };
    expect(await createMatchIndex(counting).puzzleIdOf('')).toBeNull();
    // 결과만 보면 가드를 지워도 통과한다 — 빈 키 조회도 null 을 준다.
    expect(calls).toBe(0);
  });
});
```

- [ ] **Step 2: 실패 확인**

Run: `npx vitest run server/src/match/index.test.ts`
Expected: FAIL — `Cannot find module './index.js'`

- [ ] **Step 3: 구현**

`server/src/platform/redis.ts` 의 `KEY` 에 한 줄 추가:

```typescript
export const KEY = {
  session: (token: string): string => `${PREFIX}:session:${token}`,
  guest: (token: string): string => `${PREFIX}:guest:${token}`,
  match: (matchId: string): string => `${PREFIX}:match:${matchId}`,
} as const;
```

`server/src/match/index.ts`:

```typescript
import { KEY, type Cache } from '../platform/redis.js';

/** 카운트다운 3초 + 본게임 40초를 훨씬 넘기는 여유. 정리를 놓쳐도 사라진다. */
const DEFAULT_TTL_MS = 600_000;

/**
 * matchId → puzzleId 인덱스.
 *
 * 매치 상태 자체는 프로세스 메모리에 있다 (match/registry.ts). 여기 Redis 에
 * 두는 것은 HTTP 콘텐츠 라우트가 서명 URL 을 검증한 뒤 "어느 퍼즐의 파일인가"
 * 를 알아야 하기 때문이다 — 그 요청은 매치를 진행하는 프로세스가 아닌 곳으로
 * 갈 수 있다 (스펙 §6.5).
 */
export interface MatchIndex {
  put(matchId: string, puzzleId: string): Promise<void>;
  puzzleIdOf(matchId: string): Promise<string | null>;
  drop(matchId: string): Promise<void>;
}

export function createMatchIndex(cache: Cache, ttlMs = DEFAULT_TTL_MS): MatchIndex {
  return {
    async put(matchId: string, puzzleId: string): Promise<void> {
      await cache.setEx(KEY.match(matchId), puzzleId, ttlMs);
    },

    async puzzleIdOf(matchId: string): Promise<string | null> {
      // Redis 를 때리기 전에 거른다. 빈 키 조회는 의미가 없다.
      if (!matchId) return null;
      return cache.get(KEY.match(matchId));
    },

    async drop(matchId: string): Promise<void> {
      if (!matchId) return;
      await cache.del(KEY.match(matchId));
    },
  };
}
```

- [ ] **Step 4: 통과 확인**

Run: `REDIS_URL=redis://localhost:6379 npx vitest run server/src/match/index.test.ts && npm run typecheck`
Expected: PASS — 6 tests.

`REDIS_URL` 없이도 확인한다:

```bash
npx vitest run server/src/match/index.test.ts 2>&1 | grep -i ioredis
```
Expected: 출력 없음.

- [ ] **Step 5: 커밋**

```bash
git add server/src/match/index.ts server/src/match/index.test.ts server/src/platform/redis.ts
git commit -m "$(cat <<'EOF'
feat(server): Redis 매치 인덱스 — matchId → puzzleId

Plan 3 은 resolvePuzzleId 자리에 항등 함수를 넣어 뒀다. 알려진 퍼즐 id 면
그대로 통과시키는 임시 구현이라, 서명만 맞으면 진행 중인 매치가 아니어도
그 퍼즐의 이미지를 받을 수 있었다. 이제 진행 중인 매치의 id 를 알아야 한다.

매치 상태 자체는 프로세스 메모리에 둔다. 여기 Redis 에 두는 것은 HTTP 콘텐츠
라우트가 서명을 검증한 뒤 "어느 퍼즐의 파일인가" 를 알아야 하기 때문이고,
그 요청은 매치를 진행하는 프로세스가 아닌 곳으로 갈 수 있다 (스펙 §6.5).

TTL 10 분을 건다. drop 이 불리지 않는 경로는 반드시 생긴다 — 프로세스가
죽거나 예외가 정리를 건너뛴다. TTL 이 없으면 키가 영원히 쌓인다.

EOF
)"
```

---

### Task 3: WS 게이트웨이 — 연결 수명과 프레임 검문

**Files:**
- Create: `server/src/ws/gateway.ts`, `server/src/ws/session.ts`
- Test: `server/src/ws/gateway.test.ts`
- Modify: `server/package.json` (`ws`, `@types/ws`)

**Interfaces:**
- Consumes: `@findit/protocol` `decodeEnvelope`·`encodeEnvelope`·`ProtocolError`·`MessageType`; Plan 3 `Principal`, `Clock`
- Produces:
  - `interface ConnSession { readonly principal: Principal | null; readonly id: string; matchId: string | null; slot: PlayerSlot | null }`
  - `type GameInput = { kind: 'READY' } | { kind: 'TAP'; x: number; y: number } | { kind: 'SKILL'; skillId: string } | { kind: 'LEAVE' }`
  - `interface GatewayDeps { clock: Clock; log: {...}; verify(token: string): Promise<Principal | null>; onJoin(conn: Conn, mode: string): Promise<void>; onLeaveQueue(conn: Conn): Promise<void>; onGameInput(conn: Conn, input: GameInput): void; onClose(conn: Conn): void }`
  - `interface Conn { readonly session: ConnSession; send(type: MessageType, payload: Record<string, unknown>): void; close(code: string, message: string): void }`
  - `function attachGateway(server: http.Server, deps: GatewayDeps): { close(): Promise<void>; readonly connections: number }`

**문 앞 검문 셋.** 게이트웨이는 게임 규칙을 하나도 모른다. 대신 세 가지를 지킨다.

1. **`decodeEnvelope(raw, 'c2s')`** — 방향까지 검사한다. 이게 없으면 클라가 `END` 를 자칭해 보낼 수 있다. Plan 1 이 만든 검증기가 이미 그 인자를 받는다.
2. **`AUTH` 가 먼저다.** 인증되지 않은 연결은 `AUTH` 외의 어떤 메시지도 처리하지 않는다.
3. **`ProtocolError` 는 연결을 끊는다.** 조작된 프레임을 보내는 클라와 협상하지 않는다. 다만 **끊기 전에 `ERROR` 를 보낸다** — 정상 클라의 버그를 디버깅할 수 있어야 한다.

**`seq` 는 서버 송신에만 쓴다.** 클라가 보낸 `seq` 는 검증만 하고 버린다. 순서 보장은 TCP 가 한다. 클라의 `seq` 를 신뢰해 재정렬하면 그 자체가 조작 벡터가 된다.

**게이트웨이는 슬롯을 모른다.** 어떤 연결이 `p1` 인지 `p2` 인지는 매칭이 정한다. 그래서 게이트웨이가 넘기는 것은 `BattleEvent` 가 아니라 **슬롯이 없는 `GameInput`** 이다. 슬롯은 배선층이 `conn.session.slot` 으로 채워 넣는다. 게이트웨이에서 `slot: 'p1'` 같은 자리표시자를 쓰면, 슬롯을 채우는 것을 잊은 경로가 **조용히 p1 로 동작한다** — p2 의 탭이 p1 의 점수가 되는 종류의 버그다.

- [ ] **Step 1: 실패하는 테스트 작성**

`server/src/ws/gateway.test.ts`:

```typescript
import { afterEach, beforeEach, describe, expect, it } from 'vitest';
import { createServer, type Server } from 'node:http';
import { AddressInfo } from 'node:net';
import WebSocket from 'ws';
import { TestClock } from '../platform/clock.js';
import { attachGateway, type Conn, type GameInput, type GatewayDeps } from './gateway.js';

interface Harness {
  url: string;
  inputs: { conn: Conn; input: GameInput }[];
  joins: string[];
  closed: number;
  logged: string[];
  stop(): Promise<void>;
}

async function start(overrides: Partial<GatewayDeps> = {}): Promise<Harness> {
  const inputs: { conn: Conn; input: GameInput }[] = [];
  const joins: string[] = [];
  const logged: string[] = [];
  let closed = 0;

  const server: Server = createServer();
  const deps: GatewayDeps = {
    clock: new TestClock(1_000_000),
    log: { error: (m: string) => { logged.push(m); } },
    verify: async (token: string) =>
      token === 'good' ? { kind: 'account', accountId: 'acc-1' } : null,
    onJoin: async (_conn, mode) => { joins.push(mode); },
    onLeaveQueue: async () => {},
    onGameInput: (conn, input) => { inputs.push({ conn, input }); },
    onClose: () => { closed += 1; },
    ...overrides,
  };

  const gw = attachGateway(server, deps);
  await new Promise<void>((r) => server.listen(0, r));
  const port = (server.address() as AddressInfo).port;

  return {
    url: `ws://127.0.0.1:${port}`,
    inputs, joins, logged,
    get closed() { return closed; },
    async stop() {
      await gw.close();
      await new Promise<void>((r) => server.close(() => r()));
    },
  };
}

/** 프레임 하나를 보내고, 서버가 보내는 다음 프레임 하나를 기다린다. */
function open(url: string): Promise<WebSocket> {
  const ws = new WebSocket(url);
  return new Promise((resolve, reject) => {
    ws.once('open', () => resolve(ws));
    ws.once('error', reject);
  });
}

function next(ws: WebSocket): Promise<{ t: string; d: Record<string, unknown> }> {
  return new Promise((resolve, reject) => {
    const timer = setTimeout(() => reject(new Error('프레임을 기다리다 시간 초과')), 2_000);
    ws.once('message', (raw) => { clearTimeout(timer); resolve(JSON.parse(String(raw))); });
  });
}

function closedWith(ws: WebSocket): Promise<number> {
  return new Promise((resolve) => { ws.once('close', (code) => resolve(code)); });
}

const frame = (t: string, d: Record<string, unknown> = {}): string =>
  JSON.stringify({ t, seq: 1, d });

let h: Harness;
beforeEach(async () => { h = await start(); });
afterEach(async () => { await h.stop(); });

describe('인증', () => {
  it('좋은 토큰이면 AUTH 가 통과한다', async () => {
    const ws = await open(h.url);
    ws.send(frame('AUTH', { token: 'good' }));
    const reply = await next(ws);
    expect(reply.t).not.toBe('ERROR');
    ws.close();
  });

  it('나쁜 토큰이면 ERROR 를 주고 연결을 끊는다', async () => {
    const ws = await open(h.url);
    ws.send(frame('AUTH', { token: 'bad' }));
    const reply = await next(ws);
    expect(reply.t).toBe('ERROR');
    expect(await closedWith(ws)).toBeGreaterThan(0);
  });

  it('AUTH 전에 온 QUEUE_JOIN 은 처리되지 않는다', async () => {
    const ws = await open(h.url);
    ws.send(frame('QUEUE_JOIN', { mode: 'casual' }));
    const reply = await next(ws);
    expect(reply.t).toBe('ERROR');
    // 코드만 보면 onJoin 을 부른 뒤 ERROR 를 내도 통과한다.
    expect(h.joins).toEqual([]);
    ws.close();
  });

  it('AUTH 전에 온 TAP 은 아래로 넘어가지 않는다', async () => {
    const ws = await open(h.url);
    ws.send(frame('TAP', { x: 10, y: 10 }));
    await next(ws);
    expect(h.inputs).toEqual([]);
    ws.close();
  });
});

describe('프레임 검문', () => {
  it('s2c 전용 메시지를 클라가 보내면 끊는다 — 스스로 END 를 자칭할 수 없다', async () => {
    const ws = await open(h.url);
    ws.send(frame('AUTH', { token: 'good' }));
    await next(ws);
    ws.send(JSON.stringify({
      t: 'END', seq: 2,
      d: { result: 'win', myFound: 5, opponentFound: 0, score: 9999, coinDelta: 9999, expDelta: 9999 },
    }));
    const reply = await next(ws);
    expect(reply.t).toBe('ERROR');
    expect(await closedWith(ws)).toBeGreaterThan(0);
  });

  it('JSON 이 아니면 끊는다', async () => {
    const ws = await open(h.url);
    ws.send('{{{');
    await next(ws);
    expect(await closedWith(ws)).toBeGreaterThan(0);
  });

  it('t 가 constructor 여도 죽지 않고 ERROR 를 준다 — 프로토타입 우회', async () => {
    const ws = await open(h.url);
    ws.send(JSON.stringify({ t: 'constructor', seq: 1, d: {} }));
    const reply = await next(ws);
    expect(reply.t).toBe('ERROR');
    // 서버가 살아 있어야 한다. 다음 연결이 정상 동작하는지로 확인한다.
    const second = await open(h.url);
    second.send(frame('AUTH', { token: 'good' }));
    expect((await next(second)).t).not.toBe('ERROR');
    second.close();
  });

  it('선언되지 않은 필드가 섞이면 끊는다', async () => {
    const ws = await open(h.url);
    ws.send(frame('AUTH', { token: 'good', admin: true }));
    const reply = await next(ws);
    expect(reply.t).toBe('ERROR');
    expect(await closedWith(ws)).toBeGreaterThan(0);
  });
});

describe('매치 이벤트 전달', () => {
  it('인증된 TAP 이 좌표 그대로 넘어간다', async () => {
    const ws = await open(h.url);
    ws.send(frame('AUTH', { token: 'good' }));
    await next(ws);
    ws.send(frame('TAP', { x: 231, y: 402 }));
    await new Promise((r) => setTimeout(r, 50));

    expect(h.inputs).toHaveLength(1);
    expect(h.inputs[0]!.input).toEqual({ kind: 'TAP', x: 231, y: 402 });
    // 슬롯은 게이트웨이가 붙이지 않는다. 붙이면 매칭 전 연결이 조용히
    // p1 로 동작하고, p2 의 탭이 p1 의 점수가 되는 버그가 생긴다.
    expect(h.inputs[0]!.input).not.toHaveProperty('slot');
    ws.close();
  });

  it('QUEUE_JOIN 이 모드와 함께 넘어간다', async () => {
    const ws = await open(h.url);
    ws.send(frame('AUTH', { token: 'good' }));
    await next(ws);
    ws.send(frame('QUEUE_JOIN', { mode: 'casual' }));
    await new Promise((r) => setTimeout(r, 50));
    expect(h.joins).toEqual(['casual']);
    ws.close();
  });

  it('연결이 닫히면 onClose 가 불린다 — 매치 이탈 처리의 근거', async () => {
    const ws = await open(h.url);
    ws.send(frame('AUTH', { token: 'good' }));
    await next(ws);
    ws.close();
    await new Promise((r) => setTimeout(r, 100));
    expect(h.closed).toBe(1);
  });

  it('서버 송신의 seq 는 연결마다 1 부터 증가한다', async () => {
    const ws = await open(h.url);
    ws.send(frame('AUTH', { token: 'good' }));
    const first = await next(ws);
    expect(first).toMatchObject({ seq: 1 });
    ws.close();
  });
});
```

- [ ] **Step 2: 실패 확인**

```bash
npm install --workspace server ws
npm install --workspace server -D @types/ws
```

Run: `npx vitest run server/src/ws/gateway.test.ts`
Expected: FAIL — `Cannot find module './gateway.js'`

- [ ] **Step 3: 구현**

`server/src/ws/session.ts`:

```typescript
import type { PlayerSlot } from '../battle/state.js';
import type { Principal } from '../identity/types.js';

/**
 * 연결 하나의 상태. 매치에 들어가면 matchId·slot 이 채워지고,
 * 끝나거나 나가면 다시 null 이 된다.
 */
export interface ConnSession {
  readonly id: string;
  principal: Principal | null;
  matchId: string | null;
  slot: PlayerSlot | null;
  /** 서버가 보내는 프레임의 순번. 클라가 보낸 seq 는 쓰지 않는다. */
  seq: number;
}

let counter = 0;

export function createConnSession(): ConnSession {
  counter += 1;
  return { id: `c${counter}`, principal: null, matchId: null, slot: null, seq: 0 };
}

/**
 * 정산·난입이 "이 사람" 을 가리킬 때 쓰는 키.
 * 계정은 accountId, 게스트는 guestId 다 — Principal 의 두 변종이 필드 이름이
 * 다르므로 한 곳에서 좁힌다.
 */
export function principalKey(principal: Principal): string {
  return principal.kind === 'account' ? principal.accountId : principal.guestId;
}
```

`server/src/ws/gateway.ts`:

```typescript
import type { Server } from 'node:http';
import { WebSocketServer, type WebSocket } from 'ws';
import {
  decodeEnvelope, encodeEnvelope, ProtocolError, type MessageType,
} from '@findit/protocol';
import type { Clock } from '../platform/clock.js';
import type { Principal } from '../identity/types.js';
import { createConnSession, type ConnSession } from './session.js';

/** 프로토콜 위반으로 끊을 때 쓰는 코드. 4000~4999 는 애플리케이션 정의 구간이다. */
const CLOSE_PROTOCOL = 4400;
const CLOSE_UNAUTHORIZED = 4401;

/**
 * 게이트웨이가 위로 넘기는 입력. **슬롯이 없다.**
 * 어떤 연결이 p1 인지 p2 인지는 매칭이 정하고, 배선층이 conn.session.slot 으로
 * 채워 BattleEvent 를 만든다.
 */
export type GameInput =
  | { kind: 'READY' }
  | { kind: 'TAP'; x: number; y: number }
  | { kind: 'SKILL'; skillId: string }
  | { kind: 'LEAVE' };

export interface Conn {
  readonly session: ConnSession;
  send(type: MessageType, payload: Record<string, unknown>): void;
  close(code: string, message: string): void;
}

export interface GatewayDeps {
  clock: Clock;
  log: { error(message: string, fields?: Record<string, unknown>): void };
  verify(token: string): Promise<Principal | null>;
  onJoin(conn: Conn, mode: string): Promise<void>;
  onLeaveQueue(conn: Conn): Promise<void>;
  onGameInput(conn: Conn, input: GameInput): void;
  onClose(conn: Conn): void;
}

export function attachGateway(
  server: Server,
  deps: GatewayDeps,
): { close(): Promise<void>; readonly connections: number } {
  const wss = new WebSocketServer({ server });
  const conns = new Set<Conn>();

  wss.on('connection', (socket: WebSocket) => {
    const session = createConnSession();

    const conn: Conn = {
      session,
      send(type, payload) {
        if (socket.readyState !== socket.OPEN) return;
        session.seq += 1;
        socket.send(encodeEnvelope(type, session.seq, payload));
      },
      close(code, message) {
        // 끊기 전에 이유를 알려준다. 정상 클라의 버그를 디버깅할 수 있어야 한다.
        conn.send('ERROR', { code, message });
        socket.close(code === 'unauthorized' ? CLOSE_UNAUTHORIZED : CLOSE_PROTOCOL, code);
      },
    };
    conns.add(conn);

    socket.on('message', (raw: unknown) => {
      // ws 는 Buffer 를 준다. 비동기 처리의 rejection 이 아무 데도 닿지 않으면
      // 연결이 조용히 멈추므로, 여기서 잡아 로그를 남기고 끊는다.
      void handle(String(raw)).catch((err: unknown) => {
        deps.log.error('게이트웨이 처리 실패', {
          conn: session.id, err: err instanceof Error ? err.message : String(err),
        });
        conn.close('internal', '처리 중 오류');
      });
    });

    socket.on('close', () => {
      conns.delete(conn);
      deps.onClose(conn);
    });

    // ws 는 소켓 오류에 리스너가 없으면 프로세스 수준 예외를 낸다.
    socket.on('error', (err: Error) => {
      deps.log.error('소켓 오류', { conn: session.id, err: err.message });
    });

    async function handle(raw: string): Promise<void> {
      let envelope;
      try {
        // 방향까지 검사한다. 이게 없으면 클라가 END 를 자칭해 보낼 수 있다.
        envelope = decodeEnvelope(raw, 'c2s');
      } catch (err) {
        if (err instanceof ProtocolError) {
          conn.close('bad_frame', err.message);
          return;
        }
        throw err;
      }

      const { t, d } = envelope;

      if (t === 'AUTH') {
        const principal = await deps.verify(String(d['token'] ?? ''));
        if (principal === null) {
          // 토큰이 없는 경우와 틀린 경우의 응답이 같아야 한다.
          conn.close('unauthorized', '인증 실패');
          return;
        }
        session.principal = principal;
        conn.send('QUEUED', { position: 0 });
        return;
      }

      // **AUTH 가 먼저다.** 여기서 돌려보내는 것이 아니라 아무것도 하지 않고
      // 끊는 것이 중요하다 — 아래 분기 어느 것도 실행되면 안 된다.
      if (session.principal === null) {
        conn.close('unauthorized', 'AUTH 가 먼저다');
        return;
      }

      switch (t) {
        case 'QUEUE_JOIN':
          await deps.onJoin(conn, String(d['mode'] ?? 'casual'));
          return;
        case 'QUEUE_LEAVE':
          await deps.onLeaveQueue(conn);
          return;
        case 'READY':
          deps.onGameInput(conn, { kind: 'READY' });
          return;
        case 'TAP':
          // 값의 타입은 decodeEnvelope 가 이미 스키마대로 검사했다.
          deps.onGameInput(conn, { kind: 'TAP', x: d['x'] as number, y: d['y'] as number });
          return;
        case 'SKILL':
          deps.onGameInput(conn, { kind: 'SKILL', skillId: d['skillId'] as string });
          return;
        case 'LEAVE':
          deps.onGameInput(conn, { kind: 'LEAVE' });
          return;
        default:
          conn.close('bad_frame', `처리할 수 없는 메시지: ${t}`);
      }
    }
  });

  return {
    get connections() { return conns.size; },
    async close(): Promise<void> {
      for (const conn of conns) conn.close('shutdown', '서버 종료');
      await new Promise<void>((resolve) => wss.close(() => resolve()));
    },
  };
}
```

- [ ] **Step 4: 통과 확인**

Run: `npx vitest run server/src/ws/ && npm run typecheck`
Expected: PASS — 13 tests.

**변이로 확인할 것:**

| 변이 | 깨지는 테스트 |
|---|---|
| `decodeEnvelope` 의 `'c2s'` 인자 제거 | `s2c 전용 메시지를 클라가 보내면 끊는다` |
| `session.principal === null` 가드 제거 | `AUTH 전에 온 QUEUE_JOIN 은 처리되지 않는다` · `AUTH 전에 온 TAP 은…` |
| `onGameInput` 에 `slot: 'p1'` 을 함께 실어 보냄 | `인증된 TAP 이 좌표 그대로 넘어간다` |

- [ ] **Step 5: 커밋**

```bash
git add server/src/ws/ server/package.json package-lock.json
git commit -m "$(cat <<'EOF'
feat(server): WS 게이트웨이 — 연결 수명과 프레임 검문

게이트웨이는 게임 규칙을 하나도 모른다. 프레임을 BattleEvent 로 번역해
넘기기만 한다. 대신 문 앞에서 셋을 지킨다.

decodeEnvelope 에 'c2s' 를 넘겨 방향까지 검사한다. 이게 없으면 클라가 END 를
자칭해 보내 스스로 결과를 조작할 수 있다. Plan 1 의 검증기가 이미 그 인자를
받도록 만들어져 있었는데 쓰는 곳이 없었다.

AUTH 가 먼저다. 인증되지 않은 연결은 AUTH 외의 어떤 분기도 실행하지 않는다.
상태 코드만 보는 테스트로는 이 계약을 지킬 수 없어서, onJoin·onMatchEvent
호출 기록이 비어 있는지를 함께 본다.

ProtocolError 는 연결을 끊는다. 다만 끊기 전에 ERROR 를 보낸다 — 정상 클라의
버그를 디버깅할 수 있어야 한다.

게이트웨이는 슬롯을 모른다. 어떤 연결이 p1 인지 p2 인지는 매칭이 정하므로,
위로 넘기는 것은 BattleEvent 가 아니라 슬롯 없는 GameInput 이다. 여기서
자리표시자로 p1 을 쓰면 슬롯 채우기를 잊은 경로가 조용히 p1 로 동작하고,
p2 의 탭이 p1 의 점수가 된다.

클라가 보낸 seq 는 검증만 하고 버린다. 순서 보장은 TCP 가 한다. 클라의 seq 를
신뢰해 재정렬하면 그 자체가 조작 벡터가 된다. 서버 송신 seq 는 연결마다 따로
1 부터 센다.

소켓 error 리스너를 반드시 붙인다. ws 는 리스너가 없으면 프로세스 수준
예외를 낸다 — 연결 하나의 오류로 서버가 죽는다.

EOF
)"
```

---

### Task 4: 매칭 큐 — 5 초 뒤 AI 전환

**Files:**
- Create: `server/src/match/queue.ts`
- Test: `server/src/match/queue.test.ts`

**Interfaces:**
- Consumes: Plan 3 `Cache`, `Clock`; Task 1 `Scheduler`, `TimerHandle`
- Produces:
  - `const AI_TRANSITION_MS = 5_000`
  - `interface Waiting { key: string; name: string; level: number; conn: unknown }`
  - `interface MatchmakerPorts { clock: Clock; scheduler: Scheduler; cache: Cache; queueKey: string; aiTransitionMs?: number; startMatch(a: Waiting, b: Waiting | null): Promise<string> }`
  - `class Matchmaker { join(w: Waiting): Promise<void>; leave(key: string): Promise<void>; waitingCount(): Promise<number> }`
  - `Cache` 에 추가: `listPushRight` · `listPopLeft` · `listRemove` · `listLength`

> **매치를 만드는 것은 큐의 일이 아니다.** `startMatch` 를 포트로 받는다. 큐는 "누가 누구와 붙는가" 만 정하고, 퍼즐 배정·러너 생성·Redis 인덱스 기록은 Task 7 의 배선층이 한다. 그래야 큐를 Redis 하나만으로 테스트할 수 있다.

**AI 전환 5 초는 원작 수치다.** `SINGLETIME = 100` 프레임 ÷ 20 프레임/초 = 5 초 (조사 기록 참조). 상수로 박되 포트로 주입받아 테스트가 줄일 수 있게 한다.

**Review Focus 4 — 동시 진입.** 두 사람이 같은 순간에 `QUEUE_JOIN` 하면 이런 순서가 가능하다.

```
A: LPOP → nil        (큐가 비었다)
B: LPOP → nil        (B 도 비었다고 본다)
A: RPUSH A
B: RPUSH B
→ 5 초 뒤 둘 다 AI 와 붙는다. 사람이 둘 있는데 아무도 못 만난다.
```

`LPOP` 자체는 원자적이지만 **`LPOP` 과 `RPUSH` 사이에 `await` 가 있다.** Node 는 단일 스레드라도 그 지점에서 다른 요청이 끼어든다. P0 는 서버가 한 프로세스이므로 **프로세스 안에서 join 을 직렬화**해 막는다. 다중 인스턴스에서는 이것으로 부족하다 — Lua 스크립트나 `BLMOVE` 가 필요하고, 그건 P1 의 문제다. **그 한계를 코드 주석에 남긴다.**

**우선순위는 셋이다.**

1. 큐에 사람이 기다리고 있으면 → 그 사람과 붙인다.
2. 아니면, **AI 와 붙고 있는 사람이 있으면 → 난입**한다 (Task 5).
3. 아니면 → 큐에 들어가 5 초 뒤 AI 와 붙는다.

Task 4 는 1 과 3 을 만들고, 2 는 Task 5 가 끼워 넣는다.

- [ ] **Step 1: 실패하는 테스트 작성**

`server/src/match/queue.test.ts`:

```typescript
import { afterAll, beforeAll, describe, expect, it } from 'vitest';
import { TestClock } from '../platform/clock.js';
import { createCache, type Cache } from '../platform/redis.js';
import { Matchmaker, AI_TRANSITION_MS, type Waiting } from './queue.js';

/** Task 1 의 테스트와 같은 가짜 스케줄러. 실시간을 기다리지 않는다. */
class TestScheduler {
  private seq = 0;
  private readonly jobs = new Map<number, { at: number; fn: () => void }>();
  at(time: number, fn: () => void): number { const id = ++this.seq; this.jobs.set(id, { at: time, fn }); return id; }
  cancel(h: number): void { this.jobs.delete(h); }
  get pending(): number { return this.jobs.size; }
  async runUntil(clock: TestClock, to: number): Promise<void> {
    for (let guard = 0; guard < 1_000; guard += 1) {
      const due = [...this.jobs.entries()].filter(([, j]) => j.at <= to).sort((a, b) => a[1].at - b[1].at)[0];
      if (!due) break;
      const [id, job] = due;
      this.jobs.delete(id);
      clock.set(Math.max(clock.now(), job.at));
      job.fn();
      // 전환 콜백이 비동기라 마이크로태스크를 비워 준다.
      await Promise.resolve();
      await Promise.resolve();
    }
    clock.set(to);
  }
}

it('AI 전환 시각이 원작 수치다', () => {
  // SINGLETIME=100 프레임 ÷ 20 프레임/초 = 5 초 (GameView.java:1240, 3553-3558)
  expect(AI_TRANSITION_MS).toBe(5_000);
});

const url = process.env['REDIS_URL'];
const suite = url ? describe : describe.skip;

suite('매칭 큐', () => {
  let cache: Cache;
  let n = 0;
  const player = (name: string): Waiting => ({ key: `k-${name}`, name, level: 10, conn: null });

  beforeAll(() => { cache = createCache(url!, () => {}); });
  afterAll(async () => { await cache.close(); });

  function harness(opts: { aiMs?: number } = {}) {
    n += 1;
    const clock = new TestClock(1_000_000);
    const scheduler = new TestScheduler();
    const started: { a: string; b: string | null }[] = [];
    const maker = new Matchmaker({
      clock, scheduler, cache,
      queueKey: `findit:test:queue:${process.pid}:${n}`,
      aiTransitionMs: opts.aiMs ?? AI_TRANSITION_MS,
      startMatch: async (a, b) => {
        started.push({ a: a.name, b: b?.name ?? null });
        return `match-${started.length}`;
      },
    });
    return { clock, scheduler, started, maker };
    // queueKey 는 테스트마다 다르다. 같은 Redis 를 쓰는 병렬 실행에서
    // 큐가 섞이면 "혼자 들어갔는데 누군가와 붙는" 유령 실패가 난다.
  }

  it('혼자 들어가면 대기한다 — 즉시 AI 가 되지 않는다', async () => {
    const h = harness();
    await h.maker.join(player('A'));
    expect(h.started).toEqual([]);
    expect(await h.maker.waitingCount()).toBe(1);
  });

  it('둘째가 들어오면 즉시 붙는다', async () => {
    const h = harness();
    await h.maker.join(player('A'));
    await h.maker.join(player('B'));

    expect(h.started).toEqual([{ a: 'B', b: 'A' }]);
    // 붙은 뒤 큐는 비어야 한다. 남으면 다음 사람이 유령과 매칭된다.
    expect(await h.maker.waitingCount()).toBe(0);
  });

  it('붙은 뒤에는 AI 전환 타이머가 남지 않는다', async () => {
    const h = harness();
    await h.maker.join(player('A'));
    await h.maker.join(player('B'));
    expect(h.scheduler.pending).toBe(0);
  });

  it('5초가 지나면 AI 와 붙는다', async () => {
    const h = harness();
    await h.maker.join(player('A'));
    await h.scheduler.runUntil(h.clock, h.clock.now() + AI_TRANSITION_MS + 1);

    expect(h.started).toEqual([{ a: 'A', b: null }]);
    expect(await h.maker.waitingCount()).toBe(0);
  });

  it('4.9초에는 아직 AI 가 아니다 — 경계', async () => {
    const h = harness();
    await h.maker.join(player('A'));
    await h.scheduler.runUntil(h.clock, h.clock.now() + AI_TRANSITION_MS - 100);
    expect(h.started).toEqual([]);
  });

  it('leave 하면 AI 전환도 취소된다', async () => {
    const h = harness();
    const a = player('A');
    await h.maker.join(a);
    await h.maker.leave(a.key);
    await h.scheduler.runUntil(h.clock, h.clock.now() + AI_TRANSITION_MS + 1);

    expect(h.started).toEqual([]);
    expect(await h.maker.waitingCount()).toBe(0);
  });

  it('동시에 들어온 둘이 서로를 만난다 — 둘 다 AI 로 빠지면 안 된다', async () => {
    const h = harness();
    // await 를 끼우지 않고 동시에 부른다. 직렬화가 없으면 둘 다 큐가 비었다고
    // 보고 각자 대기에 들어가, 5 초 뒤 각자 AI 와 붙는다.
    await Promise.all([h.maker.join(player('A')), h.maker.join(player('B'))]);

    expect(h.started).toHaveLength(1);
    expect(h.started[0]!.b).not.toBeNull();
    expect(await h.maker.waitingCount()).toBe(0);
  });

  it('같은 사람이 두 번 들어가도 자기 자신과 붙지 않는다', async () => {
    const h = harness();
    const a = player('A');
    await h.maker.join(a);
    await h.maker.join(a);

    expect(h.started).toEqual([]);
    expect(await h.maker.waitingCount()).toBe(1);
  });
});
```

- [ ] **Step 2: 실패 확인**

Run: `npx vitest run server/src/match/queue.test.ts`
Expected: FAIL — `Cannot find module './queue.js'`

- [ ] **Step 3: 구현**

`server/src/match/queue.ts`:

```typescript
import type { Clock } from '../platform/clock.js';
import type { Cache } from '../platform/redis.js';
import type { Scheduler, TimerHandle } from './runner.js';

/**
 * 큐 진입 후 AI 로 전환하기까지의 시간.
 *
 * 원작 수치다. GameView.java:1240 의 SINGLETIME = 100 은 프레임 카운터이고,
 * 같은 루프가 mGameTimeCount > 19 마다 mGameTime 을 1 초 올린다
 * (GameView.java:3553-3558). 즉 20 프레임 = 1 초이므로 100 프레임 = 5 초다.
 * 스펙 §3.6 의 "5 초" 는 재해석이 아니라 원작 그대로다.
 */
export const AI_TRANSITION_MS = 5_000;

export interface Waiting {
  /** 이 사람을 가리키는 안정된 키 — 계정이면 accountId, 게스트면 guestId. */
  key: string;
  name: string;
  level: number;
  /** 배선층이 넣는 연결 핸들. 큐는 들여다보지 않는다. */
  conn: unknown;
}

export interface MatchmakerPorts {
  clock: Clock;
  scheduler: Scheduler;
  cache: Cache;
  queueKey: string;
  aiTransitionMs?: number;
  /** b 가 null 이면 AI 전. 매치 id 를 돌려준다. */
  startMatch(a: Waiting, b: Waiting | null): Promise<string>;
}

export class Matchmaker {
  private readonly aiMs: number;
  private readonly timers = new Map<string, TimerHandle>();
  /** key → 대기자. Redis 에는 키만 넣고 본문은 여기 둔다. */
  private readonly waiting = new Map<string, Waiting>();
  /** join 직렬화용 꼬리. 아래 주석 참조. */
  private tail: Promise<void> = Promise.resolve();

  constructor(private readonly ports: MatchmakerPorts) {
    this.aiMs = ports.aiTransitionMs ?? AI_TRANSITION_MS;
  }

  /**
   * 큐 진입.
   *
   * **직렬화가 필요한 이유.** LPOP 자체는 원자적이지만 LPOP 과 RPUSH 사이에
   * await 가 있다. 두 사람이 같은 순간에 들어오면 둘 다 "큐가 비었다" 를 보고
   * 각자 대기에 들어가, 5 초 뒤 각자 AI 와 붙는다 — 사람이 둘인데 아무도
   * 만나지 못한다.
   *
   * P0 는 서버가 한 프로세스라 프로세스 안에서 직렬화하면 충분하다.
   * **다중 인스턴스에서는 이것으로 막지 못한다** — Lua 스크립트나 BLMOVE 가
   * 필요하고, 그건 P1 의 문제다.
   */
  async join(w: Waiting): Promise<void> {
    const run = this.tail.then(() => this.joinLocked(w));
    // 앞선 작업이 실패해도 꼬리가 끊기지 않게 한다.
    this.tail = run.then(() => undefined, () => undefined);
    return run;
  }

  private async joinLocked(w: Waiting): Promise<void> {
    // 이미 대기 중이면 아무 일도 하지 않는다. 자기 자신과 붙는 것을 막는다.
    if (this.waiting.has(w.key)) return;

    const opponentKey = await this.ports.cache.listPopLeft(this.ports.queueKey);
    if (opponentKey !== null) {
      // 위의 has 가드를 통과했으므로 opponentKey 가 w.key 와 같다면 그것은
      // 본문 없이 키만 남은 유령이다 — 아래 undefined 분기가 그대로 처리한다.
      // 따로 opponentKey !== w.key 를 검사할 필요가 없다.
      const opponent = this.waiting.get(opponentKey);
      if (opponent !== undefined) {
        this.forget(opponentKey);
        await this.ports.startMatch(w, opponent);
        return;
      }
      // 큐에 키만 남고 본문이 사라졌다 (연결이 끊겼다). 버리고 계속한다.
    }

    this.waiting.set(w.key, w);
    await this.ports.cache.listPushRight(this.ports.queueKey, w.key);

    const at = this.ports.clock.now() + this.aiMs;
    this.timers.set(w.key, this.ports.scheduler.at(at, () => {
      void this.toAi(w.key);
    }));
  }

  async leave(key: string): Promise<void> {
    if (!this.waiting.has(key)) return;
    this.forget(key);
    await this.ports.cache.listRemove(this.ports.queueKey, key);
  }

  async waitingCount(): Promise<number> {
    return this.ports.cache.listLength(this.ports.queueKey);
  }

  private async toAi(key: string): Promise<void> {
    const w = this.waiting.get(key);
    this.timers.delete(key);
    if (w === undefined) return;

    this.waiting.delete(key);
    await this.ports.cache.listRemove(this.ports.queueKey, key);
    await this.ports.startMatch(w, null);
  }

  private forget(key: string): void {
    this.waiting.delete(key);
    const handle = this.timers.get(key);
    if (handle !== undefined) {
      this.ports.scheduler.cancel(handle);
      this.timers.delete(key);
    }
  }
}
```

`Cache` 포트에 리스트 연산 넷을 추가한다 (`server/src/platform/redis.ts`):

```typescript
export interface Cache {
  get(key: string): Promise<string | null>;
  setEx(key: string, value: string, ttlMs: number): Promise<void>;
  del(key: string): Promise<void>;
  /** 큐용. FIFO 를 만들려면 오른쪽에 넣고 왼쪽에서 뺀다. */
  listPushRight(key: string, value: string): Promise<void>;
  listPopLeft(key: string): Promise<string | null>;
  listRemove(key: string, value: string): Promise<void>;
  listLength(key: string): Promise<number>;
  ping(timeoutMs?: number): Promise<void>;
  close(): Promise<void>;
}
```

구현은 `createCache` 안에 넷을 더한다:

```typescript
    async listPushRight(key: string, value: string): Promise<void> {
      await client.rpush(key, value);
    },

    async listPopLeft(key: string): Promise<string | null> {
      return client.lpop(key);
    },

    async listRemove(key: string, value: string): Promise<void> {
      // count 0 = 일치하는 값을 전부 지운다. 중복 진입이 있었어도 깨끗이 빠진다.
      await client.lrem(key, 0, value);
    },

    async listLength(key: string): Promise<number> {
      return client.llen(key);
    },
```

> Task 2 의 테스트가 만든 `Cache` 스텁(`counting`)에도 이 넷을 더해야 한다. 안 그러면 `npm run typecheck` 가 깨진다.

- [ ] **Step 4: 통과 확인**

Run: `REDIS_URL=redis://localhost:6379 npx vitest run server/src/match/ && npm run typecheck`
Expected: PASS — Task 1 의 11 + Task 2 의 6 + 이번 9 = 26 tests.

**변이로 확인할 것:**

| 변이 | 깨지는 테스트 |
|---|---|
| `join` 의 직렬화 제거 (`joinLocked` 를 직접 호출) | `동시에 들어온 둘이 서로를 만난다` |
| `forget` 에서 `scheduler.cancel` 제거 | `leave 하면 AI 전환도 취소된다` · `붙은 뒤에는 AI 전환 타이머가 남지 않는다` |
| `joinLocked` 첫 줄의 `waiting.has` 가드 제거 | `같은 사람이 두 번 들어가도 자기 자신과 붙지 않는다` |

- [ ] **Step 5: 커밋**

```bash
git add server/src/match/queue.ts server/src/match/queue.test.ts server/src/platform/redis.ts server/src/match/index.test.ts
git commit -m "$(cat <<'EOF'
feat(server): 매칭 큐 + 5초 AI 전환

5 초는 원작 수치다. GameView.java:1240 의 SINGLETIME = 100 은 프레임
카운터이고, 같은 루프가 mGameTimeCount > 19 마다 1 초를 올린다
(GameView.java:3553-3558). 20 프레임 = 1 초이므로 100 프레임 = 정확히 5 초.
스펙 §3.6 의 "5 초" 는 재해석이 아니라 그대로 옮긴 값이다.

v1 서버에는 큐가 없었다 (legacy/server/src/socket/handlers.js, 248 줄).
방 기반이었고 AI 전환은 클라이언트가 혼자 했다. 2026 은 서버 권위이므로
큐로 옮긴다 (스펙 §3.6 "실행 위치: 서버").

join 을 프로세스 안에서 직렬화한다. LPOP 자체는 원자적이지만 LPOP 과 RPUSH
사이에 await 가 있어서, 두 사람이 같은 순간에 들어오면 둘 다 큐가 비었다고
보고 각자 5 초 뒤 AI 와 붙는다 — 사람이 둘인데 아무도 만나지 못한다.
다중 인스턴스에서는 이것으로 부족하고 Lua 나 BLMOVE 가 필요하다. P1 의
문제이며 주석으로 남겼다.

Cache 포트에 리스트 연산 넷을 더한다. 큐는 FIFO 여야 하므로 오른쪽에 넣고
왼쪽에서 뺀다. listRemove 는 count 0 으로 일치하는 값을 전부 지운다.

EOF
)"
```

---

### Task 5: 난입 — 진행 중인 AI 판을 가로챈다

**Files:**
- Modify: `server/src/match/queue.ts` (`onIntrude` 포트 추가)
- Test: `server/src/match/queue.test.ts` (난입 describe 추가)

**Interfaces:**
- Consumes: Task 1 `MatchRunner.abort()`, `MatchRegistry.findAiMatchWith`
- Produces:
  - `MatchmakerPorts` 에 추가: `findIntrudable(): Waiting | null`

**원작 동작 셋** (`GameActivity.java:611-616`, 조사 기록 참조).

1. 진행 중인 AI 판을 **즉시 끝낸다** (`mGameTime = 40` = 종료 임계값).
2. 난입자가 **그 자리에서 상대가 된다** — 별도 매칭 과정이 없다.
3. **정산이 일어나지 않는다** — `mResultPass = true` 로 결과 화면을 건너뛰는데, 코인·경험치 전송이 결과 화면 애니메이션 안에서만 실행된다(`GameView.java:3257-3271`). 중단된 AI 판은 코인도 경험치도 0 이다.

즉 **"없던 일이 된다".** Task 1 의 `abort()` 가 정확히 이것이다 — `END` 도 `onEnd` 도 없이 자원만 회수한다.

**클라이언트에 무엇을 보내는가.** 프로토콜(스펙 §8)에 "중단" 메시지가 없다. 새로 만들지 않고 **`MATCH_FOUND` 가 진행 중인 매치를 덮어쓴다**는 규칙을 둔다. 원작이 결과 화면을 건너뛰고 배틀룸으로 바로 가는 것과 같은 모양이고, 프로토콜을 늘리지 않는다.

> **이 규칙은 클라이언트 계약이다.** Plan 5 의 Flutter 클라는 `MATCH_FOUND` 를 받으면 **현재 매치 상태를 무조건 버리고** 새 매치로 전환해야 한다. 여기 적어 두지 않으면 클라가 "이미 매치 중인데 MATCH_FOUND 가 왔다" 를 오류로 처리하게 된다.

**우선순위에서 난입은 두 번째다.** 큐에 사람이 기다리면 그쪽이 먼저다 — 기다리던 사람을 계속 기다리게 하면서 남의 AI 판을 깨는 것은 불공정하다.

- [ ] **Step 1: 실패하는 테스트 작성**

`server/src/match/queue.test.ts` 의 `suite('매칭 큐', ...)` 안에 추가한다. `harness` 를 난입 포트까지 받도록 넓힌다:

```typescript
  function harness(opts: { aiMs?: number; intrudable?: () => Waiting | null } = {}) {
    n += 1;
    const clock = new TestClock(1_000_000);
    const scheduler = new TestScheduler();
    const started: { a: string; b: string | null }[] = [];
    const intruded: string[] = [];
    const maker = new Matchmaker({
      clock, scheduler, cache,
      queueKey: `findit:test:queue:${process.pid}:${n}`,
      aiTransitionMs: opts.aiMs ?? AI_TRANSITION_MS,
      findIntrudable: opts.intrudable ?? (() => null),
      startMatch: async (a, b) => {
        started.push({ a: a.name, b: b?.name ?? null });
        return `match-${started.length}`;
      },
      abortMatch: (victimKey: string) => { intruded.push(victimKey); },
    });
    return { clock, scheduler, started, intruded, maker };
  }
```

```typescript
describe('난입 — 원작 GameActivity.java:611-616', () => {
  const victim: Waiting = { key: 'k-V', name: 'V', level: 10, conn: null };

  it('AI 와 붙고 있는 사람이 있으면 난입해서 그 사람과 붙는다', async () => {
    const h = harness({ intrudable: () => victim });
    await h.maker.join(player('I'));

    expect(h.started).toEqual([{ a: 'I', b: 'V' }]);
    // 진행 중이던 AI 판은 중단돼야 한다.
    expect(h.intruded).toEqual(['k-V']);
  });

  it('난입자는 큐에서 기다리지 않는다', async () => {
    const h = harness({ intrudable: () => victim });
    await h.maker.join(player('I'));
    expect(await h.maker.waitingCount()).toBe(0);
    // 난입했는데 AI 전환 타이머가 남으면 5 초 뒤 또 매치가 생긴다.
    expect(h.scheduler.pending).toBe(0);
  });

  it('큐에 기다리는 사람이 있으면 난입보다 그쪽이 먼저다', async () => {
    const h = harness({ intrudable: () => victim });
    await h.maker.join(player('A'));   // A 가 먼저 기다린다
    await h.maker.join(player('B'));

    // 기다리던 A 를 계속 기다리게 하면서 남의 AI 판을 깨면 안 된다.
    expect(h.started).toEqual([{ a: 'B', b: 'A' }]);
    expect(h.intruded).toEqual([]);
  });

  it('난입 대상이 없으면 평소대로 큐에 들어간다', async () => {
    const h = harness({ intrudable: () => null });
    await h.maker.join(player('A'));
    expect(h.started).toEqual([]);
    expect(await h.maker.waitingCount()).toBe(1);
  });
});
```

- [ ] **Step 2: 실패 확인**

Run: `REDIS_URL=redis://localhost:6379 npx vitest run server/src/match/queue.test.ts`
Expected: FAIL — `findIntrudable` 이 `MatchmakerPorts` 에 없다는 타입 오류, 그리고 난입 테스트 4개 실패.

- [ ] **Step 3: 구현**

`server/src/match/queue.ts` 의 `MatchmakerPorts` 에 둘을 더한다:

```typescript
export interface MatchmakerPorts {
  clock: Clock;
  scheduler: Scheduler;
  cache: Cache;
  queueKey: string;
  aiTransitionMs?: number;
  startMatch(a: Waiting, b: Waiting | null): Promise<string>;
  /** AI 와 붙고 있어 난입할 수 있는 사람. 없으면 null. */
  findIntrudable(): Waiting | null;
  /** 그 사람의 진행 중 AI 판을 정산 없이 버린다 (MatchRunner.abort). */
  abortMatch(victimKey: string): void;
}
```

`joinLocked` 의 큐 조회와 대기 등록 사이에 난입을 끼운다:

```typescript
  private async joinLocked(w: Waiting): Promise<void> {
    if (this.waiting.has(w.key)) return;

    // 1순위: 큐에서 기다리는 사람.
    const opponentKey = await this.ports.cache.listPopLeft(this.ports.queueKey);
    if (opponentKey !== null) {
      const opponent = this.waiting.get(opponentKey);
      if (opponent !== undefined) {
        this.forget(opponentKey);
        await this.ports.startMatch(w, opponent);
        return;
      }
    }

    // 2순위: AI 와 붙고 있는 사람에게 난입.
    //
    // 원작은 진행 중인 AI 판을 즉시 끝내고(mGameTime = 40), 난입자를 그 자리에서
    // 상대로 세우고(setRightCharacter), 결과 화면을 건너뛴다(mResultPass = true).
    // 코인·경험치 전송이 결과 화면 애니메이션 안에서만 일어나므로 중단된 판은
    // 코인도 경험치도 0 이다 (GameActivity.java:611-616, GameView.java:3257-3271).
    // 그래서 abort 는 END 도 onEnd 도 부르지 않는다 — "없던 일이 된다".
    const victim = this.ports.findIntrudable();
    if (victim !== null) {
      this.ports.abortMatch(victim.key);
      await this.ports.startMatch(w, victim);
      return;
    }

    // 3순위: 큐에서 대기, 5 초 뒤 AI.
    this.waiting.set(w.key, w);
    await this.ports.cache.listPushRight(this.ports.queueKey, w.key);

    const at = this.ports.clock.now() + this.aiMs;
    this.timers.set(w.key, this.ports.scheduler.at(at, () => {
      void this.toAi(w.key);
    }));
  }
```

- [ ] **Step 4: 통과 확인**

Run: `REDIS_URL=redis://localhost:6379 npx vitest run server/src/match/ && npm run typecheck`
Expected: PASS — 30 tests (26 + 난입 4).

**변이로 확인할 것:**

| 변이 | 깨지는 테스트 |
|---|---|
| 난입 블록을 큐 조회 **앞으로** 옮김 | `큐에 기다리는 사람이 있으면 난입보다 그쪽이 먼저다` |
| `abortMatch` 호출 제거 | `AI 와 붙고 있는 사람이 있으면 난입해서 그 사람과 붙는다` |
| 난입 후 `return` 을 빼고 대기 등록까지 진행 | `난입자는 큐에서 기다리지 않는다` |

- [ ] **Step 5: 커밋**

```bash
git add server/src/match/queue.ts server/src/match/queue.test.ts
git commit -m "$(cat <<'EOF'
feat(server): 난입 — 진행 중인 AI 판을 가로챈다

원작에 실제로 구현돼 있다 (GameActivity.java:611-616). 셋이 일어난다.
진행 중인 AI 판을 즉시 끝내고(mGameTime = 40 은 종료 임계값), 난입자가 그
자리에서 상대가 되고(setRightCharacter), 결과 화면을 건너뛴다
(mResultPass = true).

정산은 일어나지 않는다. 코인·경험치 전송이 결과 화면 애니메이션 안에서만
실행되기 때문이다 (GameView.java:3257-3271). 중단된 AI 판은 코인도 경험치도
0 이다. Task 1 의 abort() 가 정확히 이것 — END 도 onEnd 도 없이 자원만
회수한다.

우선순위에서 난입은 두 번째다. 큐에 기다리는 사람이 있으면 그쪽이 먼저다.
기다리던 사람을 계속 기다리게 하면서 남의 AI 판을 깨는 것은 불공정하다.

클라이언트 계약을 하나 정한다. 프로토콜에 "중단" 메시지가 없으므로
MATCH_FOUND 가 진행 중인 매치를 덮어쓴다. 원작이 결과 화면을 건너뛰고
배틀룸으로 바로 가는 것과 같은 모양이고 프로토콜을 늘리지 않는다. Plan 5 의
클라는 MATCH_FOUND 를 받으면 현재 매치를 무조건 버려야 한다.

EOF
)"
```

---

### Task 6: 정산 영속화 — 전적과 프로필

**Files:**
- Create: `server/src/match/settlement.ts`
- Test: `server/src/match/settlement.test.ts`

**Interfaces:**
- Consumes: Plan 3 `Db`; `levelForScore`; Plan 2 `BattleState`
- Produces:
  - `interface SettlementRow { accountId: string | null; matchId: string; puzzleId: string; result: 'win'|'lose'|'draw'; foundCount: number; opponentFound: number; scoreDelta: number; coinDelta: number; expDelta: number; vsAi: boolean }`
  - `function settlementsFor(state: BattleState, keys: { p1: SettlementKey; p2: SettlementKey }): SettlementRow[]`
  - `async function persistSettlement(db: Db, row: SettlementRow): Promise<{ level: number; leveledUp: boolean } | null>`

**원작에는 경험치가 없다.** 정산은 `score = mScore + calculateScore(...)`, `level = getLevel(score)`, `coin = coin + 1` 이고 **레벨이 오른 판에만 스킬 포인트가 1 오른다**(`GameView.java:3255-3271`). 레벨링 통화는 **점수**다. 그대로 따른다:

- `player_profile.total_score += score_delta`
- `level = levelForScore(total_score)` — `LEVEL_SCORE` 는 v1 의 `balance.js` 를 이식한 것이다
- **레벨이 올랐으면 `skill_points += 1`**
- `player_profile.coins += coin_delta`
- `exp_delta` 는 `match_history` 에 기록만 한다. 프로필에 자리가 없다 — 별도 축으로 만들지는 P1 이 정한다.

**Review Focus 1 — 게스트.** 게스트는 `account` 행이 없다. `match_history.account_id` 는 `account(id)` 를 참조하는 FK 이고(널 허용), `player_profile` 행도 없다. 그대로 INSERT 하면 **FK 위반으로 터지고 매치 종료 경로 전체가 죽는다.** 게스트는 `account_id = NULL` 로 전적만 남기고 프로필 갱신은 건너뛴다.

**Review Focus 2 — `bigint` 가 문자열로 온다.** `player_profile.total_score` 와 `coins` 는 `bigint` 다. node-postgres 는 `int8` 을 **문자열로** 준다 — `"100" + 5 === "1005"` 다. Plan 3 에서 같은 계열(다중 문장 질의가 배열을 돌려주는 것)에 한 번 당했다. **덧셈을 SQL 안에서 하고**, 읽어 온 값은 반드시 `Number(...)` 로 좁힌다. `LEVEL_SCORE` 의 최댓값은 약 6.6 억이라 `Number` 정밀도에 안전하다.

- [ ] **Step 1: 실패하는 테스트 작성**

`server/src/match/settlement.test.ts`:

```typescript
import { afterAll, beforeAll, describe, expect, it } from 'vitest';
import { readFileSync } from 'node:fs';
import { resolve } from 'node:path';
import { createDb, type Db } from '../platform/pg.js';
import { createAccount } from '../identity/repository.js';
import { persistSettlement, type SettlementRow } from './settlement.js';

const url = process.env['DATABASE_URL'];
const suite = url ? describe : describe.skip;

suite('정산 영속화', () => {
  let db: Db;
  let seq = 0;
  const email = (): string => `s${process.pid}-${++seq}@example.test`;
  const matchId = (): string => `m-${process.pid}-${++seq}`;

  beforeAll(async () => {
    db = createDb(url!);
    await db.query(readFileSync(resolve(import.meta.dirname, '../../sql/001_init.sql'), 'utf8'));
  });
  afterAll(async () => { await db.close(); });

  async function newAccount(): Promise<string> {
    const { accountId } = await createAccount(db, {
      email: email(), passwordHash: 'h', nickname: 'n', characterId: 0,
    });
    return accountId;
  }

  const row = (over: Partial<SettlementRow> = {}): SettlementRow => ({
    accountId: null, matchId: matchId(), puzzleId: 'a0001',
    result: 'win', foundCount: 3, opponentFound: 2,
    scoreDelta: 100, coinDelta: 5, expDelta: 30, vsAi: false,
    ...over,
  });

  it('전적을 남긴다', async () => {
    const accountId = await newAccount();
    const r = row({ accountId });
    await persistSettlement(db, r);

    const [saved] = await db.query<{ result: string; found_count: number; vs_ai: boolean }>(
      `SELECT result, found_count, vs_ai FROM match_history WHERE match_id = $1`, [r.matchId],
    );
    expect(saved).toMatchObject({ result: 'win', found_count: 3, vs_ai: false });
  });

  it('프로필의 점수와 코인이 더해진다 — bigint 를 문자열로 이어붙이면 안 된다', async () => {
    const accountId = await newAccount();
    await persistSettlement(db, row({ accountId, scoreDelta: 100, coinDelta: 5 }));
    await persistSettlement(db, row({ accountId, scoreDelta: 30, coinDelta: 2 }));

    const [p] = await db.query<{ total_score: string; coins: string }>(
      `SELECT total_score, coins FROM player_profile WHERE account_id = $1`, [accountId],
    );
    // 문자열 연결이었다면 "100" + "30" = "10030" 이 된다.
    expect(Number(p!.total_score)).toBe(130);
    expect(Number(p!.coins)).toBe(7);
  });

  it('레벨이 점수에서 다시 계산된다', async () => {
    const accountId = await newAccount();
    const out = await persistSettlement(db, row({ accountId, scoreDelta: 0 }));
    expect(out).not.toBeNull();
    expect(out!.level).toBe(1);
    expect(out!.leveledUp).toBe(false);
  });

  it('레벨이 오른 판에만 스킬 포인트가 1 오른다 — 원작 GameView.java:3265-3267', async () => {
    const accountId = await newAccount();

    // LEVEL_SCORE[1] 을 확실히 넘기는 점수. 레벨이 오른다.
    const up = await persistSettlement(db, row({ accountId, scoreDelta: 1_000_000 }));
    expect(up!.leveledUp).toBe(true);

    const [afterUp] = await db.query<{ skill_points: number }>(
      `SELECT skill_points FROM player_profile WHERE account_id = $1`, [accountId],
    );
    expect(afterUp!.skill_points).toBe(1);

    // 같은 레벨에 머무는 작은 점수. 포인트는 그대로여야 한다.
    const flat = await persistSettlement(db, row({ accountId, scoreDelta: 1 }));
    expect(flat!.leveledUp).toBe(false);

    const [afterFlat] = await db.query<{ skill_points: number }>(
      `SELECT skill_points FROM player_profile WHERE account_id = $1`, [accountId],
    );
    expect(afterFlat!.skill_points).toBe(1);
  });

  it('게스트는 전적만 남기고 프로필을 건드리지 않는다 — account 행이 없다', async () => {
    const r = row({ accountId: null });
    // FK 위반으로 던지면 매치 종료 경로 전체가 죽는다.
    await expect(persistSettlement(db, r)).resolves.toBeNull();

    const [saved] = await db.query<{ account_id: string | null }>(
      `SELECT account_id FROM match_history WHERE match_id = $1`, [r.matchId],
    );
    expect(saved!.account_id).toBeNull();
  });

  it('전적과 프로필이 한 트랜잭션이다', async () => {
    const accountId = await newAccount();
    // result 제약(win/lose/draw)을 어기면 전적 INSERT 가 터진다.
    // 프로필이 먼저 갱신되고 트랜잭션이 없으면 점수만 오른 채 남는다.
    await expect(persistSettlement(db, {
      ...row({ accountId }), result: 'victory' as 'win',
    })).rejects.toThrow();

    const [p] = await db.query<{ total_score: string }>(
      `SELECT total_score FROM player_profile WHERE account_id = $1`, [accountId],
    );
    expect(Number(p!.total_score)).toBe(0);
  });

  it('점수는 음수로 내려가지 않는다 — CHECK 제약을 어기면 정산이 죽는다', async () => {
    const accountId = await newAccount();
    const out = await persistSettlement(db, row({ accountId, scoreDelta: -500, coinDelta: 0 }));
    const [p] = await db.query<{ total_score: string }>(
      `SELECT total_score FROM player_profile WHERE account_id = $1`, [accountId],
    );
    expect(Number(p!.total_score)).toBe(0);
    expect(out!.level).toBe(1);
  });
});
```

- [ ] **Step 2: 실패 확인**

Run: `DATABASE_URL=postgres://findit:findit@localhost:5432/findit npx vitest run server/src/match/settlement.test.ts`
Expected: FAIL — `Cannot find module './settlement.js'`

- [ ] **Step 3: 구현**

`server/src/match/settlement.ts`:

```typescript
import type { Db } from '../platform/pg.js';
import { levelForScore } from '../rules/levels.js';

export interface SettlementRow {
  /** 게스트는 null. account 행이 없으므로 FK 에 넣을 수 없다. */
  accountId: string | null;
  matchId: string;
  puzzleId: string;
  result: 'win' | 'lose' | 'draw';
  foundCount: number;
  opponentFound: number;
  scoreDelta: number;
  coinDelta: number;
  expDelta: number;
  vsAi: boolean;
}

/**
 * 한 사람의 정산을 기록한다.
 *
 * 원작에는 경험치가 없다. 레벨링 통화는 점수이고, 레벨이 오른 판에만 스킬
 * 포인트가 1 오른다 (GameView.java:3255-3271 의 `if (prelevel < level) point++`).
 * exp_delta 는 전적에 기록만 하고 프로필에는 자리가 없다 — 별도 축으로 만들지는
 * P1 이 정한다.
 *
 * 게스트(accountId === null)는 전적만 남기고 null 을 돌려준다. account 행이
 * 없으므로 프로필이 존재할 수 없다.
 */
export async function persistSettlement(
  db: Db,
  row: SettlementRow,
): Promise<{ level: number; leveledUp: boolean } | null> {
  return db.tx(async (tx) => {
    const profile = row.accountId === null
      ? null
      : await updateProfile(tx, row.accountId, row);

    // **전적을 프로필 뒤에 넣는다.** 트랜잭션 안에서는 순서가 결과를 바꾸지
    // 않지만, 이 순서라야 "전적이 실패했는데 점수만 올랐다" 를 테스트가 실제로
    // 잡을 수 있다. 전적을 먼저 넣으면 그 INSERT 가 터질 때 프로필은 애초에
    // 손대지 않았으므로, db.tx 를 통째로 벗겨도 테스트가 통과한다.
    await tx.query(
      `INSERT INTO match_history(
         match_id, account_id, puzzle_id, result,
         found_count, opponent_found, score_delta, coin_delta, exp_delta, vs_ai)
       VALUES($1, $2, $3, $4, $5, $6, $7, $8, $9, $10)`,
      [
        row.matchId, row.accountId, row.puzzleId, row.result,
        row.foundCount, row.opponentFound, row.scoreDelta, row.coinDelta,
        row.expDelta, row.vsAi,
      ],
    );

    return profile;
  });
}

/** accountId 를 따로 받는다 — 게스트 분기를 호출부에서 끝내고 여기서는 null 을 다루지 않는다. */
async function updateProfile(
  tx: Db,
  accountId: string,
  row: SettlementRow,
): Promise<{ level: number; leveledUp: boolean } | null> {
  // 같은 계정의 두 정산이 겹치면 레벨업 판정이 어긋난다. 행을 잠근다.
  const [current] = await tx.query<{ total_score: string }>(
    `SELECT total_score FROM player_profile WHERE account_id = $1 FOR UPDATE`,
    [accountId],
  );
  // 계정에는 프로필이 반드시 함께 생긴다 (Plan 3 의 createAccount 가 한
  // 트랜잭션으로 만든다). 없다면 데이터가 깨진 것이므로 조용히 넘어간다.
  if (current === undefined) return null;

  // int8 은 node-postgres 가 문자열로 준다. Number 로 좁히지 않으면
  // 아래 비교와 levelForScore 가 문자열을 받는다.
  const beforeLevel = levelForScore(Number(current.total_score));

  // **덧셈을 SQL 안에서 한다.** JS 로 가져와 더하면 "100" + 30 이 "10030" 이
  // 된다. GREATEST 는 CHECK (>= 0) 를 지킨다 — 음수 점수 한 번이 정산 경로
  // 전체를 멈추게 하면 안 된다.
  const [updated] = await tx.query<{ total_score: string }>(
    `UPDATE player_profile
        SET total_score = GREATEST(0, total_score + $2),
            coins       = GREATEST(0, coins + $3),
            updated_at  = now()
      WHERE account_id = $1
      RETURNING total_score`,
    [accountId, row.scoreDelta, row.coinDelta],
  );

  const level = levelForScore(Number(updated!.total_score));
  const leveledUp = level > beforeLevel;

  // level 컬럼도 맞춰 둔다. 조회가 매번 levelForScore 를 돌리지 않아도 된다.
  // 원작과 같이 레벨이 오른 판에만 스킬 포인트가 1 오른다
  // (GameView.java:3265-3267 의 `if (prelevel < level) point++`).
  await tx.query(
    `UPDATE player_profile
        SET level = $2, skill_points = skill_points + $3
      WHERE account_id = $1`,
    [accountId, level, leveledUp ? 1 : 0],
  );

  return { level, leveledUp };
}
```

> **수치를 확인해 뒀다.** `levelForScore(0) = 1`, `levelForScore(130) = 1`, `levelForScore(1_000_000) = 32`, `levelForScore(1_000_001) = 32`, 최댓값 `100`. `LEVEL_SCORE` 는 101 칸이고 `[0, 5000, 10000, 15000, ...]` 로 시작한다. 따라서 테스트의 `scoreDelta: 1_000_000` 은 확실히 레벨을 올리고, 이어지는 `scoreDelta: 1` 은 같은 레벨에 머문다. `player_profile.level` 의 `CHECK (level BETWEEN 1 AND 100)` 도 항상 만족한다.

- [ ] **Step 4: 통과 확인**

Run: `DATABASE_URL=postgres://findit:findit@localhost:5432/findit npx vitest run server/src/match/settlement.test.ts && npm run typecheck`
Expected: PASS — 7 tests.

**변이로 확인할 것:**

| 변이 | 깨지는 테스트 |
|---|---|
| SQL 덧셈을 JS 덧셈으로 (`total_score: before + delta` 를 값으로 전달) | `프로필의 점수와 코인이 더해진다` |
| `leveledUp` 분기 제거 (항상 `skill_points + 1`) | `레벨이 오른 판에만 스킬 포인트가 1 오른다` |
| `db.tx` 를 벗기고 순차 실행 | `전적과 프로필이 한 트랜잭션이다` |
| 전적 INSERT 를 프로필 UPDATE **앞으로** 옮김 | `전적과 프로필이 한 트랜잭션이다` — 순서가 바뀌면 `db.tx` 를 벗겨도 통과해 버린다 |
| `accountId === null` 가드 제거 | `게스트는 전적만 남기고…` (FK 위반으로 던진다) |
| `GREATEST(0, ...)` 제거 | `점수는 음수로 내려가지 않는다` (CHECK 위반) |

- [ ] **Step 5: 커밋**

```bash
git add server/src/match/settlement.ts server/src/match/settlement.test.ts
git commit -m "$(cat <<'EOF'
feat(server): 정산 영속화 — 전적과 프로필

원작에는 경험치가 없다. 정산은 score = mScore + calculateScore(...),
level = getLevel(score), coin = coin + 1 이고 레벨이 오른 판에만 스킬
포인트가 1 오른다 (GameView.java:3255-3271 의 if (prelevel < level) point++).
레벨링 통화는 점수다. 그대로 따른다. exp_delta 는 전적에 기록만 하고
프로필에는 자리가 없다 — 별도 축으로 만들지는 P1 이 정한다.

덧셈을 SQL 안에서 한다. player_profile.total_score 와 coins 는 bigint 이고
node-postgres 는 int8 을 문자열로 준다. JS 로 가져와 더하면 "100" + 30 이
"10030" 이 된다. Plan 3 에서 같은 계열(다중 문장 질의가 배열을 돌려주는 것)에
한 번 당했다. 읽어 오는 값도 전부 Number 로 좁힌다.

게스트는 전적만 남기고 프로필을 건드리지 않는다. account 행이 없으므로
match_history.account_id FK 에 넣을 수 없고 player_profile 행도 없다. 그대로
INSERT 하면 FK 위반으로 터지면서 매치 종료 경로 전체가 죽는다.

전적과 프로필을 한 트랜잭션으로 묶고, 전적 INSERT 를 프로필 UPDATE 뒤에
둔다. 트랜잭션 안에서는 순서가 결과를 바꾸지 않지만, 이 순서라야 "전적이
실패했는데 점수만 올랐다" 를 테스트가 실제로 잡는다 — 전적을 먼저 넣으면
그 INSERT 가 터질 때 프로필은 애초에 손대지 않았으므로 db.tx 를 통째로
벗겨도 테스트가 통과한다.

GREATEST(0, ...) 로 음수를 막는다. player_profile 에 CHECK (>= 0) 이 걸려
있어, 음수 점수 한 번이 정산 경로 전체를 멈춘다.

EOF
)"
```

---

### Task 7: 배선 — 부팅과 2-클라이언트 통합 테스트

**Files:**
- Create: `server/src/match/wiring.ts`, `server/src/match/wiring.test.ts`
- Modify: `server/src/main.ts`

**Interfaces:**
- Consumes: Task 1~6 전부
- Produces: `function createRealtime(deps: RealtimeDeps): { attach(server: Server): void; close(): Promise<void> }`

**여기서 처음으로 전부 맞물린다.** 지금까지 각 조각은 포트 뒤에서 혼자 돌았다. 배선층이 하는 일은 넷이다.

1. `GameInput` + `conn.session.slot` → `BattleEvent` — **슬롯을 채우는 유일한 곳**이다.
2. `Outbound.to` → 그 슬롯의 연결 → `conn.send`.
3. 매치 생성: `assignPuzzle` → `createBattle` → `MatchRunner` → `registry.add` → `index.put` → 양쪽에 `MATCH_FOUND`.
4. 매치 종료: `settlementsFor` → `persistSettlement` → `registry.remove` → `index.drop`.

**Review Focus 5 — 양쪽이 다 끊긴 매치.** 두 연결이 모두 닫히면 리듀서는 `LEAVE` 로 매치를 끝내지만, 러너의 타이머·레지스트리 항목·Redis `match:{id}` 키가 남으면 누수다. 서버가 오래 돌수록 쌓인다. **끝난 매치는 반드시 셋 다 회수한다.**

**AI 상대에게는 연결이 없다.** `send` 가 AI 슬롯으로 향하면 조용히 버린다. 이것이 없으면 AI 매치의 모든 `REVEAL` 이 `undefined.send` 로 터진다.

**정산 대상은 사람뿐이다.** AI 슬롯은 `match_history` 에 넣지 않는다.

- [ ] **Step 1: 실패하는 테스트 작성**

`server/src/match/wiring.test.ts` — **진짜 WS 클라이언트 둘로 한 판을 끝까지 친다.**

```typescript
import { afterEach, beforeEach, describe, expect, it } from 'vitest';
import { createServer, type Server } from 'node:http';
import type { AddressInfo } from 'node:net';
import WebSocket from 'ws';
import { readFileSync } from 'node:fs';
import { resolve } from 'node:path';
import { createDb, type Db } from '../platform/pg.js';
import { createCache, type Cache } from '../platform/redis.js';
import { SystemClock } from '../platform/clock.js';
import { createRng } from '../platform/rng.js';
import { loadPuzzles } from '../content/loader.js';
import { createContentUrls } from '../content/urls.js';
import { createRealtime } from './wiring.js';

const dbUrl = process.env['DATABASE_URL'];
const redisUrl = process.env['REDIS_URL'];
const suite = dbUrl && redisUrl ? describe : describe.skip;

suite('2-클라이언트 통합', () => {
  let db: Db;
  let cache: Cache;
  let server: Server;
  let realtime: ReturnType<typeof createRealtime>;
  let url = '';
  let run = 0;

  beforeEach(async () => {
    run += 1;
    db = createDb(dbUrl!);
    await db.query(readFileSync(resolve(import.meta.dirname, '../../sql/001_init.sql'), 'utf8'));
    cache = createCache(redisUrl!, () => {});

    const clock = new SystemClock();
    const contentDir = resolve(import.meta.dirname, '../../../content');
    const puzzles = loadPuzzles(resolve(contentDir, 'puzzles'));

    realtime = createRealtime({
      db, cache, clock,
      rng: createRng(1234),
      puzzles,
      urls: createContentUrls({ secret: 's'.repeat(32), ttlMs: 300_000, clock }),
      log: { error: () => {} },
      queueKey: `findit:test:wire:${process.pid}:${run}`,
      // 통합 테스트에서 5초를 실제로 기다리지 않는다.
      aiTransitionMs: 150,
      // 게스트 토큰을 그대로 신뢰하는 검증기. 인증은 Task 3 이 검사한다.
      verify: async (token: string) =>
        token.startsWith('g-') ? { kind: 'guest', guestId: token } : null,
    });

    server = createServer();
    realtime.attach(server);
    await new Promise<void>((r) => server.listen(0, r));
    url = `ws://127.0.0.1:${(server.address() as AddressInfo).port}`;
  });

  afterEach(async () => {
    await realtime.close();
    await new Promise<void>((r) => server.close(() => r()));
    await Promise.allSettled([db.close(), cache.close()]);
  });

  interface Client {
    ws: WebSocket;
    seen: { t: string; d: Record<string, unknown> }[];
    waitFor(t: string, ms?: number): Promise<Record<string, unknown>>;
    send(t: string, d?: Record<string, unknown>): void;
    close(): void;
  }

  async function connect(token: string): Promise<Client> {
    const ws = new WebSocket(url);
    const seen: { t: string; d: Record<string, unknown> }[] = [];
    await new Promise<void>((r, j) => { ws.once('open', () => r()); ws.once('error', j); });
    ws.on('message', (raw) => { seen.push(JSON.parse(String(raw))); });

    const client: Client = {
      ws, seen,
      send(t, d = {}) { ws.send(JSON.stringify({ t, seq: 1, d })); },
      close() { ws.close(); },
      async waitFor(t, ms = 4_000) {
        const deadline = Date.now() + ms;
        for (;;) {
          const hit = seen.find((m) => m.t === t);
          if (hit) return hit.d;
          if (Date.now() > deadline) {
            throw new Error(`${t} 를 기다리다 시간 초과. 받은 것: ${seen.map((m) => m.t).join(',')}`);
          }
          await new Promise((r) => setTimeout(r, 20));
        }
      },
    };
    client.send('AUTH', { token });
    await client.waitFor('QUEUED');
    return client;
  }

  it('두 사람이 큐에서 만나 매치가 시작된다', async () => {
    const a = await connect('g-a');
    const b = await connect('g-b');
    a.send('QUEUE_JOIN', { mode: 'casual' });
    b.send('QUEUE_JOIN', { mode: 'casual' });

    const [fa, fb] = await Promise.all([a.waitFor('MATCH_FOUND'), b.waitFor('MATCH_FOUND')]);
    expect(fa['matchId']).toBe(fb['matchId']);
    expect(fa['isAi']).toBe(false);
    a.close(); b.close();
  });

  it('양쪽 READY 로 카운트다운과 START 가 온다', async () => {
    const a = await connect('g-a');
    const b = await connect('g-b');
    a.send('QUEUE_JOIN', { mode: 'casual' });
    b.send('QUEUE_JOIN', { mode: 'casual' });
    await Promise.all([a.waitFor('MATCH_FOUND'), b.waitFor('MATCH_FOUND')]);

    a.send('READY'); b.send('READY');
    const start = await a.waitFor('START', 6_000);
    expect(start['targetCount']).toBe(5);
    // 스펙 §6.3 — 좌표는 나가지 않는다.
    expect(JSON.stringify(start)).not.toContain('rects');
    expect(start).not.toHaveProperty('targetIndices');
    a.close(); b.close();
  });

  it('START 의 imageUrl 이 이 매치의 서명 URL 이고, 매치 인덱스가 Redis 에 있다', async () => {
    const a = await connect('g-a');
    const b = await connect('g-b');
    a.send('QUEUE_JOIN', { mode: 'casual' });
    b.send('QUEUE_JOIN', { mode: 'casual' });
    const found = await a.waitFor('MATCH_FOUND');
    a.send('READY'); b.send('READY');
    const start = await a.waitFor('START', 6_000);

    expect(String(start['imageUrl'])).toContain(String(found['matchId']));
    // Plan 3 의 콘텐츠 라우트가 이 키로 퍼즐을 찾는다. 없으면 이미지가 404 다.
    expect(await cache.get(`findit:match:${String(found['matchId'])}`))
      .toBe(String(start['puzzleId']));
    a.close(); b.close();
  });

  it('혼자 들어가면 AI 와 붙고, 상대 진행이 흘러온다', async () => {
    const a = await connect('g-solo');
    a.send('QUEUE_JOIN', { mode: 'casual' });

    const found = await a.waitFor('MATCH_FOUND');
    expect(found['isAi']).toBe(true);

    a.send('READY');
    await a.waitFor('START', 6_000);
    // AI 는 상대 연결 없이도 스스로 움직인다. 그 진행이 사람에게 보여야 한다.
    await a.waitFor('OPPONENT_PROGRESS', 15_000);
    a.close();
  }, 25_000);

  it('상대가 나가면 남은 사람이 END 를 받는다', async () => {
    const a = await connect('g-a');
    const b = await connect('g-b');
    a.send('QUEUE_JOIN', { mode: 'casual' });
    b.send('QUEUE_JOIN', { mode: 'casual' });
    await Promise.all([a.waitFor('MATCH_FOUND'), b.waitFor('MATCH_FOUND')]);
    a.send('READY'); b.send('READY');
    await a.waitFor('START', 6_000);

    b.send('LEAVE');
    const end = await a.waitFor('END', 6_000);
    expect(end['result']).toBe('win');
    a.close(); b.close();
  });

  it('게스트의 전적이 남는다 — account 행이 없어도 정산이 죽지 않는다', async () => {
    const a = await connect('g-a');
    const b = await connect('g-b');
    a.send('QUEUE_JOIN', { mode: 'casual' });
    b.send('QUEUE_JOIN', { mode: 'casual' });
    const found = await a.waitFor('MATCH_FOUND');
    a.send('READY'); b.send('READY');
    await a.waitFor('START', 6_000);
    b.send('LEAVE');
    await a.waitFor('END', 6_000);
    await new Promise((r) => setTimeout(r, 300));

    const rows = await db.query<{ account_id: string | null }>(
      `SELECT account_id FROM match_history WHERE match_id = $1`,
      [String(found['matchId'])],
    );
    expect(rows.length).toBeGreaterThan(0);
    expect(rows[0]!.account_id).toBeNull();
    a.close(); b.close();
  });

  it('끝난 매치는 레지스트리와 Redis 에서 사라진다 — 누수', async () => {
    const a = await connect('g-a');
    const b = await connect('g-b');
    a.send('QUEUE_JOIN', { mode: 'casual' });
    b.send('QUEUE_JOIN', { mode: 'casual' });
    const found = await a.waitFor('MATCH_FOUND');
    a.send('READY'); b.send('READY');
    await a.waitFor('START', 6_000);
    b.send('LEAVE');
    await a.waitFor('END', 6_000);
    await new Promise((r) => setTimeout(r, 300));

    expect(realtime.matchCount).toBe(0);
    expect(await cache.get(`findit:match:${String(found['matchId'])}`)).toBeNull();
    a.close(); b.close();
  });

  it('양쪽이 다 끊겨도 매치가 회수된다', async () => {
    const a = await connect('g-a');
    const b = await connect('g-b');
    a.send('QUEUE_JOIN', { mode: 'casual' });
    b.send('QUEUE_JOIN', { mode: 'casual' });
    await Promise.all([a.waitFor('MATCH_FOUND'), b.waitFor('MATCH_FOUND')]);
    a.send('READY'); b.send('READY');
    await a.waitFor('START', 6_000);

    // 아무에게도 END 를 보낼 수 없는 상황. 그래도 자원은 반드시 돌아와야 한다.
    a.ws.terminate();
    b.ws.terminate();
    await new Promise((r) => setTimeout(r, 500));

    expect(realtime.matchCount).toBe(0);
  });

  it('AI 와 붙고 있는 사람에게 난입하면 두 사람의 새 매치가 시작된다', async () => {
    const solo = await connect('g-solo');
    solo.send('QUEUE_JOIN', { mode: 'casual' });
    const aiMatch = await solo.waitFor('MATCH_FOUND');
    expect(aiMatch['isAi']).toBe(true);

    const intruder = await connect('g-in');
    intruder.send('QUEUE_JOIN', { mode: 'casual' });

    const forIntruder = await intruder.waitFor('MATCH_FOUND');
    expect(forIntruder['isAi']).toBe(false);

    // 난입당한 쪽에도 새 MATCH_FOUND 가 간다. 프로토콜에 "중단" 메시지가
    // 없으므로 MATCH_FOUND 가 진행 중인 매치를 덮어쓴다 — 원작이 결과 화면을
    // 건너뛰고 배틀룸으로 바로 가는 것과 같은 모양이다.
    const second = solo.seen.filter((m) => m.t === 'MATCH_FOUND');
    await new Promise((r) => setTimeout(r, 200));
    expect(solo.seen.filter((m) => m.t === 'MATCH_FOUND').length).toBeGreaterThan(1);
    expect(second.length).toBeGreaterThan(0);

    // 중단된 AI 판은 없던 일이 된다 — 정산이 없어야 한다.
    const rows = await db.query(
      `SELECT 1 FROM match_history WHERE match_id = $1`, [String(aiMatch['matchId'])],
    );
    expect(rows).toHaveLength(0);
    solo.close(); intruder.close();
  }, 15_000);

  it('전적에 리듀서가 계산한 점수가 그대로 들어간다 — 0 이 아니다', async () => {
    const a = await connect('g-a');
    const b = await connect('g-b');
    a.send('QUEUE_JOIN', { mode: 'casual' });
    b.send('QUEUE_JOIN', { mode: 'casual' });
    const found = await a.waitFor('MATCH_FOUND');
    a.send('READY'); b.send('READY');
    await a.waitFor('START', 6_000);

    b.send('LEAVE');
    const end = await a.waitFor('END', 6_000);
    await new Promise((r) => setTimeout(r, 300));

    const rows = await db.query<{ score_delta: number; coin_delta: number }>(
      `SELECT score_delta, coin_delta FROM match_history
        WHERE match_id = $1 AND result = 'win'`,
      [String(found['matchId'])],
    );
    expect(rows).toHaveLength(1);
    // END 가 클라에 보낸 값과 DB 에 남은 값이 같아야 한다. 자리표시자 0 을
    // 넣어 두면 여기서 걸린다.
    expect(rows[0]!.score_delta).toBe(Number(end['score']));
    expect(rows[0]!.coin_delta).toBe(Number(end['coinDelta']));
    a.close(); b.close();
  });

  it('p2 의 탭이 p2 의 점수가 된다 — 슬롯이 뒤바뀌지 않는다', async () => {
    const a = await connect('g-a');
    const b = await connect('g-b');
    a.send('QUEUE_JOIN', { mode: 'casual' });
    b.send('QUEUE_JOIN', { mode: 'casual' });
    await Promise.all([a.waitFor('MATCH_FOUND'), b.waitFor('MATCH_FOUND')]);
    a.send('READY'); b.send('READY');
    await a.waitFor('START', 6_000);

    // b 만 빈 곳을 두드린다. LOCK 은 b 에게만 가야 한다.
    b.send('TAP', { x: 1, y: 1 });
    await b.waitFor('LOCK', 3_000);
    await new Promise((r) => setTimeout(r, 200));
    expect(a.seen.some((m) => m.t === 'LOCK')).toBe(false);
    a.close(); b.close();
  });
});
```

- [ ] **Step 2: 실패 확인**

Run: `npx vitest run server/src/match/wiring.test.ts`
Expected: FAIL — `Cannot find module './wiring.js'`

- [ ] **Step 3: 구현**

`server/src/match/wiring.ts`:

```typescript
import type { Server } from 'node:http';
import { randomUUID } from 'node:crypto';
import type { Clock } from '../platform/clock.js';
import type { Rng } from '../platform/rng.js';
import type { Cache } from '../platform/redis.js';
import type { Db } from '../platform/pg.js';
import type { Puzzle } from '../content/types.js';
import type { ContentUrls } from '../battle/reducer.js';
import { assignPuzzle } from '../content/assigner.js';
import { createBattle, opponentOf, type BattleState, type PlayerSlot } from '../battle/state.js';
import type { Principal } from '../identity/types.js';
import { attachGateway, type Conn, type GameInput } from '../ws/gateway.js';
import { principalKey } from '../ws/session.js';
import { MatchRunner, type EndPayloads, type Scheduler, type TimerHandle } from './runner.js';
import { MatchRegistry } from './registry.js';
import { createMatchIndex } from './index.js';
import { Matchmaker, type Waiting } from './queue.js';
import { persistSettlement, type SettlementRow } from './settlement.js';

export interface RealtimeDeps {
  db: Db;
  cache: Cache;
  clock: Clock;
  rng: Rng;
  puzzles: readonly Puzzle[];
  urls: ContentUrls;
  log: { error(message: string, fields?: Record<string, unknown>): void };
  queueKey: string;
  aiTransitionMs?: number;
  verify(token: string): Promise<Principal | null>;
}

/**
 * 실제 타이머 어댑터.
 *
 * clock.now() 는 SystemClock 에서 performance.now() 이므로 벽시계가 아니다.
 * 절대 시각을 상대 지연으로 바꿀 때 Date.now() 를 섞으면 두 기준이 어긋나
 * 타이머가 즉시 발화하거나 영원히 오지 않는다. 반드시 같은 clock 을 쓴다.
 */
function realScheduler(clock: Clock): Scheduler {
  let seq = 0;
  const handles = new Map<number, NodeJS.Timeout>();
  return {
    at(time, fn) {
      seq += 1;
      const id = seq;
      handles.set(id, setTimeout(() => { handles.delete(id); fn(); },
        Math.max(0, time - clock.now())));
      return id;
    },
    cancel(handle: TimerHandle) {
      const t = handles.get(handle);
      if (t !== undefined) { clearTimeout(t); handles.delete(handle); }
    },
  };
}

export function createRealtime(deps: RealtimeDeps): {
  attach(server: Server): void;
  close(): Promise<void>;
  readonly matchCount: number;
} {
  const scheduler = realScheduler(deps.clock);
  const registry = new MatchRegistry();
  const index = createMatchIndex(deps.cache);
  /**
   * matchId → 슬롯별 자리.
   *
   * 연결과 accountId 를 **따로** 들고 있는 것이 중요하다. 연결은 끊기면
   * null 이 되지만 정산은 그 뒤에 일어난다 — 연결에서 principal 을 읽으려 하면
   * 끊고 나간 사람의 전적이 전부 익명이 된다. AI 슬롯은 자리 자체가 없다.
   */
  interface Seat { conn: Conn | null; accountId: string | null }
  const seats = new Map<string, Partial<Record<PlayerSlot, Seat>>>();
  let gateway: ReturnType<typeof attachGateway> | null = null;

  const matchmaker = new Matchmaker({
    clock: deps.clock, scheduler, cache: deps.cache,
    queueKey: deps.queueKey,
    aiTransitionMs: deps.aiTransitionMs,
    // 난입 대상: AI 와 붙고 있고 연결이 살아 있는 사람. 없으면 null.
    // seats 와 registry 가 위에서 이미 선언돼 있으므로 여기서 바로 읽는다.
    findIntrudable: (): Waiting | null => {
      for (const [matchId, row] of seats) {
        const runner = registry.get(matchId);
        if (runner === undefined) continue;
        const st = runner.state;
        if (st.phase === 'ENDED') continue;

        const humanSlot: PlayerSlot | null =
          st.p2.isAi && !st.p1.isAi ? 'p1' : st.p1.isAi && !st.p2.isAi ? 'p2' : null;
        if (humanSlot === null) continue;

        const conn = row[humanSlot]?.conn;
        if (conn == null) continue;   // 이미 끊긴 사람에게 난입할 수 없다

        const person = st[humanSlot];
        return { key: person.name, name: person.name, level: person.level, conn };
      }
      return null;
    },
    abortMatch: (victimKey) => {
      const runner = registry.findAiMatchWith(victimKey);
      if (runner === undefined) return;
      // 정산 없이 버린다 — 원작에서 중단된 AI 판은 코인도 경험치도 0 이다.
      runner.abort();
      cleanup(runner.matchId);
    },
    startMatch: async (a, b) => start(a, b),
  });

  function seatOf(conn: Conn): { runner: MatchRunner; slot: PlayerSlot } | null {
    const matchId = conn.session.matchId;
    const slot = conn.session.slot;
    if (matchId === null || slot === null) return null;
    const runner = registry.get(matchId);
    return runner === undefined ? null : { runner, slot };
  }

  async function start(a: Waiting, b: Waiting | null): Promise<string> {
    const matchId = randomUUID();
    const assignment = assignPuzzle(deps.puzzles, deps.rng);

    const state = createBattle({
      matchId, assignment,
      p1: { name: a.key, level: a.level, isAi: false },
      p2: b === null
        ? { name: `ai-${matchId.slice(0, 8)}`, level: a.level, isAi: true }
        : { name: b.key, level: b.level, isAi: false },
    });

    const connA = a.conn as Conn;
    const connB = b === null ? null : (b.conn as Conn);
    seats.set(matchId, {
      p1: { conn: connA, accountId: accountIdOf(connA) },
      // AI 상대면 p2 자리는 아예 없다.
      ...(connB === null ? {} : { p2: { conn: connB, accountId: accountIdOf(connB) } }),
    });

    const runner = new MatchRunner(state, {
      clock: deps.clock, rng: deps.rng, urls: deps.urls, scheduler,
      send: (slot, type, payload) => {
        // AI 슬롯에는 자리가 없고, 끊긴 사람의 conn 은 null 이다.
        // 조용히 버린다 — 이게 없으면 AI 매치의 모든 REVEAL 이 터진다.
        seats.get(matchId)?.[slot]?.conn?.send(type, payload);
      },
      onEnd: (ended, ends) => { void settle(ended, ends).finally(() => cleanup(matchId)); },
    });

    registry.add(runner);
    await index.put(matchId, assignment.puzzle.id);
    runner.start();

    bind(connA, matchId, 'p1');
    if (connB !== null) bind(connB, matchId, 'p2');

    announce(matchId, state);
    return matchId;
  }

  /** 계정이면 accountId, 게스트면 null. match_history.account_id 는 FK 다. */
  function accountIdOf(conn: Conn): string | null {
    const p = conn.session.principal;
    return p !== null && p.kind === 'account' ? p.accountId : null;
  }

  function bind(conn: Conn, matchId: string, slot: PlayerSlot): void {
    conn.session.matchId = matchId;
    conn.session.slot = slot;
  }

  function announce(matchId: string, state: BattleState): void {
    for (const slot of ['p1', 'p2'] as const) {
      const other = state[opponentOf(slot)];
      seats.get(matchId)?.[slot]?.conn?.send('MATCH_FOUND', {
        matchId,
        opponentName: other.name,
        opponentLevel: other.level,
        isAi: other.isAi,
      });
    }
  }

  async function settle(state: BattleState, ends: EndPayloads): Promise<void> {
    for (const slot of ['p1', 'p2'] as const) {
      const me = state[slot];
      const other = state[opponentOf(slot)];
      if (me.isAi) continue;   // AI 는 전적을 남기지 않는다

      // **리듀서가 낸 값을 그대로 쓴다.** 여기서 다시 계산하면 콤보 보너스가
      // 어긋난다 — 원작은 정산 시점의 live 콤보를 한 번 조회할 뿐이라,
      // 상태를 훑어 누적하면 값이 부풀어 오른다 (Plan 2 에서 3 배가 됐다).
      const payload = ends[slot];
      if (payload === undefined) {
        deps.log.error('END 페이로드 없음 — 정산을 건너뛴다', { matchId: state.matchId, slot });
        continue;
      }

      const row: SettlementRow = {
        // 계정으로 로그인했으면 accountId, 게스트면 null. 연결이 아니라
        // 자리에서 읽는다 — 끊고 나간 사람도 전적이 자기 계정에 남아야 한다.
        accountId: seats.get(state.matchId)?.[slot]?.accountId ?? null,
        matchId: state.matchId,
        puzzleId: state.puzzleId,
        result: payload['result'] as 'win' | 'lose' | 'draw',
        foundCount: me.found.length,
        opponentFound: other.found.length,
        scoreDelta: Number(payload['score']),
        coinDelta: Number(payload['coinDelta']),
        expDelta: Number(payload['expDelta']),
        vsAi: other.isAi,
      };
      try {
        await persistSettlement(deps.db, row);
      } catch (err: unknown) {
        // 한 사람의 정산 실패가 다른 사람의 정산과 자원 회수를 막으면 안 된다.
        deps.log.error('정산 실패', {
          matchId: state.matchId, slot,
          err: err instanceof Error ? err.message : String(err),
        });
      }
    }
  }

  function cleanup(matchId: string): void {
    registry.remove(matchId);
    for (const slot of ['p1', 'p2'] as const) {
      const conn = seats.get(matchId)?.[slot]?.conn;
      if (conn && conn.session.matchId === matchId) {
        conn.session.matchId = null;
        conn.session.slot = null;
      }
    }
    seats.delete(matchId);
    void index.drop(matchId).catch((err: unknown) => {
      deps.log.error('매치 인덱스 정리 실패', {
        matchId, err: err instanceof Error ? err.message : String(err),
      });
    });
  }

  function toEvent(input: GameInput, slot: PlayerSlot) {
    switch (input.kind) {
      case 'TAP': return { kind: 'TAP' as const, slot, x: input.x, y: input.y };
      case 'SKILL': return { kind: 'SKILL' as const, slot, skillId: input.skillId };
      case 'READY': return { kind: 'READY' as const, slot };
      case 'LEAVE': return { kind: 'LEAVE' as const, slot };
    }
  }

  return {
    get matchCount() { return registry.size; },

    attach(server: Server): void {
      gateway = attachGateway(server, {
        clock: deps.clock,
        log: deps.log,
        verify: deps.verify,

        onJoin: async (conn, _mode) => {
          const principal = conn.session.principal;
          if (principal === null) return;
          if (conn.session.matchId !== null) return;  // 이미 매치 중이면 무시
          await matchmaker.join({
            key: principalKey(principal), name: principalKey(principal),
            level: 1, conn,
          });
        },

        onLeaveQueue: async (conn) => {
          const principal = conn.session.principal;
          if (principal !== null) await matchmaker.leave(principalKey(principal));
        },

        // **슬롯을 채우는 유일한 곳.** 게이트웨이는 슬롯을 모른다.
        onGameInput: (conn, input) => {
          const seat = seatOf(conn);
          if (seat === null) return;
          seat.runner.submit(toEvent(input, seat.slot));
        },

        onClose: (conn) => {
          const principal = conn.session.principal;
          if (principal !== null) void matchmaker.leave(principalKey(principal));

          const seat = seatOf(conn);
          if (seat === null) return;
          // 자리를 먼저 비운다. 그래야 남은 쪽에 보내는 END 가 죽은 소켓으로
          // 가지 않고, 양쪽이 다 끊겨도 send 가 조용히 버려진다.
          // conn 만 비운다. accountId 는 남겨야 끊고 나간 사람의 전적이
          // 자기 계정에 남는다.
          const place = seats.get(seat.runner.matchId)?.[seat.slot];
          if (place !== undefined) place.conn = null;
          seat.runner.submit({ kind: 'LEAVE', slot: seat.slot });
        },
      });
    },

    async close(): Promise<void> {
      for (const matchId of [...seats.keys()]) {
        registry.get(matchId)?.abort();
        cleanup(matchId);
      }
      await gateway?.close();
    },
  };
}
```

> **`findIntrudable` 은 `seats` 와 `registry` 를 함께 읽어 `Waiting` 을 재구성한다.** 레지스트리만으로는 부족하다 — `MatchRunner` 는 연결을 모르고, 큐는 `Waiting.conn` 이 있어야 새 매치에 자리를 줄 수 있다. `st[humanSlot].name` 에는 `principalKey` 가 들어 있어서 `abortMatch` 의 `registry.findAiMatchWith(victimKey)` 와 같은 키로 맞물린다.
>
> **연결이 끊긴 사람에게는 난입하지 않는다** (`conn === null`). 그 사람은 곧 `LEAVE` 로 판이 끝나므로, 난입해 봐야 상대 없는 매치가 하나 더 생길 뿐이다.

`server/src/main.ts` 를 고친다 — `resolvePuzzleId` 를 실제 조회로 바꾸고 실시간 계층을 붙인다:

```typescript
  const matchIndex = createMatchIndex(cache);

  const app = createApp({
    // ... 기존 그대로 ...
    // Plan 3 의 항등 함수를 실제 조회로 바꾼다. 이제 진행 중인 매치의 id 를
    // 알아야 그 퍼즐의 이미지를 받을 수 있다.
    resolvePuzzleId: (matchId) => matchIndex.puzzleIdOf(matchId),
  });

  const server = app.listen(config.port, () => {
    log.info('서버 기동', { port: config.port, nodeEnv: config.nodeEnv });
  });

  const realtime = createRealtime({
    db, cache, clock, rng: createRng(Date.now() >>> 0),
    puzzles, urls: contentUrls, log,
    queueKey: 'findit:queue:casual',
    verify: (token) => verifySession(sessionDeps, token),
  });
  realtime.attach(server);
```

종료 처리에 한 줄 더한다:

```typescript
  const shutdown = async (signal: string): Promise<void> => {
    log.info('종료 신호 수신', { signal });
    server.close();
    await realtime.close();
    await Promise.allSettled([db.close(), cache.close()]);
    process.exit(0);
  };
```

- [ ] **Step 4: 통과 확인**

```bash
DATABASE_URL=postgres://findit:findit@localhost:5432/findit \
REDIS_URL=redis://localhost:6379 \
npx vitest run server/ && npm run typecheck
```
Expected: PASS — Plan 1~3 의 362 + Task 1~7 의 신규 분. **skip 이 0 이어야 한다.**

실제로 띄워 확인한다:

```bash
npm run compose:up
curl -s localhost:8080/health
```

- [ ] **Step 5: 커밋**

```bash
git add server/src/match/wiring.ts server/src/match/wiring.test.ts server/src/main.ts
git commit -m "$(cat <<'EOF'
feat(server): 실시간 배선 + 2-클라이언트 통합 테스트

지금까지 각 조각은 포트 뒤에서 혼자 돌았다. 배선층이 넷을 한다. GameInput 에
conn.session.slot 을 채워 BattleEvent 로 만들고, Outbound.to 를 그 슬롯의
연결로 보내고, 매치를 만들고(assignPuzzle → createBattle → MatchRunner →
registry → Redis 인덱스), 끝난 매치를 정산하고 회수한다.

슬롯을 채우는 곳은 여기 하나다. 게이트웨이는 슬롯을 모른다 — 어떤 연결이
p1 인지는 매칭이 정한다. 통합 테스트가 p2 의 탭에 대한 LOCK 이 p2 에게만
가는지로 이것을 확인한다.

AI 슬롯에는 연결이 없다. send 가 그쪽으로 향하면 조용히 버린다. 이게 없으면
AI 매치의 모든 REVEAL 이 undefined.send 로 터진다.

끝난 매치는 러너 타이머·레지스트리 항목·Redis match:{id} 를 전부 회수한다.
양쪽이 다 끊겨 아무에게도 END 를 보낼 수 없는 경우까지 포함한다 — 서버가
오래 돌수록 쌓이는 종류의 누수다.

정산 실패가 자원 회수를 막지 않는다. 한 사람의 정산이 터져도 다른 사람의
정산과 정리는 계속된다.

main.ts 의 resolvePuzzleId 를 Redis 실조회로 바꾼다. Plan 3 의 항등 함수는
서명만 맞으면 진행 중인 매치가 아니어도 이미지를 내주었다.

타이머 어댑터는 주입받은 clock 만 쓴다. SystemClock 은 performance.now()
기준이라 Date.now() 를 섞으면 두 기준이 어긋나 타이머가 즉시 발화하거나
영원히 오지 않는다.

EOF
)"
```

---

## 완료 기준

1. 두 사람이 큐에서 만나 한 판을 끝까지 치고 양쪽이 `END` 를 받는다
2. 혼자 들어가면 **5 초 뒤** AI 와 붙고, AI 가 스스로 rect 를 찾아 `OPPONENT_PROGRESS` 가 흘러온다
3. AI 와 붙고 있는 사람에게 난입하면 그 판이 **정산 없이** 버려지고 두 사람의 새 매치가 시작된다
4. 큐에 기다리는 사람이 있으면 난입보다 그쪽이 먼저다
5. 동시에 큐에 들어온 둘이 서로를 만난다 — 둘 다 AI 로 빠지지 않는다
6. `START` 에 좌표도 `targetIndices` 도 없다. `START.imageUrl` 은 그 매치의 서명 URL 이다
7. `resolvePuzzleId` 가 Redis 실조회다 — 진행 중인 매치의 id 를 알아야 이미지를 받는다
8. 게스트의 전적이 `account_id = NULL` 로 남고, 정산이 FK 위반으로 죽지 않는다
9. `player_profile` 의 점수·코인이 **SQL 안에서** 더해진다 — `bigint` 문자열 이어붙이기가 없다
10. 레벨이 오른 판에만 `skill_points` 가 1 오른다 (원작 `GameView.java:3265-3267`)
11. 전적과 프로필이 한 트랜잭션이다 — 전적이 실패하면 점수도 오르지 않는다
12. 끝난 매치의 러너 타이머·레지스트리 항목·Redis `match:{id}` 가 전부 회수된다
13. **양쪽이 다 끊겨도** 매치가 회수된다
14. p2 의 탭이 p2 에게만 영향을 준다 — 슬롯이 뒤바뀌지 않는다
15. 인증 없는 연결이 `QUEUE_JOIN`·`TAP` 을 보내도 아래로 내려가지 않는다
16. 클라가 `END` 같은 s2c 메시지를 자칭해 보내면 연결이 끊긴다
17. Plan 1~3 의 기존 362 테스트가 전부 그대로 통과한다
18. `npm run typecheck` exit 0, CI 5개 체크 전부 통과, **skip 0**

---

## 주의해서 볼 곳 — 저자가 가장 확신이 낮은 지점

**나는 이 계획을 실행해 보지 않았다.** Task 1·4·6 의 수치와 SQL 은 실제로 확인했지만(아래), WS 경로는 코드를 한 줄도 돌려보지 않았다.

**확인한 것:** `levelForScore` 의 경계값 넷(0·130·1e6·1e6+1)과 최댓값 100 을 실행해 봤다. `SINGLETIME = 100` ÷ 20 프레임/초 = 5 초는 원작 코드 두 곳을 읽어 계산했다. `TestClock.set` 이 이미 존재하고 과거로 되돌리면 던진다는 것도 확인했다.

**1. 난입의 `MATCH_FOUND` 덮어쓰기 (가장 위험).** 프로토콜에 "중단" 메시지가 없어서, 난입당한 사람은 진행 중인 매치 위로 `MATCH_FOUND` 를 받는다. 이것은 **내가 정한 클라이언트 계약**이지 스펙에 적혀 있던 것이 아니다. 원작이 결과 화면을 건너뛰고 배틀룸으로 바로 가는 모양과 같다고 판단했지만, Plan 5 의 클라가 이 규칙을 모르면 "이미 매치 중인데 MATCH_FOUND 가 왔다" 를 오류로 처리한다. **대안은 프로토콜에 `ABORT` 를 추가하는 것이고, 그건 스펙 §8 의 메시지 목록을 고치는 일이다.** Plan 5 를 쓸 때 다시 판단할 가치가 있다.

**2. `SystemClock` 이 벽시계가 아니다.** `performance.now()` 라 프로세스 시작 기준이다. 타이머 어댑터가 같은 clock 만 쓰면 일관되지만, 어디선가 `Date.now()` 가 섞이면 5 초가 5 시간이 되거나 즉시 발화한다. 통합 테스트가 실제 시간에 의존하므로 이런 오류는 "가끔 시간 초과" 로만 드러난다.

**3. 계정 경로의 통합 테스트가 얇다.** 배선은 `accountIdOf` 로 계정과 게스트를 가르고, 자리(`Seat`)에 `accountId` 를 따로 들고 있어 끊고 나간 사람의 전적도 자기 계정에 남는다. Task 6 이 계정 정산(점수 누적·레벨업·스킬 포인트)을 실제 Postgres 로 검증하고, Task 7 의 통합 테스트는 **게스트 경로만** 끝에서 끝까지 돈다. 계정 토큰으로 매치를 치는 통합 테스트는 세션 발급까지 엮어야 해서 넣지 않았다 — 두 계층이 각각 검증됐지만 **그 둘이 만나는 지점은 실제로 돌려본 적이 없다.**

**4. `ws` 의 런타임 동작.** Plan 3 에서 node-postgres 가 다중 문장 질의에 배열을 돌려준다는 것에 한 번 당했다 — 타입 정의에 없는 동작이었다. `ws` 의 `message` 이벤트가 `Buffer` 를 주는지 `ArrayBuffer` 를 주는지, `terminate()` 뒤 `close` 이벤트가 오는지는 문서로만 확인했다. 통합 테스트가 실제로 잡을 것이다.

**5. 큐 직렬화가 다중 인스턴스에서 무의미하다.** 프로세스 안 직렬화는 P0(단일 프로세스)에서만 맞다. 인스턴스를 늘리는 순간 Review Focus 4 의 경쟁이 그대로 돌아온다. Lua 나 `BLMOVE` 가 필요하고 P1 의 문제다.

**6. 재접속이 없다.** 연결이 끊기면 `LEAVE` 다. 지하철에서 한 칸 지나가면 판이 끝난다. 스펙 §1 의 비목표에 명시돼 있지는 않지만 P0 범위 밖으로 둔다 — 재접속은 매치 상태를 프로세스 밖에 두는 설계를 요구하고, 그건 Task 1 의 결정(메모리 보관)을 뒤집는 일이다.
