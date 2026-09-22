import Redis from 'ioredis';

const PREFIX = 'findit';

/**
 * 키 조립을 한 곳에 모은다. 호출부마다 문자열을 만들면 오타가 조용한
 * 캐시 미스가 되고, 그 미스는 로그인 장애로만 드러난다.
 */
export const KEY = {
  session: (token: string): string => `${PREFIX}:session:${token}`,
  guest: (token: string): string => `${PREFIX}:guest:${token}`,
} as const;

export interface Cache {
  get(key: string): Promise<string | null>;
  setEx(key: string, value: string, ttlMs: number): Promise<void>;
  del(key: string): Promise<void>;
  close(): Promise<void>;
}

export function createCache(redisUrl: string): Cache {
  const client = new Redis(redisUrl, { lazyConnect: false, maxRetriesPerRequest: 3 });

  return {
    async get(key: string): Promise<string | null> {
      return client.get(key);
    },

    async setEx(key: string, value: string, ttlMs: number): Promise<void> {
      if (!Number.isInteger(ttlMs) || ttlMs <= 0) {
        throw new Error(`setEx: ttlMs 는 1 이상 정수여야 함 (${ttlMs})`);
      }
      await client.set(key, value, 'PX', ttlMs);
    },

    async del(key: string): Promise<void> {
      await client.del(key);
    },

    async close(): Promise<void> {
      await client.quit();
    },
  };
}
