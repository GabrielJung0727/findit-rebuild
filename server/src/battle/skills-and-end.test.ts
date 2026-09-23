import { resolve } from 'node:path';
import { describe, expect, it } from 'vitest';
import { assignPuzzle } from '../content/assigner.js';
import { loadPuzzles } from '../content/loader.js';
import { createRng } from '../platform/rng.js';
import { COUNTDOWN_MS, MATCH_DURATION_MS, createBattle, type BattleState } from './state.js';
import { reduce, type ReduceContext } from './reducer.js';

const puzzles = loadPuzzles(resolve(import.meta.dirname, '../../../content/puzzles'));
const testUrls = {
  base: (matchId: string) => `test://${matchId}/base`,
  patch: (matchId: string, index: number) => `test://${matchId}/patch/${index}`,
};
const ctx = (now: number): ReduceContext => ({ now, rng: createRng(1), urls: testUrls });
const T0 = COUNTDOWN_MS;

function playing(level = 10): BattleState {
  let state = createBattle({
    matchId: 'm1',
    assignment: assignPuzzle(puzzles, createRng(7)),
    p1: { name: 'alice', level, isAi: false },
    p2: { name: 'bob', level, isAi: false },
  });
  state = reduce(state, { kind: 'READY', slot: 'p1' }, ctx(0)).state;
  state = reduce(state, { kind: 'READY', slot: 'p2' }, ctx(0)).state;
  return reduce(state, { kind: 'TIMER' }, ctx(T0)).state;
}

function playingAsymmetric(p1Level: number, p2Level: number): BattleState {
  let state = createBattle({
    matchId: 'm1',
    assignment: assignPuzzle(puzzles, createRng(7)),
    p1: { name: 'alice', level: p1Level, isAi: false },
    p2: { name: 'bob', level: p2Level, isAi: false },
  });
  state = reduce(state, { kind: 'READY', slot: 'p1' }, ctx(0)).state;
  state = reduce(state, { kind: 'READY', slot: 'p2' }, ctx(0)).state;
  return reduce(state, { kind: 'TIMER' }, ctx(T0)).state;
}

function tapNext(state: BattleState, slot: 'p1' | 'p2', now: number): BattleState {
  const index = state.targetIndices.find((item) => !state.revealed.includes(item))!;
  const rect = state.assignment.puzzle.rects.find((item) => item.index === index)!;
  return reduce(
    state,
    { kind: 'TAP', slot, x: rect.x + Math.floor(rect.w / 2), y: rect.y + Math.floor(rect.h / 2) },
    ctx(now),
  ).state;
}

function finalTargetTap(state: BattleState, slot: 'p1' | 'p2', now: number) {
  const index = state.targetIndices.find((item) => !state.revealed.includes(item))!;
  const rect = state.assignment.puzzle.rects.find((item) => item.index === index)!;
  return reduce(state, { kind: 'TAP', slot, x: rect.x + 1, y: rect.y + 1 }, ctx(now));
}

describe('SKILL', () => {
  it('BLIND 를 상대에게만 보낸다', () => {
    const result = reduce(playing(), { kind: 'SKILL', slot: 'p1', skillId: 'handprint_1' }, ctx(T0 + 100));
    const blind = result.outbound.find((outbound) => outbound.type === 'BLIND')!;
    expect(blind.to).toBe('p2');
    expect(blind.payload).toMatchObject({ effectId: 'efct_skill_01' });
  });

  it('가림시간이 스펙 §3.3 공식을 따른다', () => {
    const result = reduce(playing(10), { kind: 'SKILL', slot: 'p1', skillId: 'handprint_1' }, ctx(T0 + 100));
    expect(result.outbound.find((outbound) => outbound.type === 'BLIND')!.payload.durationMs).toBe(1000);
  });

  it('공격자 공격력과 방어자 방어력이 올바른 쪽에 배선된다', () => {
    const durationMs = (state: BattleState) => Number(
      reduce(state, { kind: 'SKILL', slot: 'p1', skillId: 'handprint_1' }, ctx(T0 + 100))
        .outbound.find((outbound) => outbound.type === 'BLIND')!.payload.durationMs,
    );
    expect(durationMs(playingAsymmetric(100, 1))).toBe(2070);
    expect(durationMs(playingAsymmetric(1, 100))).toBe(0);
  });

  it('상대 blindedUntil 을 갱신한다', () => {
    const result = reduce(playing(57), { kind: 'SKILL', slot: 'p1', skillId: 'ghost_5' }, ctx(T0 + 100));
    expect(result.state.p2.blindedUntil).toBeGreaterThan(T0 + 100);
  });

  it('모르는 스킬 id 는 무시된다', () => {
    expect(reduce(playing(), { kind: 'SKILL', slot: 'p1', skillId: 'nope_9' }, ctx(T0 + 100)).outbound).toEqual([]);
  });

  it('레벨이 낮아 못 배운 스킬은 거부된다 — 클라가 임의 id 를 보내도 막힌다', () => {
    expect(reduce(playing(1), { kind: 'SKILL', slot: 'p1', skillId: 'ghost_5' }, ctx(T0 + 100)).outbound).toEqual([]);
  });

  it('PLAYING 이 아니면 무시된다', () => {
    const state = createBattle({
      matchId: 'm',
      assignment: assignPuzzle(puzzles, createRng(1)),
      p1: { name: 'a', level: 10, isAi: false },
      p2: { name: 'b', level: 10, isAi: false },
    });
    expect(reduce(state, { kind: 'SKILL', slot: 'p1', skillId: 'handprint_1' }, ctx(0)).outbound).toEqual([]);
  });

  it('이전 스킬 효과가 끝나기 전에는 다시 쓸 수 없다 — 원작 mLeftSkilTimeCount 게이트', () => {
    const state = playing(57);
    const first = reduce(state, { kind: 'SKILL', slot: 'p1', skillId: 'ghost_5' }, ctx(T0 + 100));
    const durationMs = Number(first.outbound.find((outbound) => outbound.type === 'BLIND')!.payload.durationMs);
    const tooSoon = reduce(first.state, { kind: 'SKILL', slot: 'p1', skillId: 'ghost_5' }, ctx(T0 + 101));
    expect(tooSoon.outbound).toEqual([]);
    const afterward = reduce(
      first.state,
      { kind: 'SKILL', slot: 'p1', skillId: 'ghost_5' },
      ctx(T0 + 100 + durationMs),
    );
    expect(afterward.outbound.some((outbound) => outbound.type === 'BLIND')).toBe(true);
  });

  it('연사해도 BLIND 는 하나만 나간다', () => {
    let state = playing(57);
    let emitted = 0;
    for (let index = 0; index < 100; index += 1) {
      const result = reduce(
        state,
        { kind: 'SKILL', slot: 'p1', skillId: 'ghost_5' },
        ctx(T0 + 100 + index),
      );
      emitted += result.outbound.filter((outbound) => outbound.type === 'BLIND').length;
      state = result.state;
    }
    expect(emitted).toBe(1);
  });

  it('상대의 스킬 게이트는 나와 무관하다', () => {
    const state = playing(57);
    const after = reduce(state, { kind: 'SKILL', slot: 'p1', skillId: 'ghost_5' }, ctx(T0 + 100)).state;
    const result = reduce(after, { kind: 'SKILL', slot: 'p2', skillId: 'ghost_5' }, ctx(T0 + 101));
    expect(result.outbound.some((outbound) => outbound.type === 'BLIND')).toBe(true);
  });
});

describe('종료 — 5 개 선취', () => {
  it('5 개를 먼저 찾으면 즉시 ENDED 이고 그 쪽이 승자다', () => {
    let state = playing();
    for (let index = 0; index < 5; index += 1) state = tapNext(state, 'p1', T0 + 100 * (index + 1));
    expect(state.phase).toBe('ENDED');
    expect(state.winner).toBe('p1');
  });

  it('END 를 양쪽에 보내되 각자 관점으로 보낸다', () => {
    let state = playing();
    for (let index = 0; index < 4; index += 1) state = tapNext(state, 'p1', T0 + 100 * (index + 1));
    const result = finalTargetTap(state, 'p1', T0 + 600);
    const ends = result.outbound.filter((outbound) => outbound.type === 'END');
    expect(result.outbound.map((outbound) => outbound.type)).toEqual([
      'REVEAL', 'REVEAL', 'OPPONENT_PROGRESS', 'END', 'END',
    ]);
    expect(ends).toHaveLength(2);
    expect(ends.find((outbound) => outbound.to === 'p1')!.payload).toMatchObject({
      result: 'win', myFound: 5, opponentFound: 0,
    });
    expect(ends.find((outbound) => outbound.to === 'p2')!.payload).toMatchObject({
      result: 'lose', myFound: 0, opponentFound: 5,
    });
  });

  it('승자가 상대 코인을 독식한다 — 스펙 §3.1', () => {
    let state = playing();
    for (let index = 0; index < 4; index += 1) state = tapNext(state, 'p1', T0 + 100 * (index + 1));
    const result = finalTargetTap(state, 'p1', T0 + 500);
    const ends = result.outbound.filter((outbound) => outbound.type === 'END');
    expect(result.state.winner).toBe('p1');
    expect(ends.find((outbound) => outbound.to === 'p1')!.payload).toMatchObject({ coinDelta: 5, expDelta: 500 });
    expect(ends.find((outbound) => outbound.to === 'p2')!.payload).toMatchObject({ coinDelta: 0, expDelta: 0 });
  });

  it('4:1 로 나뉘어 아무도 5 개에 못 가도, 대상이 소진되면 즉시 끝난다', () => {
    let state = playing();
    state = tapNext(state, 'p2', T0 + 50);
    for (let index = 0; index < 4; index += 1) state = tapNext(state, 'p1', T0 + 100 * (index + 1));
    expect(state.revealed).toHaveLength(5);
    expect(state.p1.found).toHaveLength(4);
    expect(state.p2.found).toHaveLength(1);
    expect(state.phase).toBe('ENDED');
    expect(state.winner).toBe('p1');
  });

  it('대상 소진으로 끝나도 코인 독식 규칙은 같다', () => {
    let state = playing();
    state = tapNext(state, 'p2', T0 + 50);
    for (let index = 0; index < 3; index += 1) state = tapNext(state, 'p1', T0 + 100 * (index + 1));
    const result = finalTargetTap(state, 'p1', T0 + 500);
    const ends = result.outbound.filter((outbound) => outbound.type === 'END');
    expect(result.state.phase).toBe('ENDED');
    expect(result.state.winner).toBe('p1');
    expect(ends.find((outbound) => outbound.to === 'p1')!.payload).toMatchObject({
      result: 'win', myFound: 4, opponentFound: 1, coinDelta: 5, expDelta: 400,
    });
    expect(ends.find((outbound) => outbound.to === 'p2')!.payload).toMatchObject({
      result: 'lose', myFound: 1, opponentFound: 4, coinDelta: 0, expDelta: 100,
    });
  });

  it('종료 후 TAP 과 LEAVE 는 무시된다', () => {
    let state = playing();
    for (let index = 0; index < 5; index += 1) state = tapNext(state, 'p1', T0 + 100 * (index + 1));
    expect(reduce(state, { kind: 'TAP', slot: 'p2', x: 1, y: 1 }, ctx(T0 + 1000)).outbound).toEqual([]);
    expect(reduce(state, { kind: 'LEAVE', slot: 'p1' }, ctx(T0 + 1000)).outbound).toEqual([]);
  });
});

describe('종료 — 40 초 만료', () => {
  it('점수의 콤보 보너스는 정산 시점 콤보 1회 조회다 — 누적이 아니다', () => {
    let state = playing();
    for (let index = 0; index < 3; index += 1) state = tapNext(state, 'p1', T0 + 100 * (index + 1));
    expect(state.p1.combo).toBe(3);
    state = reduce(state, { kind: 'TAP', slot: 'p1', x: -50, y: -50 }, ctx(T0 + 400)).state;
    expect(state.p1.combo).toBe(0);

    const result = reduce(state, { kind: 'TIMER' }, ctx(T0 + MATCH_DURATION_MS));
    const p1End = result.outbound.find((outbound) => outbound.type === 'END' && outbound.to === 'p1')!;
    expect(p1End.payload.score).toBe(250);
  });

  it('클린 5연속 승리의 점수가 표의 상한을 넘지 않는다', () => {
    let state = playing();
    for (let index = 0; index < 4; index += 1) state = tapNext(state, 'p1', T0 + 100 * (index + 1));
    const result = finalTargetTap(state, 'p1', T0 + 500);
    const ends = result.outbound.filter((outbound) => outbound.type === 'END');
    expect(ends.find((outbound) => outbound.to === 'p1')!.payload.score).toBe(1050);
    expect(ends.find((outbound) => outbound.to === 'p2')!.payload.score).toBe(0);
  });

  it('더 많이 찾은 쪽이 이긴다', () => {
    let state = playing();
    state = tapNext(state, 'p1', T0 + 100);
    state = tapNext(state, 'p1', T0 + 200);
    state = tapNext(state, 'p2', T0 + 300);
    const result = reduce(state, { kind: 'TIMER' }, ctx(T0 + MATCH_DURATION_MS));
    expect(result.state.phase).toBe('ENDED');
    expect(result.state.winner).toBe('p1');
  });

  it('동점이면 무승부이고 각자 본인 코인만 가진다', () => {
    let state = playing();
    state = tapNext(state, 'p1', T0 + 100);
    state = tapNext(state, 'p2', T0 + 200);
    const result = reduce(state, { kind: 'TIMER' }, ctx(T0 + MATCH_DURATION_MS));
    expect(result.state.winner).toBe('draw');
    for (const outbound of result.outbound.filter((item) => item.type === 'END')) {
      expect(outbound.payload).toMatchObject({ result: 'draw', coinDelta: 1 });
    }
  });

  it('마감 정각의 TAP 이 승패를 뒤집지 못한다 — TAP 과 TIMER 의 경계가 같다', () => {
    let state = playing();
    state = tapNext(state, 'p2', T0 + 100);
    const deadline = state.playStartedAt + MATCH_DURATION_MS;
    const afterTap = finalTargetTap(state, 'p1', deadline).state;
    expect(afterTap.p1.found).toEqual([]);
    expect(reduce(afterTap, { kind: 'TIMER' }, ctx(deadline)).state.winner).toBe('p2');
  });

  it('만료 전 TIMER 는 종료시키지 않는다', () => {
    expect(reduce(playing(), { kind: 'TIMER' }, ctx(T0 + 1000)).state.phase).toBe('PLAYING');
  });

  it('경험치는 발견 1 개당 100 이다', () => {
    let state = playing();
    state = tapNext(state, 'p1', T0 + 100);
    state = tapNext(state, 'p1', T0 + 200);
    const result = reduce(state, { kind: 'TIMER' }, ctx(T0 + MATCH_DURATION_MS));
    expect(result.outbound.find((outbound) => outbound.type === 'END' && outbound.to === 'p1')!.payload.expDelta).toBe(200);
  });
});

describe('종료 — 이탈', () => {
  it('남은 쪽이 승자다', () => {
    const result = reduce(playing(), { kind: 'LEAVE', slot: 'p2' }, ctx(T0 + 500));
    expect(result.state.phase).toBe('ENDED');
    expect(result.state.winner).toBe('p1');
  });

  it('종료 후에는 더 이상 깨울 필요가 없다', () => {
    expect(reduce(playing(), { kind: 'LEAVE', slot: 'p2' }, ctx(T0 + 500)).wakeAt).toBeNull();
  });

  it('이탈 종료도 입력 상태를 변형하지 않는다', () => {
    const state = playing();
    const snapshot = JSON.stringify(state);
    reduce(state, { kind: 'LEAVE', slot: 'p2' }, ctx(T0 + 500));
    expect(JSON.stringify(state)).toBe(snapshot);
  });
});
