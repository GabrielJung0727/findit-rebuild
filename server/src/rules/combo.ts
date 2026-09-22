// 콤보 보너스 — 스펙 §3.2. 원작 GameView.comboScoreBonus / comboTimeBonus 와 동일.

const SCORE_BONUS = [100, 200, 400, 700] as const;
const TIME_BONUS_MS = [1000, 2000, 4000, 7000] as const;

/** 콤보 n 이 4 를 넘어도 보너스는 포화한다. 원작이 그렇게 잘랐다. */
function tableLookup(table: readonly number[], combo: number): number {
  if (combo <= 0) return 0;
  const index = Math.min(combo, table.length) - 1;
  return table[index]!;
}

export function comboScoreBonus(combo: number): number {
  return tableLookup(SCORE_BONUS, combo);
}

/**
 * 기획 수치로 보존하되 P0 배틀 엔진은 소비하지 않는다 (스펙 §3.2 판정).
 * 원작도 이 값을 정의만 하고 호출한 적이 없으며, 원본 주석은 매치 시계가 아니라
 * 아이템 지속시간을 가리킨다. 아이템 체계를 세우는 P1 에서 재검토한다.
 */
export function comboTimeBonusMs(combo: number): number {
  return tableLookup(TIME_BONUS_MS, combo);
}
