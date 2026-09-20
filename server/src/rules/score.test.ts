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
