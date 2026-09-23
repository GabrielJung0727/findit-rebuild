import { readFileSync } from 'node:fs';
import { resolve } from 'node:path';
import { describe, expect, it } from 'vitest';
import { encodeEnvelope } from '@findit/protocol';
import { assignPuzzle } from '../content/assigner.js';
import { loadPuzzles } from '../content/loader.js';
import { createRng } from '../platform/rng.js';
import {
  COUNTDOWN_MS,
  MATCH_DURATION_MS,
  MISS_LOCK_MS,
  createBattle,
  type BattleState,
  type Outbound,
} from './state.js';
import { hitTest, nextWakeAt, reduce, type ReduceContext } from './reducer.js';

const puzzles = loadPuzzles(resolve(import.meta.dirname, '../../../content/puzzles'));

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
  });
}

function playing(): BattleState {
  let state = fresh();
  state = reduce(state, { kind: 'READY', slot: 'p1' }, ctx(0)).state;
  state = reduce(state, { kind: 'READY', slot: 'p2' }, ctx(0)).state;
  return reduce(state, { kind: 'TIMER' }, ctx(COUNTDOWN_MS)).state;
}

function centerOfUnrevealed(state: BattleState): { x: number; y: number } {
  const index = state.targetIndices.find((item) => !state.revealed.includes(item))!;
  const rect = state.assignment.puzzle.rects.find((item) => item.index === index)!;
  return { x: rect.x + Math.floor(rect.w / 2), y: rect.y + Math.floor(rect.h / 2) };
}

describe('hitTest', () => {
  const state = playing();

  it('노출 대상의 중심을 맞힌다', () => {
    const { x, y } = centerOfUnrevealed(state);
    expect(hitTest(state.assignment, state.targetIndices, state.revealed, x, y)).not.toBeNull();
  });

  it('노출되지 않은 rect 는 맞아도 히트가 아니다 — 5-of-N 의 핵심', () => {
    const hidden = state.assignment.puzzle.rects.find(
      (rect) => !state.targetIndices.includes(rect.index),
    );
    if (!hidden) return;
    const x = hidden.x + Math.floor(hidden.w / 2);
    const y = hidden.y + Math.floor(hidden.h / 2);
    expect(hitTest(state.assignment, state.targetIndices, state.revealed, x, y)).toBeNull();
  });

  it('이미 발견된 rect 는 다시 히트되지 않는다', () => {
    const index = state.targetIndices[0]!;
    const rect = state.assignment.puzzle.rects.find((item) => item.index === index)!;
    expect(hitTest(state.assignment, state.targetIndices, [index], rect.x + 1, rect.y + 1)).toBeNull();
  });

  it('빈 곳은 null 이다', () => {
    expect(hitTest(state.assignment, state.targetIndices, state.revealed, -50, -50)).toBeNull();
  });

  it('rect 의 오른쪽·아래 경계는 히트가 아니다 — 반개구간이다', () => {
    const index = state.targetIndices[0]!;
    const rect = state.assignment.puzzle.rects.find((item) => item.index === index)!;
    expect(hitTest(state.assignment, state.targetIndices, [], rect.x + rect.w, rect.y)).toBeNull();
    expect(hitTest(state.assignment, state.targetIndices, [], rect.x, rect.y + rect.h)).toBeNull();
    expect(hitTest(
      state.assignment,
      state.targetIndices,
      [],
      rect.x + rect.w - 1,
      rect.y + rect.h - 1,
    )).toBe(index);
  });
});

describe('READY → COUNTDOWN → PLAYING', () => {
  it('한쪽만 준비하면 WAITING 에 머문다', () => {
    const result = reduce(fresh(), { kind: 'READY', slot: 'p1' }, ctx(0));
    expect(result.state.phase).toBe('WAITING');
    expect(result.outbound).toEqual([]);
  });

  it('양쪽 준비되면 COUNTDOWN 으로 가고 3 초를 알린다', () => {
    const state = reduce(fresh(), { kind: 'READY', slot: 'p1' }, ctx(0)).state;
    const result = reduce(state, { kind: 'READY', slot: 'p2' }, ctx(0));
    expect(result.state.phase).toBe('COUNTDOWN');
    expect(result.outbound).toContainEqual({
      to: 'both', type: 'COUNTDOWN', payload: { seconds: 3 },
    });
    expect(result.wakeAt).toBe(COUNTDOWN_MS);
  });

  it('중복 READY 는 아무 일도 하지 않는다', () => {
    const state = reduce(fresh(), { kind: 'READY', slot: 'p1' }, ctx(0)).state;
    const result = reduce(state, { kind: 'READY', slot: 'p1' }, ctx(0));
    expect(result.state.phase).toBe('WAITING');
  });

  it('카운트다운 만료 TIMER 가 PLAYING 을 시작시키고 START 를 보낸다', () => {
    let state = reduce(fresh(), { kind: 'READY', slot: 'p1' }, ctx(0)).state;
    state = reduce(state, { kind: 'READY', slot: 'p2' }, ctx(0)).state;
    const result = reduce(state, { kind: 'TIMER' }, ctx(COUNTDOWN_MS));
    expect(result.state.phase).toBe('PLAYING');
    expect(result.state.playStartedAt).toBe(COUNTDOWN_MS);
    const start = result.outbound.find((outbound) => outbound.type === 'START')!;
    expect(start.to).toBe('both');
    expect(start.payload).toMatchObject({ targetCount: 5, durationMs: 40_000 });
  });

  it('카운트다운 만료 전 TIMER 는 PLAYING 을 시작시키지 않는다', () => {
    let state = reduce(fresh(), { kind: 'READY', slot: 'p1' }, ctx(0)).state;
    state = reduce(state, { kind: 'READY', slot: 'p2' }, ctx(0)).state;
    const result = reduce(state, { kind: 'TIMER' }, ctx(COUNTDOWN_MS - 1));
    expect(result.state.phase).toBe('COUNTDOWN');
    expect(result.outbound).toEqual([]);
  });

  it('START 페이로드에 좌표가 들어가지 않는다 — 치팅 방어의 첫 방어선', () => {
    let state = reduce(fresh(), { kind: 'READY', slot: 'p1' }, ctx(0)).state;
    state = reduce(state, { kind: 'READY', slot: 'p2' }, ctx(0)).state;
    const start = reduce(state, { kind: 'TIMER' }, ctx(COUNTDOWN_MS)).outbound.find(
      (outbound) => outbound.type === 'START',
    )!;
    expect(Object.keys(start.payload).sort()).toEqual(
      ['durationMs', 'height', 'imageUrl', 'puzzleId', 'targetCount', 'width'].sort(),
    );
  });

  it('PLAYING 전 TAP 은 무시된다', () => {
    expect(reduce(fresh(), { kind: 'TAP', slot: 'p1', x: 100, y: 100 }, ctx(0)).outbound).toEqual([]);
  });
});

describe('TAP — 히트', () => {
  it('REVEAL 을 양쪽에 보내되 by 는 받는 사람 기준이다', () => {
    const state = playing();
    const { x, y } = centerOfUnrevealed(state);
    const result = reduce(state, { kind: 'TAP', slot: 'p1', x, y }, ctx(COUNTDOWN_MS + 500));

    const reveals = result.outbound.filter((outbound) => outbound.type === 'REVEAL');
    expect(reveals).toHaveLength(2);

    const mine = reveals.find((r) => r.to === 'p1')!;
    const theirs = reveals.find((r) => r.to === 'p2')!;
    expect(mine.payload).toMatchObject({ by: 'me' });
    expect(theirs.payload).toMatchObject({ by: 'opponent' });

    // 좌표는 양쪽이 같아야 한다 — 같은 rect 다.
    // patchUrl 을 한 번만 만드는지는 아래 별도 테스트가 호출 수로 본다.
    // testUrls.patch 가 순수 함수라 결과 비교로는 구분되지 않는다.
    expect(theirs.payload['index']).toBe(mine.payload['index']);
    expect(theirs.payload['patchUrl']).toBe(mine.payload['patchUrl']);

    expect(result.state.p1.found).toHaveLength(1);
    expect(result.state.p1.combo).toBe(1);
    expect(result.state.revealed).toHaveLength(1);
  });

  it('패치 URL 을 한 번만 만들어 양쪽에 같은 것을 준다', () => {
    const state = playing();
    const { x, y } = centerOfUnrevealed(state);

    let patchCalls = 0;
    const counting: ReduceContext = {
      ...ctx(COUNTDOWN_MS + 500),
      urls: {
        base: testUrls.base,
        patch: (matchId: string, rectIndex: number) => {
          patchCalls += 1;
          return testUrls.patch(matchId, rectIndex);
        },
      },
    };

    const result = reduce(state, { kind: 'TAP', slot: 'p1', x, y }, counting);
    const reveals = result.outbound.filter((outbound) => outbound.type === 'REVEAL');

    expect(reveals).toHaveLength(2);
    expect(patchCalls).toBe(1);
    expect(reveals[1]!.payload['patchUrl']).toBe(reveals[0]!.payload['patchUrl']);
  });

  it('p2 가 찾으면 p2 에게 me 가 간다 — 슬롯이 고정돼 있지 않다', () => {
    const state = playing();
    const { x, y } = centerOfUnrevealed(state);
    const result = reduce(state, { kind: 'TAP', slot: 'p2', x, y }, ctx(COUNTDOWN_MS + 500));

    const reveals = result.outbound.filter((outbound) => outbound.type === 'REVEAL');
    expect(reveals.find((r) => r.to === 'p2')!.payload).toMatchObject({ by: 'me' });
    expect(reveals.find((r) => r.to === 'p1')!.payload).toMatchObject({ by: 'opponent' });
  });

  it('OPPONENT_PROGRESS 로 상대 진행도를 알린다', () => {
    const state = playing();
    const { x, y } = centerOfUnrevealed(state);
    const result = reduce(state, { kind: 'TAP', slot: 'p1', x, y }, ctx(COUNTDOWN_MS + 500));
    expect(result.outbound).toContainEqual({
      to: 'p2', type: 'OPPONENT_PROGRESS', payload: { found: 1 },
    });
  });

  it('상대가 발견하면 내 콤보가 끊긴다 — 스펙 §3.2 리셋 조건', () => {
    let state = playing();
    let point = centerOfUnrevealed(state);
    state = reduce(state, { kind: 'TAP', slot: 'p1', ...point }, ctx(COUNTDOWN_MS + 100)).state;
    expect(state.p1.combo).toBe(1);

    point = centerOfUnrevealed(state);
    state = reduce(state, { kind: 'TAP', slot: 'p2', ...point }, ctx(COUNTDOWN_MS + 200)).state;
    expect(state.p1.combo).toBe(0);
    expect(state.p2.combo).toBe(1);
  });

  it('연속 히트마다 콤보 카운터가 오른다', () => {
    let state = playing();
    for (let combo = 1; combo <= 3; combo += 1) {
      state = reduce(
        state,
        { kind: 'TAP', slot: 'p1', ...centerOfUnrevealed(state) },
        ctx(COUNTDOWN_MS + combo * 100),
      ).state;
    }
    expect(state.p1.combo).toBe(3);
  });

  it('이미 발견된 곳을 다시 탭하면 미스로 처리된다', () => {
    let state = playing();
    const point = centerOfUnrevealed(state);
    state = reduce(state, { kind: 'TAP', slot: 'p1', ...point }, ctx(COUNTDOWN_MS + 100)).state;
    const result = reduce(state, { kind: 'TAP', slot: 'p1', ...point }, ctx(COUNTDOWN_MS + 200));
    expect(result.outbound.some((outbound) => outbound.type === 'LOCK')).toBe(true);
  });
});

describe('TAP — 미스', () => {
  it('LOCK 을 본인에게만 보내고 콤보를 끊는다', () => {
    let state = playing();
    state = reduce(
      state,
      { kind: 'TAP', slot: 'p1', ...centerOfUnrevealed(state) },
      ctx(COUNTDOWN_MS + 100),
    ).state;
    const result = reduce(state, { kind: 'TAP', slot: 'p1', x: -50, y: -50 }, ctx(COUNTDOWN_MS + 200));
    expect(result.outbound).toEqual([
      { to: 'p1', type: 'LOCK', payload: { durationMs: MISS_LOCK_MS } },
    ]);
    expect(result.state.p1.combo).toBe(0);
  });

  it('잠금 중 TAP 은 무시된다 — 격자 스캔 봇 차단', () => {
    let state = playing();
    state = reduce(state, { kind: 'TAP', slot: 'p1', x: -50, y: -50 }, ctx(COUNTDOWN_MS)).state;
    const result = reduce(state, { kind: 'TAP', slot: 'p1', x: -60, y: -60 }, ctx(COUNTDOWN_MS + 500));
    expect(result.outbound).toEqual([]);
  });

  it('잠금이 풀리면 다시 탭할 수 있다', () => {
    let state = playing();
    state = reduce(state, { kind: 'TAP', slot: 'p1', x: -50, y: -50 }, ctx(COUNTDOWN_MS)).state;
    const result = reduce(
      state,
      { kind: 'TAP', slot: 'p1', x: -60, y: -60 },
      ctx(COUNTDOWN_MS + MISS_LOCK_MS + 1),
    );
    expect(result.outbound.some((outbound) => outbound.type === 'LOCK')).toBe(true);
  });

  it('상대의 잠금은 나에게 영향이 없다', () => {
    let state = playing();
    state = reduce(state, { kind: 'TAP', slot: 'p1', x: -50, y: -50 }, ctx(COUNTDOWN_MS)).state;
    const result = reduce(
      state,
      { kind: 'TAP', slot: 'p2', ...centerOfUnrevealed(state) },
      ctx(COUNTDOWN_MS + 100),
    );
    expect(result.outbound.some((outbound) => outbound.type === 'REVEAL')).toBe(true);
  });
});

describe('URL 은 포트에서만 나온다 — 스펙 §6.3', () => {
  it('REVEAL 의 patchUrl 이 주입된 발급기에서 온다', () => {
    const state = playing();
    const result = reduce(
      state,
      { kind: 'TAP', slot: 'p1', ...centerOfUnrevealed(state) },
      {
        now: COUNTDOWN_MS + 100,
        rng: createRng(1),
        urls: { base: () => 'BASE_SENTINEL', patch: (matchId, index) => `PATCH_SENTINEL:${matchId}:${index}` },
      },
    );
    const reveal = result.outbound.find((outbound) => outbound.type === 'REVEAL')!;
    expect(String(reveal.payload.patchUrl)).toMatch(/^PATCH_SENTINEL:/);
  });

  it('START 의 imageUrl 도 주입된 발급기에서 온다', () => {
    let state = fresh();
    state = reduce(state, { kind: 'READY', slot: 'p1' }, ctx(0)).state;
    state = reduce(state, { kind: 'READY', slot: 'p2' }, ctx(0)).state;
    const result = reduce(state, { kind: 'TIMER' }, {
      now: COUNTDOWN_MS,
      rng: createRng(1),
      urls: { base: () => 'BASE_SENTINEL', patch: () => 'P' },
    });
    expect(result.outbound.find((outbound) => outbound.type === 'START')!.payload.imageUrl).toBe('BASE_SENTINEL');
  });

  it('포트를 부르지 않고는 REVEAL 을 만들 수 없다', () => {
    const state = playing();
    const exploding = {
      base: () => { throw new Error('base port called'); },
      patch: () => { throw new Error('patch port called'); },
    };
    expect(() => reduce(
      state,
      { kind: 'TAP', slot: 'p1', ...centerOfUnrevealed(state) },
      { now: COUNTDOWN_MS + 100, rng: createRng(1), urls: exploding },
    )).toThrow(/patch port called/);
  });

  it('리듀서 소스에 절대 경로 URL 리터럴이 없다 — 조립하면 반드시 예측 가능해진다', () => {
    const source = readFileSync(resolve(import.meta.dirname, 'reducer.ts'), 'utf8');
    expect(source).not.toMatch(/['\"`]\/content\//);
  });
});

describe('매치 마감 경계', () => {
  it('마감 1ms 전의 TAP 은 인정된다', () => {
    const state = playing();
    const result = reduce(
      state,
      { kind: 'TAP', slot: 'p1', ...centerOfUnrevealed(state) },
      ctx(state.playStartedAt + MATCH_DURATION_MS - 1),
    );
    expect(result.outbound.some((outbound) => outbound.type === 'REVEAL')).toBe(true);
  });

  it('콤보가 마감 시각을 바꾸지 않는다 — P0 는 시간 보너스를 적용하지 않는다', () => {
    let state = playing();
    const deadline = state.playStartedAt + MATCH_DURATION_MS;

    for (let combo = 1; combo <= 3; combo += 1) {
      state = reduce(
        state,
        { kind: 'TAP', slot: 'p1', ...centerOfUnrevealed(state) },
        ctx(COUNTDOWN_MS + combo * 100),
      ).state;
    }

    expect(state.p1.combo).toBe(3);
    expect(nextWakeAt(state)).toBe(deadline);
  });

  it('정확히 마감 시각의 TAP 은 무시된다 — 플레이 구간은 [start, start+40000)', () => {
    const state = playing();
    const result = reduce(
      state,
      { kind: 'TAP', slot: 'p1', ...centerOfUnrevealed(state) },
      ctx(state.playStartedAt + MATCH_DURATION_MS),
    );
    expect(result.outbound).toEqual([]);
    expect(result.state.p1.found).toEqual([]);
  });
});

describe('wakeAt 은 상태에서 파생된다', () => {
  it('PLAYING 중 무시된 이벤트도 종료 예약을 유지한다 — 40초 타이머가 사라지면 안 된다', () => {
    let state = playing();
    const deadline = state.playStartedAt + MATCH_DURATION_MS;
    state = reduce(state, { kind: 'TAP', slot: 'p1', x: -50, y: -50 }, ctx(COUNTDOWN_MS)).state;
    const ignored = reduce(state, { kind: 'TAP', slot: 'p1', x: -60, y: -60 }, ctx(COUNTDOWN_MS + 100));
    expect(ignored.outbound).toEqual([]);
    expect(ignored.wakeAt).toBe(deadline);
  });

  it('모르는 스킬 id 로 무시돼도 예약이 유지된다', () => {
    const state = playing();
    const result = reduce(state, { kind: 'SKILL', slot: 'p1', skillId: 'nope_9' }, ctx(COUNTDOWN_MS + 100));
    expect(result.wakeAt).toBe(state.playStartedAt + MATCH_DURATION_MS);
  });

  it('WAITING 과 ENDED 에서는 예약이 없다', () => {
    expect(nextWakeAt(fresh())).toBeNull();
    expect(nextWakeAt({ ...playing(), phase: 'ENDED' })).toBeNull();
  });

  it('COUNTDOWN 에서는 카운트다운 종료 시각이다', () => {
    let state = reduce(fresh(), { kind: 'READY', slot: 'p1' }, ctx(0)).state;
    state = reduce(state, { kind: 'READY', slot: 'p2' }, ctx(0)).state;
    expect(nextWakeAt(state)).toBe(COUNTDOWN_MS);
  });
});

describe('불변성', () => {
  it('리듀서가 입력 상태를 변형하지 않는다', () => {
    const state = playing();
    const snapshot = JSON.stringify(state);
    reduce(
      state,
      { kind: 'TAP', slot: 'p1', ...centerOfUnrevealed(state) },
      ctx(COUNTDOWN_MS + 100),
    );
    expect(JSON.stringify(state)).toBe(snapshot);
  });
});

describe('프로토콜 적합성', () => {
  it('리듀서가 내는 모든 outbound 가 프로토콜 선언과 맞는다', () => {
    const all: Outbound[] = [];
    const push = (result: { outbound: Outbound[]; state: BattleState }): BattleState => {
      all.push(...result.outbound);
      return result.state;
    };

    let state = fresh();
    state = push(reduce(state, { kind: 'READY', slot: 'p1' }, ctx(0)));
    state = push(reduce(state, { kind: 'READY', slot: 'p2' }, ctx(0)));
    state = push(reduce(state, { kind: 'TIMER' }, ctx(COUNTDOWN_MS)));
    state = push(reduce(
      state,
      { kind: 'SKILL', slot: 'p1', skillId: 'handprint_1' },
      ctx(COUNTDOWN_MS + 10),
    ));
    state = push(reduce(
      state,
      { kind: 'TAP', slot: 'p2', x: -50, y: -50 },
      ctx(COUNTDOWN_MS + 20),
    ));
    for (let index = 0; index < 5 && state.phase === 'PLAYING'; index += 1) {
      const targetIndex = state.targetIndices.find((item) => !state.revealed.includes(item));
      if (targetIndex === undefined) break;
      const rect = state.assignment.puzzle.rects.find((item) => item.index === targetIndex)!;
      state = push(reduce(
        state,
        { kind: 'TAP', slot: 'p1', x: rect.x + 1, y: rect.y + 1 },
        ctx(COUNTDOWN_MS + 100 * (index + 1)),
      ));
    }

    expect([...new Set(all.map((outbound) => outbound.type))].sort()).toEqual(
      ['BLIND', 'COUNTDOWN', 'END', 'LOCK', 'OPPONENT_PROGRESS', 'REVEAL', 'START'].sort(),
    );
    for (const outbound of all) {
      expect(() => encodeEnvelope(outbound.type, 1, outbound.payload)).not.toThrow();
    }
  });
});
