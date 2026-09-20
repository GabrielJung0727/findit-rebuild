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
  const src = readFileSync(resolve(ROOT, 'legacy/server/src/util/balance.js'), 'utf8');

  it('LEVEL_SCORE 가 legacy balance.js 와 값까지 같다', () => {
    const block = src.slice(src.indexOf('const LEVEL_SCORE = ['));
    const numbers = block
      .slice(0, block.indexOf('];'))
      .match(/\d+/g)!
      .map(Number);
    expect(LEVEL_SCORE).toEqual(numbers);
  });

  it('LEVEL_ABILITY 가 legacy balance.js 와 값까지 같다', () => {
    const block = src.slice(src.indexOf('const LEVEL_ABILITY = ['));
    const rows = Array.from(
      block.slice(0, block.indexOf('];')).matchAll(
        /\[\s*(\d+(?:\.\d+)?)\s*,\s*(\d+(?:\.\d+)?)\s*,\s*(\d+(?:\.\d+)?)\s*\]/g,
      ),
      ([, attack, defense, hp]) => [Number(attack), Number(defense), Number(hp)] as const,
    );
    expect(LEVEL_ABILITY).toEqual(rows);
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

  it('11 계급이 모두 도달 가능하고 경계가 겹치지 않는다', () => {
    const reached = new Set<string>();
    for (let lv = 1; lv <= 100; lv++) reached.add(rankNameForLevel(lv));
    expect(reached.size).toBe(11);
    expect([80, 81, 85, 86, 90, 91].map(rankNameForLevel)).toEqual([
      '고양이', '매', '매', '독수리', '독수리', '타조',
    ]);
  });

  it('범위를 벗어난 레벨을 [1, 100]으로 clamp 한다', () => {
    expect(rankNameForLevel(-5)).toBe('지렁이');
    expect(rankNameForLevel(500)).toBe('타조');
  });
});
