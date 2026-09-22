import type { Db } from '../platform/pg.js';
import { levelForScore } from '../rules/levels.js';
import { opponentOf, type BattleState, type PlayerSlot } from '../battle/state.js';
import type { EndPayloads } from './runner.js';

export interface SettlementRow {
  accountId: string | null;
  matchId: string;
  puzzleId: string;
  result: 'win' | 'lose' | 'draw';
  foundCount: number;
  opponentFound: number;
  scoreDelta: number;
  coinDelta: number;
  expDelta: number;
  vsAi: boolean;
}

export interface SettlementInputs {
  state: BattleState;
  ends: EndPayloads;
  accountIds: Partial<Record<PlayerSlot, string | null>>;
}

/**
 * 결과 화면에 보낸 END 페이로드를 전적 행으로 옮긴다. 점수·발견 수·코인·경험치는
 * 상태에서 다시 계산하지 않는다. 콤보 보너스 등 상태만으로 복원할 수 없는 값과
 * 클라이언트가 본 결과가 갈라지지 않도록 END가 정산의 단일 권위값이다.
 */
export function settlementRows(inputs: SettlementInputs): SettlementRow[] {
  const { state, ends, accountIds } = inputs;
  const rows: SettlementRow[] = [];

  for (const slot of ['p1', 'p2'] as const) {
    const me = state[slot];
    if (me.isAi) continue;

    const payload = ends[slot];
    if (payload === undefined) continue;

    const other = state[opponentOf(slot)];
    rows.push({
      accountId: accountIds[slot] ?? null,
      matchId: state.matchId,
      puzzleId: state.puzzleId,
      result: payload['result'] as SettlementRow['result'],
      foundCount: Number(payload['myFound']),
      opponentFound: Number(payload['opponentFound']),
      scoreDelta: Number(payload['score']),
      coinDelta: Number(payload['coinDelta']),
      expDelta: Number(payload['expDelta']),
      vsAi: other.isAi,
    });
  }

  return rows;
}

export async function persistSettlement(
  db: Db,
  row: SettlementRow,
): Promise<{ level: number; leveledUp: boolean } | null> {
  return db.tx(async (transaction) => {
    const profile = row.accountId === null
      ? null
      : await updateProfile(transaction, row.accountId, row);

    await transaction.query(
      `INSERT INTO match_history(
         match_id, account_id, puzzle_id, result,
         found_count, opponent_found, score_delta, coin_delta, exp_delta, vs_ai)
       VALUES($1, $2, $3, $4, $5, $6, $7, $8, $9, $10)`,
      [
        row.matchId, row.accountId, row.puzzleId, row.result,
        row.foundCount, row.opponentFound, row.scoreDelta, row.coinDelta,
        row.expDelta, row.vsAi,
      ],
    );

    return profile;
  });
}

async function updateProfile(
  transaction: Db,
  accountId: string,
  row: SettlementRow,
): Promise<{ level: number; leveledUp: boolean } | null> {
  const [current] = await transaction.query<{ total_score: string }>(
    `SELECT total_score FROM player_profile WHERE account_id = $1 FOR UPDATE`,
    [accountId],
  );
  if (current === undefined) return null;

  const beforeLevel = levelForScore(Number(current.total_score));
  const [updated] = await transaction.query<{ total_score: string }>(
    `UPDATE player_profile
        SET total_score = GREATEST(0, total_score + $2),
            coins = GREATEST(0, coins + $3),
            updated_at = now()
      WHERE account_id = $1
      RETURNING total_score`,
    [accountId, row.scoreDelta, row.coinDelta],
  );

  const level = levelForScore(Number(updated!.total_score));
  const leveledUp = level > beforeLevel;
  await transaction.query(
    `UPDATE player_profile
        SET level = $2, skill_points = skill_points + $3
      WHERE account_id = $1`,
    [accountId, level, leveledUp ? 1 : 0],
  );

  return { level, leveledUp };
}
