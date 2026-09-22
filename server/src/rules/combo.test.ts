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
