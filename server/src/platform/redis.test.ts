import { afterAll, beforeAll, describe, expect, it } from 'vitest';
import { KEY, createCache, type Cache } from './redis.js';

let sequence = 0;
const unique = (): string => `${process.pid}-${++sequence}`;

describe('KEY 네임스페이스', () => {
  it('세션과 게스트가 서로 다른 접두어를 쓴다', () => {
    expect(KEY.session('t')).toBe('findit:session:t');
    expect(KEY.guest('t')).toBe('findit:guest:t');
  });

  it('같은 토큰이라도 두 키가 충돌하지 않는다', () => {
    expect(KEY.session('x')).not.toBe(KEY.guest('x'));
  });
});

describe('연결 확인', () => {
  it('닿을 수 없으면 ping 이 거부된다 — 부팅을 실패시키기 위한 계약', async () => {
    const seen: Error[] = [];
    const dead = createCache('redis://127.0.0.1:1', (error) => seen.push(error));
    await expect(dead.ping(3_000)).rejects.toThrow();
    expect(seen.length).toBeGreaterThan(0);
    await dead.close();
  }, 10_000);
});

const url = process.env['REDIS_URL'];
const suite = url ? describe : describe.skip;

suite('Redis 어댑터', () => {
  // suite 본문 최상위에서 만들지 않는다. describe.skip 도 본문은 평가하므로
  // url 이 없어도 ioredis 가 기본 localhost 로 붙으려 할 수 있다.
  // beforeAll 은 skip 된 suite에서 실행되지 않는다.
  let cache: Cache;
  beforeAll(() => {
    cache = createCache(url!);
  });

  afterAll(async () => {
    await cache.close();
  });

  it('넣은 값을 읽는다', async () => {
    const key = `findit:test:${unique()}`;
    await cache.setEx(key, 'hello', 5_000);
    expect(await cache.get(key)).toBe('hello');
  });

  it('없는 키는 null 이다', async () => {
    expect(await cache.get(`findit:test:missing:${unique()}`)).toBeNull();
  });

  it('지운 키는 null 이다', async () => {
    const key = `findit:test:del:${unique()}`;
    await cache.setEx(key, 'value', 5_000);
    await cache.del(key);
    expect(await cache.get(key)).toBeNull();
  });

  it('TTL 이 지나면 사라진다', async () => {
    const key = `findit:test:ttl:${unique()}`;
    await cache.setEx(key, 'value', 100);
    await new Promise<void>((resolve) => setTimeout(resolve, 250));
    expect(await cache.get(key)).toBeNull();
  });

  it('TTL 이 0 이하면 던진다 — 즉시 사라지는 세션은 버그다', async () => {
    await expect(cache.setEx('findit:test:bad', 'value', 0)).rejects.toThrow(/ttl/i);
  });

  it('살아 있는 서버에는 ping 이 통과한다', async () => {
    await expect(cache.ping(3_000)).resolves.toBeUndefined();
  });
});
