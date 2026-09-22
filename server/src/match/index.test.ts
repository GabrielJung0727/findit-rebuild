import { afterAll, beforeAll, describe, expect, it } from 'vitest';
import { createCache, KEY, type Cache } from '../platform/redis.js';
import { createMatchIndex } from './index.js';

describe('KEY.match', () => {
  it('세션·게스트와 다른 접두어를 쓴다', () => {
    expect(KEY.match('m1')).toBe('findit:match:m1');
    expect(KEY.match('m1')).not.toBe(KEY.session('m1'));
    expect(KEY.match('m1')).not.toBe(KEY.guest('m1'));
  });
});

const url = process.env['REDIS_URL'];
const suite = url ? describe : describe.skip;

suite('매치 인덱스', () => {
  let cache: Cache;
  let sequence = 0;
  const id = (): string => `m-${process.pid}-${++sequence}`;

  beforeAll(() => { cache = createCache(url!, () => {}); });
  afterAll(async () => { await cache.close(); });

  it('넣은 매치의 퍼즐 id 를 돌려준다', async () => {
    const matchId = id();
    const index = createMatchIndex(cache);
    await index.put(matchId, 'a0001');
    expect(await index.puzzleIdOf(matchId)).toBe('a0001');
  });

  it('모르는 매치는 null 이다 — 던지지 않는다', async () => {
    expect(await createMatchIndex(cache).puzzleIdOf(id())).toBeNull();
  });

  it('drop 한 매치는 더 이상 조회되지 않는다 — 끝난 판의 URL 이 계속 먹으면 안 된다', async () => {
    const matchId = id();
    const index = createMatchIndex(cache);
    await index.put(matchId, 'a0001');
    await index.drop(matchId);
    expect(await index.puzzleIdOf(matchId)).toBeNull();
  });

  it('TTL 이 걸려 있다 — drop 을 놓쳐도 영원히 남지 않는다', async () => {
    const matchId = id();
    await createMatchIndex(cache, 200).put(matchId, 'a0001');
    await new Promise((resolve) => setTimeout(resolve, 350));
    expect(await createMatchIndex(cache).puzzleIdOf(matchId)).toBeNull();
  });

  it('빈 matchId 는 Redis 를 때리지 않고 null 이다', async () => {
    let calls = 0;
    const counting: Cache = {
      get: async () => { calls += 1; return null; },
      setEx: async () => { calls += 1; },
      del: async () => { calls += 1; },
      listPushRight: async () => { calls += 1; },
      listPopLeft: async () => { calls += 1; return null; },
      listRemove: async () => { calls += 1; },
      listLength: async () => { calls += 1; return 0; },
      ping: async () => {},
      close: async () => {},
    };
    expect(await createMatchIndex(counting).puzzleIdOf('')).toBeNull();
    expect(calls).toBe(0);
  });
});
