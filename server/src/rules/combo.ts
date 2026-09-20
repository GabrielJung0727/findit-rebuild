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

export function comboTimeBonusMs(combo: number): number {
  return tableLookup(TIME_BONUS_MS, combo);
}
