import { afterAll, beforeAll, describe, expect, it } from 'vitest';
import { readFileSync } from 'node:fs';
import { resolve } from 'node:path';
import { createDb, type Db } from '../platform/pg.js';
import {
  createAccount, createGuestRegistry, createSessionAudit, findAccountByEmail,
} from './repository.js';

let sequence = 0;
const email = (): string => `t${process.pid}-${++sequence}@example.test`;
const hash = (): string => `h${process.pid}-${++sequence}`;

const url = process.env['DATABASE_URL'];
const suite = url ? describe : describe.skip;

suite('identity 저장소', () => {
  let db: Db;

  beforeAll(async () => {
    db = createDb(url!);
    await db.query(readFileSync(resolve(import.meta.dirname, '../../sql/001_init.sql'), 'utf8'));
  });

  afterAll(async () => {
    await db.close();
  });

  it('계정과 프로필을 함께 만든다', async () => {
    const { accountId } = await createAccount(db, {
      email: email(), passwordHash: 'bcrypt-stub', nickname: '테스터', characterId: 3,
    });

    const profile = await db.query<{ level: number; coins: string }>(
      `SELECT level, coins FROM player_profile WHERE account_id = $1`, [accountId],
    );
    expect(profile).toHaveLength(1);
    expect(profile[0]!.level).toBe(1);
  });

  it('프로필 생성이 실패하면 계정도 남지 않는다 — 한 트랜잭션이어야 한다', async () => {
    const probe = '__tx_rollback_probe__';
    await db.query(`
      CREATE OR REPLACE FUNCTION test_block_profile() RETURNS trigger AS $fn$
      BEGIN
        IF EXISTS (
          SELECT 1 FROM account WHERE id = NEW.account_id AND nickname = '${probe}'
        ) THEN
          RAISE EXCEPTION 'test: player_profile 삽입을 일부러 막는다';
        END IF;
        RETURN NEW;
      END;
      $fn$ LANGUAGE plpgsql;

      DROP TRIGGER IF EXISTS test_block_profile_trg ON player_profile;
      CREATE TRIGGER test_block_profile_trg
        BEFORE INSERT ON player_profile
        FOR EACH ROW EXECUTE FUNCTION test_block_profile();
    `);

    const address = email();
    try {
      await expect(createAccount(db, {
        email: address, passwordHash: 'h', nickname: probe, characterId: 0,
      })).rejects.toThrow();

      const rows = await db.query(`SELECT id FROM account WHERE email = $1`, [address]);
      expect(rows).toHaveLength(0);
    } finally {
      await db.query(`
        DROP TRIGGER IF EXISTS test_block_profile_trg ON player_profile;
        DROP FUNCTION IF EXISTS test_block_profile();
      `);
    }
  });

  it('이메일로 계정을 찾고 password_hash 를 함께 준다', async () => {
    const address = email();
    const { accountId } = await createAccount(db, {
      email: address, passwordHash: 'bcrypt-stub', nickname: '테스터', characterId: 7,
    });

    const found = await findAccountByEmail(db, address);
    expect(found?.id).toBe(accountId);
    expect(found?.password_hash).toBe('bcrypt-stub');
    expect(found?.character_id).toBe(7);
  });

  it('없는 이메일은 null 이다 — 던지지 않는다', async () => {
    expect(await findAccountByEmail(db, `missing-${email()}`)).toBeNull();
  });

  it('게스트 등록이 guest_session 행을 남긴다 — 광고 카운팅의 근거다', async () => {
    const tokenHash = hash();
    const guestId = await createGuestRegistry(db).register(tokenHash);
    expect(guestId).toMatch(/^guest-/);

    const rows = await db.query<{ ad_views: number }>(
      `SELECT ad_views FROM guest_session WHERE token_hash = $1`, [tokenHash],
    );
    expect(rows).toHaveLength(1);
    expect(rows[0]!.ad_views).toBe(0);
  });

  it('발급 감사가 session_log 에 기록된다 — 원문 토큰은 들어가지 않는다', async () => {
    const { accountId } = await createAccount(db, {
      email: email(), passwordHash: 'h', nickname: 'n', characterId: 0,
    });
    const tokenHash = hash();
    await createSessionAudit(db).recordIssued(accountId, tokenHash);

    const rows = await db.query<{ account_id: string; revoked_at: Date | null }>(
      `SELECT account_id, revoked_at FROM session_log WHERE token_hash = $1`, [tokenHash],
    );
    expect(rows).toHaveLength(1);
    expect(rows[0]!.account_id).toBe(accountId);
    expect(rows[0]!.revoked_at).toBeNull();
  });

  it('폐기 감사가 revoked_at 을 채운다', async () => {
    const { accountId } = await createAccount(db, {
      email: email(), passwordHash: 'h', nickname: 'n', characterId: 0,
    });
    const audit = createSessionAudit(db);
    const tokenHash = hash();
    await audit.recordIssued(accountId, tokenHash);
    await audit.recordRevoked(tokenHash);

    const rows = await db.query<{ revoked_at: Date | null }>(
      `SELECT revoked_at FROM session_log WHERE token_hash = $1`, [tokenHash],
    );
    expect(rows[0]!.revoked_at).not.toBeNull();
  });

  it('이미 폐기된 기록의 시각을 덮어쓰지 않는다 — revoked_at IS NULL 조건', async () => {
    const { accountId } = await createAccount(db, {
      email: email(), passwordHash: 'h', nickname: 'n', characterId: 0,
    });
    const audit = createSessionAudit(db);
    const tokenHash = hash();
    await audit.recordIssued(accountId, tokenHash);
    await audit.recordRevoked(tokenHash);

    const sentinel = '2000-01-01T00:00:00.000Z';
    await db.query(
      `UPDATE session_log SET revoked_at = $1 WHERE token_hash = $2`, [sentinel, tokenHash],
    );

    await audit.recordRevoked(tokenHash);

    const [row] = await db.query<{ ts: string }>(
      `SELECT to_char(revoked_at AT TIME ZONE 'UTC', 'YYYY-MM-DD"T"HH24:MI:SS.MS"Z"') AS ts
         FROM session_log WHERE token_hash = $1`, [tokenHash],
    );
    expect(row!.ts).toBe(sentinel);
  });
});
