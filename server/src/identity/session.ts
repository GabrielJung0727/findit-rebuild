import { createHash, randomBytes } from 'node:crypto';
import type { Clock } from '../platform/clock.js';
import { KEY, type Cache } from '../platform/redis.js';
import type { GuestRegistry, Principal, SessionAudit } from './types.js';

const TOKEN_BYTES = 24;
const SESSION_TTL_MS = 7 * 24 * 60 * 60 * 1_000;

export interface SessionDeps {
  cache: Cache;
  clock: Clock;
  audit: SessionAudit;
  guests: GuestRegistry;
}

function newToken(): string {
  return randomBytes(TOKEN_BYTES).toString('hex');
}

/** 감사 기록과 인덱싱에 쓰는 해시. 원문 토큰은 어디에도 남기지 않는다. */
function hashToken(token: string): string {
  return createHash('sha256').update(token).digest('hex');
}

/** 계정당 현재 활성 토큰. 새 로그인이 이전 것을 밀어낸다. */
const ACTIVE = (accountId: string): string => `findit:active:${accountId}`;

/**
 * 마지막에 ACTIVE 를 쓴 토큰만 유효하게 해 동시 로그인에서도 단일 활성 세션을 보장한다.
 */
export async function createSession(
  deps: SessionDeps,
  accountId: string,
): Promise<{ token: string }> {
  const token = newToken();
  const payload: Principal = { kind: 'account', accountId };
  await deps.cache.setEx(KEY.session(token), JSON.stringify(payload), SESSION_TTL_MS);
  await deps.cache.setEx(ACTIVE(accountId), token, SESSION_TTL_MS);
  await deps.audit.recordIssued(accountId, hashToken(token));
  return { token };
}

/** 게임 상태는 저장하지 않고, 광고 노출 카운팅용 영속 식별자만 만든다. */
export async function createGuestSession(deps: SessionDeps): Promise<{ token: string }> {
  const token = newToken();
  const tokenHash = hashToken(token);
  const guestId = await deps.guests.register(tokenHash);
  const payload: Principal = { kind: 'guest', guestId };
  await deps.cache.setEx(KEY.session(token), JSON.stringify(payload), SESSION_TTL_MS);
  return { token };
}

export async function verifySession(deps: SessionDeps, token: string): Promise<Principal | null> {
  if (!token) return null;
  const raw = await deps.cache.get(KEY.session(token));
  if (raw === null) return null;

  let principal: Principal;
  try {
    principal = JSON.parse(raw) as Principal;
  } catch {
    return null;
  }

  if (principal.kind === 'account') {
    const active = await deps.cache.get(ACTIVE(principal.accountId));
    if (active !== token) return null;
  }
  return principal;
}

/** ACTIVE 를 지우지 않아 늦게 도착한 이전 토큰 logout 이 새 세션을 지우지 못하게 한다. */
export async function revokeSession(deps: SessionDeps, token: string): Promise<void> {
  await deps.cache.del(KEY.session(token));
  await deps.audit.recordRevoked(hashToken(token));
}
