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
