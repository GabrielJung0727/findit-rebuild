import { resolve } from 'node:path';
import { describe, expect, it } from 'vitest';
import { assignPuzzle } from '../content/assigner.js';
import { loadPuzzles } from '../content/loader.js';
import { createRng } from '../platform/rng.js';
import { COUNTDOWN_MS, MATCH_DURATION_MS, createBattle, type BattleState } from './state.js';
import { reduce, type ReduceContext } from './reducer.js';
import { planAiAction } from './ai-driver.js';

const puzzles = loadPuzzles(resolve(import.meta.dirname, '../../../content/puzzles'));
const testUrls = {
  base: (matchId: string) => `test://${matchId}/base`,
  patch: (matchId: string, index: number) => `test://${matchId}/patch/${index}`,
};
const ctx = (now: number): ReduceContext => ({ now, rng: createRng(1), urls: testUrls });
const T0 = COUNTDOWN_MS;

function playingVsAi(aiLevel = 50): BattleState {
  let state = createBattle({
    matchId: 'm1',
    assignment: assignPuzzle(puzzles, createRng(7)),
    p1: { name: 'human', level: 10, isAi: false },
    p2: { name: 'bot', level: aiLevel, isAi: true },
    startedAt: 0,
  });
  state = reduce(state, { kind: 'READY', slot: 'p1' }, ctx(0)).state;
  state = reduce(state, { kind: 'READY', slot: 'p2' }, ctx(0)).state;
  return reduce(state, { kind: 'TIMER' }, ctx(T0)).state;
}

describe('planAiAction', () => {
  it('AI 슬롯에 대해 미래의 TAP 을 계획한다', () => {
    const plan = planAiAction(playingVsAi(), 'p2', ctx(T0))!;
    expect(plan.at).toBeGreaterThan(T0);
    expect(plan.event.kind).toBe('TAP');
  });

  it('계획된 탭이 아직 발견되지 않은 대상을 맞힌다 — AI 는 틀리지 않는다', () => {
    const state = playingVsAi();
    const plan = planAiAction(state, 'p2', ctx(T0))!;
    expect(reduce(state, plan.event, ctx(plan.at)).outbound.some((outbound) => outbound.type === 'REVEAL')).toBe(true);
  });

  it('사람 슬롯에는 계획을 세우지 않는다', () => {
    expect(planAiAction(playingVsAi(), 'p1', ctx(T0))).toBeNull();
  });

  it('PLAYING 이 아니면 계획하지 않는다', () => {
    const state = createBattle({
      matchId: 'm',
      assignment: assignPuzzle(puzzles, createRng(1)),
      p1: { name: 'a', level: 10, isAi: false },
      p2: { name: 'b', level: 10, isAi: true },
      startedAt: 0,
    });
    expect(planAiAction(state, 'p2', ctx(0))).toBeNull();
  });

  it('남은 대상이 없으면 계획하지 않는다', () => {
    let state = playingVsAi();
    for (const index of [...state.targetIndices]) {
      const rect = state.assignment.puzzle.rects.find((item) => item.index === index)!;
      state = reduce(state, { kind: 'TAP', slot: 'p1', x: rect.x + 1, y: rect.y + 1 }, ctx(T0 + 10)).state;
      if (state.phase === 'ENDED') break;
    }
    expect(planAiAction(state, 'p2', ctx(T0 + 100))).toBeNull();
  });

  it('매치 만료 이후로는 계획하지 않는다', () => {
    expect(planAiAction(playingVsAi(), 'p2', ctx(T0 + MATCH_DURATION_MS - 1))).toBeNull();
  });

  it('같은 시드는 같은 계획을 낸다', () => {
    const state = playingVsAi();
    expect(planAiAction(state, 'p2', ctx(T0))).toEqual(planAiAction(state, 'p2', ctx(T0)));
  });

  it('고레벨 AI 가 더 빨리 찾는다', () => {
    const slow = planAiAction(playingVsAi(1), 'p2', ctx(T0))!.at;
    const fast = planAiAction(playingVsAi(100), 'p2', ctx(T0))!.at;
    expect(fast).toBeLessThan(slow);
  });
});

describe('AI 와의 풀 매치', () => {
  it('AI 혼자 두면 5 개를 찾고 이긴다 — 엔진과 드라이버가 실제로 맞물리는지', () => {
    let state = playingVsAi(100);
    let now = T0;
    for (let guard = 0; guard < 50 && state.phase === 'PLAYING'; guard += 1) {
      const plan = planAiAction(state, 'p2', ctx(now));
      if (!plan) break;
      now = plan.at;
      state = reduce(state, plan.event, ctx(now)).state;
    }
    expect(state.phase).toBe('ENDED');
    expect(state.winner).toBe('p2');
    expect(state.p2.found).toHaveLength(5);
  });
});
