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
      expect(battle[slot]).toMatchObject({
        ready: false,
        found: [],
        combo: 0,
        skillActiveUntil: 0,
      });
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
