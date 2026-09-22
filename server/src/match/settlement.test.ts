import { afterAll, beforeAll, describe, expect, it } from 'vitest';
import { readFileSync } from 'node:fs';
import { resolve } from 'node:path';
import { createDb, type Db } from '../platform/pg.js';
import { createAccount } from '../identity/repository.js';
import { createBattle } from '../battle/state.js';
import { assignPuzzle } from '../content/assigner.js';
import { createRng } from '../platform/rng.js';
import type { EndPayloads } from './runner.js';
import { persistSettlement, settlementRows, type SettlementRow } from './settlement.js';

describe('정산 행 만들기', () => {
  const base = createBattle({
    matchId: 'm1',
    assignment: assignPuzzle([{
      id: 'p1', width: 1024, height: 768,
      rects: Array.from({ length: 7 }, (_, index) => ({
        index, x: 111 + index * 97, y: 211, w: 33, h: 29, sourceDrawable: `p1_${index}`,
      })),
    }], createRng(7)),
    p1: { name: 'A', level: 10, isAi: false },
    p2: { name: 'B', level: 10, isAi: false },
  });

  const ends: EndPayloads = {
    p1: { result: 'win', myFound: 3, opponentFound: 2, score: 700, coinDelta: 5, expDelta: 30 },
    p2: { result: 'lose', myFound: 2, opponentFound: 3, score: 200, coinDelta: 0, expDelta: 20 },
  };

  it('사람 둘이면 두 행이 나오고 숫자는 END 페이로드에서 온다', () => {
    expect(base.p1.found).toHaveLength(0);
    expect(base.p2.found).toHaveLength(0);

    const rows = settlementRows({ state: base, ends, accountIds: {} });
    expect(rows).toHaveLength(2);
    expect(rows[0]).toMatchObject({
      result: 'win', foundCount: 3, opponentFound: 2,
      scoreDelta: 700, coinDelta: 5, expDelta: 30, vsAi: false,
    });
    expect(rows[1]).toMatchObject({
      result: 'lose', foundCount: 2, opponentFound: 3,
      scoreDelta: 200, coinDelta: 0, expDelta: 20,
    });
  });

  it('AI 슬롯은 행을 만들지 않는다 — 전적은 사람의 것이다', () => {
    const vsAi = { ...base, p2: { ...base.p2, isAi: true } };
    const rows = settlementRows({ state: vsAi, ends, accountIds: {} });
    expect(rows).toHaveLength(1);
    expect(rows[0]!.result).toBe('win');
    expect(rows[0]!.vsAi).toBe(true);
  });

  it('계정이면 accountId, 게스트면 null 이다', () => {
    const rows = settlementRows({
      state: base, ends, accountIds: { p1: 'acc-1', p2: null },
    });
    expect(rows[0]!.accountId).toBe('acc-1');
    expect(rows[1]!.accountId).toBeNull();
  });

  it('END 페이로드가 없는 슬롯은 건너뛴다 — 값을 지어내지 않는다', () => {
    const rows = settlementRows({ state: base, ends: { p1: ends.p1 }, accountIds: {} });
    expect(rows).toHaveLength(1);
    expect(rows[0]!.result).toBe('win');
  });
});

const url = process.env['DATABASE_URL'];
const suite = url ? describe : describe.skip;

suite('정산 영속화', () => {
  let db: Db;
  let seq = 0;
  const email = (): string => `s${process.pid}-${++seq}@example.test`;
  const matchId = (): string => `m-${process.pid}-${++seq}`;

  beforeAll(async () => {
    db = createDb(url!);
    await db.query(readFileSync(resolve(import.meta.dirname, '../../sql/001_init.sql'), 'utf8'));
  });

  afterAll(async () => {
    await db.close();
  });

  async function newAccount(): Promise<string> {
    const { accountId } = await createAccount(db, {
      email: email(), passwordHash: 'h', nickname: 'n', characterId: 0,
    });
    return accountId;
  }

  function recording(inner: Db, seen: string[]): Db {
    const note = (sql: string): void => {
      if (/player_profile/i.test(sql)) seen.push('profile');
      if (/match_history/i.test(sql)) seen.push('history');
    };
    return {
      query<T = Record<string, unknown>>(sql: string, params?: unknown[]): Promise<T[]> {
        note(sql);
        return inner.query<T>(sql, params);
      },
      tx<T>(fn: (transaction: Db) => Promise<T>): Promise<T> {
        return inner.tx((transaction) => fn(recording(transaction, seen)));
      },
      close(): Promise<void> { return inner.close(); },
    };
  }

  const row = (over: Partial<SettlementRow> = {}): SettlementRow => ({
    accountId: null, matchId: matchId(), puzzleId: 'a0001',
    result: 'win', foundCount: 3, opponentFound: 2,
    scoreDelta: 100, coinDelta: 5, expDelta: 30, vsAi: false,
    ...over,
  });

  it('전적을 남긴다', async () => {
    const accountId = await newAccount();
    const r = row({ accountId });
    await persistSettlement(db, r);

    const [saved] = await db.query<{ result: string; found_count: number; vs_ai: boolean }>(
      `SELECT result, found_count, vs_ai FROM match_history WHERE match_id = $1`, [r.matchId],
    );
    expect(saved).toMatchObject({ result: 'win', found_count: 3, vs_ai: false });
  });

  it('프로필의 점수와 코인이 더해진다 — bigint 를 문자열로 이어붙이면 안 된다', async () => {
    const accountId = await newAccount();
    await persistSettlement(db, row({ accountId, scoreDelta: 100, coinDelta: 5 }));
    await persistSettlement(db, row({ accountId, scoreDelta: 30, coinDelta: 2 }));

    const [profile] = await db.query<{ total_score: string; coins: string }>(
      `SELECT total_score, coins FROM player_profile WHERE account_id = $1`, [accountId],
    );
    expect(Number(profile!.total_score)).toBe(130);
    expect(Number(profile!.coins)).toBe(7);
  });

  it('레벨이 점수에서 다시 계산된다', async () => {
    const accountId = await newAccount();
    const out = await persistSettlement(db, row({ accountId, scoreDelta: 0 }));
    expect(out).not.toBeNull();
    expect(out!.level).toBe(1);
    expect(out!.leveledUp).toBe(false);
  });

  it('레벨이 오른 판에만 스킬 포인트가 1 오른다 — 원작 GameView.java:3265-3267', async () => {
    const accountId = await newAccount();
    const up = await persistSettlement(db, row({ accountId, scoreDelta: 1_000_000 }));
    expect(up!.leveledUp).toBe(true);

    const [afterUp] = await db.query<{ skill_points: number }>(
      `SELECT skill_points FROM player_profile WHERE account_id = $1`, [accountId],
    );
    expect(afterUp!.skill_points).toBe(1);

    const flat = await persistSettlement(db, row({ accountId, scoreDelta: 1 }));
    expect(flat!.leveledUp).toBe(false);

    const [afterFlat] = await db.query<{ skill_points: number }>(
      `SELECT skill_points FROM player_profile WHERE account_id = $1`, [accountId],
    );
    expect(afterFlat!.skill_points).toBe(1);
  });

  it('게스트는 전적만 남기고 프로필을 아예 조회하지 않는다 — account 행이 없다', async () => {
    const r = row({ accountId: null });
    const seen: string[] = [];
    await expect(persistSettlement(recording(db, seen), r)).resolves.toBeNull();

    const [saved] = await db.query<{ account_id: string | null }>(
      `SELECT account_id FROM match_history WHERE match_id = $1`, [r.matchId],
    );
    expect(saved!.account_id).toBeNull();
    expect(seen).toEqual(['history']);
  });

  it('전적과 프로필이 한 트랜잭션이다', async () => {
    const accountId = await newAccount();
    await expect(persistSettlement(db, {
      ...row({ accountId }), result: 'victory' as 'win',
    })).rejects.toThrow();

    const [profile] = await db.query<{ total_score: string }>(
      `SELECT total_score FROM player_profile WHERE account_id = $1`, [accountId],
    );
    expect(Number(profile!.total_score)).toBe(0);
  });

  it('프로필 갱신이 전적 INSERT 보다 먼저 일어난다 — tx 검사를 무력화하지 않기 위한 순서', async () => {
    const accountId = await newAccount();
    const seen: string[] = [];
    await persistSettlement(recording(db, seen), row({ accountId }));

    expect(seen[0]).toBe('profile');
    expect(seen).toContain('history');
    expect(seen.indexOf('profile')).toBeLessThan(seen.indexOf('history'));
  });

  it('점수는 음수로 내려가지 않는다 — CHECK 제약을 어기면 정산이 죽는다', async () => {
    const accountId = await newAccount();
    const out = await persistSettlement(db, row({ accountId, scoreDelta: -500, coinDelta: 0 }));
    const [profile] = await db.query<{ total_score: string }>(
      `SELECT total_score FROM player_profile WHERE account_id = $1`, [accountId],
    );
    expect(Number(profile!.total_score)).toBe(0);
    expect(out!.level).toBe(1);
  });
});
