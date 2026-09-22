import type { Db } from '../platform/pg.js';
import type { GuestRegistry, SessionAudit } from './types.js';

export interface AccountRow {
  id: string;
  email: string;
  password_hash: string;
  nickname: string;
  character_id: number;
}

export async function createAccount(
  db: Db,
  params: { email: string; passwordHash: string; nickname: string; characterId: number },
): Promise<{ accountId: string }> {
  return db.tx(async (tx) => {
    const [row] = await tx.query<{ id: string }>(
      `INSERT INTO account(email, password_hash, nickname, character_id)
       VALUES($1, $2, $3, $4) RETURNING id`,
      [params.email, params.passwordHash, params.nickname, params.characterId],
    );
    await tx.query(`INSERT INTO player_profile(account_id) VALUES($1)`, [row!.id]);
    return { accountId: row!.id };
  });
}

export async function findAccountByEmail(db: Db, email: string): Promise<AccountRow | null> {
  const rows = await db.query<AccountRow>(`SELECT * FROM account WHERE email = $1`, [email]);
  return rows[0] ?? null;
}

export function createGuestRegistry(db: Db): GuestRegistry {
  return {
    async register(tokenHash: string): Promise<string> {
      const [row] = await db.query<{ id: string }>(
        `INSERT INTO guest_session(token_hash) VALUES($1) RETURNING id`,
        [tokenHash],
      );
      return `guest-${row!.id}`;
    },
  };
}

/** Postgres 를 감사 기록으로만 쓴다. 검증 경로에는 관여하지 않는다. */
export function createSessionAudit(db: Db): SessionAudit {
  return {
    async recordIssued(accountId: string, tokenHash: string): Promise<void> {
      await db.query(
        `INSERT INTO session_log(account_id, token_hash) VALUES($1, $2)`,
        [accountId, tokenHash],
      );
    },
    async recordRevoked(tokenHash: string): Promise<void> {
      await db.query(
        `UPDATE session_log SET revoked_at = now()
          WHERE token_hash = $1 AND revoked_at IS NULL`,
        [tokenHash],
      );
    },
  };
}
