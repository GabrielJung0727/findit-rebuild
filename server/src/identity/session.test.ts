import { afterAll, beforeAll, describe, expect, it } from 'vitest';
import { TestClock } from '../platform/clock.js';
import { createCache, KEY, type Cache } from '../platform/redis.js';
import {
  createGuestSession, createSession, revokeSession, verifySession, type SessionDeps,
} from './session.js';

describe('빈 토큰 가드', () => {
  it('빈 토큰은 Redis 를 때리지 않고 null 이다', async () => {
    let calls = 0;
    const counting: Cache = {
      get: async () => {
        calls += 1;
        return null;
      },
      setEx: async () => {
        calls += 1;
      },
      del: async () => {
        calls += 1;
      },
      listPushRight: async () => { calls += 1; },
      listPopLeft: async () => { calls += 1; return null; },
      listRemove: async () => { calls += 1; },
      listLength: async () => { calls += 1; return 0; },
      ping: async () => {},
      close: async () => {},
    };
    const spyDeps: SessionDeps = {
      cache: counting,
      clock: new TestClock(1_000_000),
      guests: { register: async () => 'guest-x' },
      audit: { recordIssued: async () => {}, recordRevoked: async () => {} },
    };

    expect(await verifySession(spyDeps, '')).toBeNull();
    expect(calls).toBe(0);
  });
});

const url = process.env['REDIS_URL'];
const suite = url ? describe : describe.skip;

suite('세션', () => {
  const clock = new TestClock(1_000_000);
  const audit = { issued: [] as string[], revoked: [] as string[] };
  const guests = { ids: [] as string[] };

  let cache: Cache;
  let deps: SessionDeps;

  beforeAll(() => {
    cache = createCache(url!, () => {});
    deps = {
      cache,
      clock,
      guests: {
        register: async (tokenHash: string) => {
          const id = `guest-${tokenHash.slice(0, 8)}`;
          guests.ids.push(id);
          return id;
        },
      },
      audit: {
        recordIssued: async (_accountId: string, tokenHash: string) => {
          audit.issued.push(tokenHash);
        },
        recordRevoked: async (tokenHash: string) => {
          audit.revoked.push(tokenHash);
        },
      },
    };
  });

  afterAll(async () => {
    await cache.close();
  });

  it('계정 세션을 발급하고 검증한다', async () => {
    const { token } = await createSession(deps, 'acc-1');
    expect(await verifySession(deps, token)).toEqual({ kind: 'account', accountId: 'acc-1' });
  });

  it('게스트 세션은 계정과 구분된다', async () => {
    const { token } = await createGuestSession(deps);
    const principal = await verifySession(deps, token);
    expect(principal?.kind).toBe('guest');
  });

  it('게스트 세션이 영속 식별자를 발급받는다 — 광고 카운팅용 (스펙 §6.5)', async () => {
    const before = guests.ids.length;
    await createGuestSession(deps);
    expect(guests.ids.length).toBe(before + 1);
  });

  it('게스트는 단일 활성 제약을 받지 않는다 — 계정이 아니다', async () => {
    const first = await createGuestSession(deps);
    const second = await createGuestSession(deps);
    expect(await verifySession(deps, first.token)).not.toBeNull();
    expect(await verifySession(deps, second.token)).not.toBeNull();
  });

  it('토큰은 매번 다르고 충분히 길다', async () => {
    const first = (await createSession(deps, 'acc-1')).token;
    const second = (await createSession(deps, 'acc-1')).token;
    expect(first).not.toBe(second);
    expect(first.length).toBeGreaterThanOrEqual(48);
  });

  it('없는 토큰은 null 이다', async () => {
    expect(await verifySession(deps, 'nope')).toBeNull();
  });

  it('폐기한 세션은 검증되지 않는다', async () => {
    const { token } = await createSession(deps, 'acc-2');
    await revokeSession(deps, token);
    expect(await verifySession(deps, token)).toBeNull();
  });

  it('새 로그인이 같은 계정의 이전 세션을 무효화한다 — 단일 활성 세션', async () => {
    const first = await createSession(deps, 'acc-3');
    const second = await createSession(deps, 'acc-3');
    expect(await verifySession(deps, first.token)).toBeNull();
    expect(await verifySession(deps, second.token)).not.toBeNull();
  });

  it('동시 로그인에서도 활성 세션이 하나만 남는다', async () => {
    const [first, second] = await Promise.all([
      createSession(deps, 'acc-race'),
      createSession(deps, 'acc-race'),
    ]);
    const valid = (await Promise.all([
      verifySession(deps, first.token),
      verifySession(deps, second.token),
    ])).filter((principal) => principal !== null);
    expect(valid).toHaveLength(1);
  });

  it('이전 토큰의 logout 이 새 로그인 세션을 무효화하지 않는다', async () => {
    const first = await createSession(deps, 'acc-logout-race');
    const second = await createSession(deps, 'acc-logout-race');
    await revokeSession(deps, first.token);
    expect(await verifySession(deps, second.token)).not.toBeNull();
  });

  it('감사 기록에 원문 토큰이 들어가지 않는다', async () => {
    const { token } = await createSession(deps, 'acc-4');
    expect(audit.issued).not.toContain(token);
    expect(audit.issued.at(-1)).toMatch(/^[0-9a-f]{64}$/);
  });

  it('Redis 에 저장된 값에도 원문 토큰이 없다', async () => {
    const { token } = await createSession(deps, 'acc-5');
    const raw = await cache.get(KEY.session(token));
    expect(raw).not.toBeNull();
    expect(raw).not.toContain(token);
  });
});
