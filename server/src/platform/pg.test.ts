import { afterAll, beforeAll, describe, expect, it } from 'vitest';
import { readFileSync } from 'node:fs';
import { resolve } from 'node:path';
import { createDb, type Db } from './pg.js';

let sequence = 0;
const unique = (): string => `${process.pid}-${++sequence}`;

const url = process.env['DATABASE_URL'];
const suite = url ? describe : describe.skip;

suite('pg 어댑터', () => {
  let db: Db;

  beforeAll(async () => {
    db = createDb(url!);
    await db.query(readFileSync(resolve(import.meta.dirname, '../../sql/001_init.sql'), 'utf8'));
  });

  afterAll(async () => {
    await db.close();
  });

  it('스키마의 P0 테이블이 전부 생성된다', async () => {
    const rows = await db.query<{ table_name: string }>(
      `SELECT table_name FROM information_schema.tables WHERE table_schema = 'public'`,
    );
    const names = rows.map((row) => row.table_name).sort();
    expect(names).toEqual(
      [
        'account',
        'content_version',
        'guest_session',
        'inventory_item',
        'match_history',
        'player_profile',
        'session_log',
      ].sort(),
    );
  });

  it('001_init.sql 을 두 번 적용해도 스키마가 그대로다 — 재기동 시 매번 돈다', async () => {
    const sql = readFileSync(resolve(import.meta.dirname, '../../sql/001_init.sql'), 'utf8');
    await expect(db.query(sql)).resolves.toEqual([]);

    const rows = await db.query<{ table_name: string }>(
      `SELECT table_name FROM information_schema.tables WHERE table_schema = 'public'`,
    );
    expect(rows.map((row) => row.table_name).sort()).toEqual(
      [
        'account',
        'content_version',
        'guest_session',
        'inventory_item',
        'match_history',
        'player_profile',
        'session_log',
      ].sort(),
    );
  });

  it('다중 문장 질의도 T[] 계약을 지킨다', async () => {
    const rows = await db.query<{ n: number }>('SELECT 1 AS n; SELECT 2 AS n;');
    expect(Array.isArray(rows)).toBe(true);
    expect(rows.map((row) => row.n)).toEqual([1, 2]);
  });

  it('파라미터 바인딩이 동작한다', async () => {
    const rows = await db.query<{ n: number }>('SELECT $1::int AS n', [42]);
    expect(rows[0]?.n).toBe(42);
  });

  it('이메일이 중복되면 거부한다', async () => {
    const email = `dup-${unique()}@example.com`;
    await db.query('INSERT INTO account(email, password_hash, nickname) VALUES($1,$2,$3)', [
      email,
      'x',
      'a',
    ]);
    await expect(
      db.query('INSERT INTO account(email, password_hash, nickname) VALUES($1,$2,$3)', [
        email,
        'y',
        'b',
      ]),
    ).rejects.toThrow();
  });

  it('tx 는 예외 시 롤백한다', async () => {
    const email = `rb-${unique()}@example.com`;
    await expect(
      db.tx(async (transaction) => {
        await transaction.query('INSERT INTO account(email, password_hash, nickname) VALUES($1,$2,$3)', [
          email,
          'x',
          'a',
        ]);
        throw new Error('의도적 실패');
      }),
    ).rejects.toThrow(/의도적 실패/);

    const rows = await db.query('SELECT 1 FROM account WHERE email = $1', [email]);
    expect(rows).toHaveLength(0);
  });

  it('tx 는 성공 시 커밋한다', async () => {
    const email = `ok-${unique()}@example.com`;
    await db.tx(async (transaction) => {
      await transaction.query('INSERT INTO account(email, password_hash, nickname) VALUES($1,$2,$3)', [
        email,
        'x',
        'a',
      ]);
    });
    expect(await db.query('SELECT 1 FROM account WHERE email = $1', [email])).toHaveLength(1);
  });

  it('inventory_item 은 account 삭제 시 함께 지워진다', async () => {
    const email = `inv-${unique()}@example.com`;
    const [account] = await db.query<{ id: string }>(
      'INSERT INTO account(email, password_hash, nickname) VALUES($1,$2,$3) RETURNING id',
      [email, 'x', 'a'],
    );
    await db.query('INSERT INTO inventory_item(account_id, item_code, quantity) VALUES($1,$2,$3)', [
      account!.id,
      'slot_item_pen_01',
      1,
    ]);
    await db.query('DELETE FROM account WHERE id = $1', [account!.id]);
    expect(await db.query('SELECT 1 FROM inventory_item WHERE account_id = $1', [account!.id]))
      .toHaveLength(0);
  });

  it('같은 계정이 같은 아이템 행을 두 번 가질 수 없다', async () => {
    const email = `dupinv-${unique()}@example.com`;
    const [account] = await db.query<{ id: string }>(
      'INSERT INTO account(email, password_hash, nickname) VALUES($1,$2,$3) RETURNING id',
      [email, 'x', 'a'],
    );
    await db.query('INSERT INTO inventory_item(account_id, item_code) VALUES($1,$2)', [
      account!.id,
      'slot_item_ring_01',
    ]);
    await expect(
      db.query('INSERT INTO inventory_item(account_id, item_code) VALUES($1,$2)', [
        account!.id,
        'slot_item_ring_01',
      ]),
    ).rejects.toThrow();
  });

  it('게스트 토큰 해시는 중복될 수 없다', async () => {
    const tokenHash = `hash-${unique()}`;
    await db.query('INSERT INTO guest_session(token_hash) VALUES($1)', [tokenHash]);
    await expect(db.query('INSERT INTO guest_session(token_hash) VALUES($1)', [tokenHash]))
      .rejects.toThrow();
  });

  it('player_profile 은 account 삭제 시 함께 지워진다', async () => {
    const email = `cas-${unique()}@example.com`;
    const [account] = await db.query<{ id: string }>(
      'INSERT INTO account(email, password_hash, nickname) VALUES($1,$2,$3) RETURNING id',
      [email, 'x', 'a'],
    );
    await db.query('INSERT INTO player_profile(account_id) VALUES($1)', [account!.id]);
    await db.query('DELETE FROM account WHERE id = $1', [account!.id]);
    expect(await db.query('SELECT 1 FROM player_profile WHERE account_id = $1', [account!.id]))
      .toHaveLength(0);
  });
});
