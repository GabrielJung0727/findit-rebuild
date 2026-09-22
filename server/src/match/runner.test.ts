import { describe, expect, it } from 'vitest';
import { TestClock } from '../platform/clock.js';
import { createRng, type Rng } from '../platform/rng.js';
import { assignPuzzle } from '../content/assigner.js';
import { createBattle, MATCH_DURATION_MS, COUNTDOWN_MS, type BattleState } from '../battle/state.js';
import type { MessageType } from '@findit/protocol';
import { MatchRunner, type EndPayloads, type RunnerPorts, type Scheduler } from './runner.js';
import { MatchRegistry as Registry } from './registry.js';
import type { Puzzle } from '../content/types.js';

class TestScheduler implements Scheduler {
  private seq = 0;
  private readonly jobs = new Map<number, { at: number; fn: () => void | Promise<void> }>();

  at(time: number, fn: () => void | Promise<void>): number {
    const id = ++this.seq;
    this.jobs.set(id, { at: time, fn });
    return id;
  }

  cancel(handle: number): void {
    this.jobs.delete(handle);
  }

  get pending(): number {
    return this.jobs.size;
  }

  runUntil(clock: TestClock, to: number): void {
    for (let guard = 0; guard < 10_000; guard += 1) {
      const due = [...this.jobs.entries()]
        .filter(([, job]) => job.at <= to)
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
  id: 'p1', width: 1024, height: 768,
  rects: Array.from({ length: 7 }, (_, index) => ({
    index, x: 111 + index * 97, y: 211, w: 33, h: 29, sourceDrawable: `p1_${index}`,
  })),
};

const EMPTY_SPOT = { x: 1, y: 1 };

interface Sent {
  slot: string;
  type: MessageType;
  payload: Record<string, unknown>;
}

const fixedRng: Rng = {
  float: () => 0.5,
  int: () => 0,
  pick: <T,>(items: readonly T[]): T => items[0]!,
};

function harness(options: { p2Ai: boolean; seed?: number; rng?: Rng }) {
  const clock = new TestClock(1_000_000);
  const scheduler = new TestScheduler();
  const rng = options.rng ?? createRng(options.seed ?? 42);
  const sent: Sent[] = [];
  const ended: { state: BattleState; ends: EndPayloads }[] = [];
  const state = createBattle({
    matchId: 'm1',
    assignment: assignPuzzle([puzzle], createRng(7)),
    p1: { name: '사람', level: 10, isAi: false },
    p2: { name: options.p2Ai ? 'AI' : '상대', level: 10, isAi: options.p2Ai },
  });
  const ports: RunnerPorts = {
    clock,
    rng,
    scheduler,
    urls: { base: (matchId) => `/c/${matchId}/base`, patch: (matchId, index) => `/c/${matchId}/patch/${index}` },
    send: (slot, type, payload) => { sent.push({ slot, type, payload }); },
    onEnd: (battleState, ends) => { ended.push({ state: battleState, ends }); },
  };
  return { clock, scheduler, sent, ended, runner: new MatchRunner(state, ports) };
}

const typesOf = (sent: Sent[]): string[] => sent.map((item) => item.type);
const rectCenter = (index: number): { x: number; y: number } => ({ x: 127 + index * 97, y: 225 });

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
    expect(h.ended[0]!.ends.p1).toMatchObject({ result: expect.any(String) });
    expect(h.ended[0]!.ends.p1).toHaveProperty('score');
    expect(h.ended[0]!.ends.p1).toHaveProperty('coinDelta');
    expect(h.ended[0]!.ends.p2).toHaveProperty('score');
  });

  it('START 페이로드에 좌표가 하나도 없다 — 스펙 §6.3', () => {
    const h = harness({ p2Ai: false });
    h.runner.start();
    h.runner.submit({ kind: 'READY', slot: 'p1' });
    h.runner.submit({ kind: 'READY', slot: 'p2' });
    h.scheduler.runUntil(h.clock, h.clock.now() + COUNTDOWN_MS);

    const start = h.sent.find((item) => item.type === 'START')!;
    const json = JSON.stringify(start.payload);
    for (const rect of puzzle.rects) {
      for (const value of [rect.x, rect.y, rect.w, rect.h]) {
        expect(json).not.toContain(String(value));
      }
    }
    expect(json).not.toContain('rects');
    expect(start.payload).not.toHaveProperty('targetIndices');
  });

  it('밖에서 끝난 매치도 예약을 하나도 남기지 않는다 — 타이머 누수', () => {
    const h = harness({ p2Ai: true, rng: fixedRng });
    h.runner.start();
    h.runner.submit({ kind: 'READY', slot: 'p1' });
    h.runner.submit({ kind: 'READY', slot: 'p2' });
    h.scheduler.runUntil(h.clock, h.clock.now() + COUNTDOWN_MS);

    expect(h.scheduler.pending).toBe(2);
    h.runner.submit({ kind: 'LEAVE', slot: 'p1' });
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
    expect(h.scheduler.pending).toBe(0);
  });
});

describe('매치 러너 — 준비', () => {
  it('AI 슬롯은 start 만으로 ready 가 된다 — READY 를 보낼 클라이언트가 없다', () => {
    const h = harness({ p2Ai: true });
    h.runner.start();

    expect(h.runner.state.p2.ready).toBe(true);
    expect(h.runner.state.p1.ready).toBe(false);

    h.runner.submit({ kind: 'READY', slot: 'p1' });
    expect(typesOf(h.sent)).toContain('COUNTDOWN');
  });

  it('사람끼리면 start 가 아무도 ready 로 만들지 않는다', () => {
    const h = harness({ p2Ai: false });
    h.runner.start();
    expect(h.runner.state.p1.ready).toBe(false);
    expect(h.runner.state.p2.ready).toBe(false);
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

  it('사람이 계속 탭해도 AI 의 예정 시각이 미뤄지지 않는다', () => {
    const tapIntervalMs = 500;
    const taps = 30;
    const maxAiDelayMs = 7_000;
    const h = harness({ p2Ai: true });
    h.runner.start();
    h.runner.submit({ kind: 'READY', slot: 'p1' });
    h.runner.submit({ kind: 'READY', slot: 'p2' });
    h.scheduler.runUntil(h.clock, h.clock.now() + COUNTDOWN_MS);

    const playStartedAt = h.clock.now();
    let firstFindAt: number | null = null;
    for (let index = 0; index < taps; index += 1) {
      h.runner.submit({ kind: 'TAP', slot: 'p1', ...EMPTY_SPOT });
      h.scheduler.runUntil(h.clock, h.clock.now() + tapIntervalMs);
      if (firstFindAt === null && h.runner.state.p2.found.length > 0) firstFindAt = h.clock.now();
    }

    expect(firstFindAt).not.toBeNull();
    expect(firstFindAt! - playStartedAt).toBeLessThanOrEqual(maxAiDelayMs + tapIntervalMs);
  });

  it('계획한 대상 하나만 사람이 먼저 찾아도 AI 는 그것을 누르지 않는다 — 부당한 잠금 금지', () => {
    const aiDelayMs = 6_700;
    const h = harness({ p2Ai: true, rng: fixedRng });
    h.runner.start();
    h.runner.submit({ kind: 'READY', slot: 'p1' });
    h.runner.submit({ kind: 'READY', slot: 'p2' });
    h.scheduler.runUntil(h.clock, h.clock.now() + COUNTDOWN_MS);
    const playStartedAt = h.clock.now();

    const aiTarget = h.runner.state.targetIndices[0]!;
    h.runner.submit({ kind: 'TAP', slot: 'p1', ...rectCenter(aiTarget) });
    expect(h.runner.state.phase).toBe('PLAYING');
    expect(h.runner.state.p1.found).toHaveLength(1);

    h.scheduler.runUntil(h.clock, playStartedAt + aiDelayMs + 100);
    expect(h.runner.state.p2.lockedUntil).toBe(0);
    expect(h.runner.state.p2.found).toHaveLength(0);
  });
});

describe('매치 레지스트리', () => {
  it('넣고 찾고 지운다', () => {
    const registry = new Registry();
    const h = harness({ p2Ai: false });
    registry.add(h.runner);
    expect(registry.get('m1')).toBe(h.runner);
    expect(registry.size).toBe(1);
    registry.remove('m1');
    expect(registry.get('m1')).toBeUndefined();
    expect(registry.size).toBe(0);
  });

  it('없는 id 는 undefined 다 — 던지지 않는다', () => {
    expect(new Registry().get('nope')).toBeUndefined();
  });
});
