import Redis from 'ioredis';

const PREFIX = 'findit';

/**
 * 키 조립을 한 곳에 모은다. 호출부마다 문자열을 만들면 오타가 조용한
 * 캐시 미스가 되고, 그 미스는 로그인 장애로만 드러난다.
 */
export const KEY = {
  session: (token: string): string => `${PREFIX}:session:${token}`,
  guest: (token: string): string => `${PREFIX}:guest:${token}`,
  match: (matchId: string): string => `${PREFIX}:match:${matchId}`,
} as const;

export interface Cache {
  get(key: string): Promise<string | null>;
  setEx(key: string, value: string, ttlMs: number): Promise<void>;
  del(key: string): Promise<void>;
  listPushRight(key: string, value: string): Promise<void>;
  listPopLeft(key: string): Promise<string | null>;
  listRemove(key: string, value: string): Promise<void>;
  listLength(key: string): Promise<number>;
  /**
   * 연결이 실제로 가능한지 확인한다. 부팅 경로에서 반드시 await 해야 한다.
   * createCache 는 동기로 반환하고 ioredis 는 연결 실패를 이벤트로만 알린다.
   */
  ping(timeoutMs?: number): Promise<void>;
  close(): Promise<void>;
}

export function createCache(redisUrl: string, onError?: (error: Error) => void): Cache {
  const client = new Redis(redisUrl, { lazyConnect: false, maxRetriesPerRequest: 3 });

  // 리스너가 없으면 ioredis 는 경고만 찍고 프로세스는 계속 돈다.
  client.on('error', (error: Error) => {
    onError?.(error);
  });

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

    async listPushRight(key: string, value: string): Promise<void> {
      await client.rpush(key, value);
    },

    async listPopLeft(key: string): Promise<string | null> {
      return client.lpop(key);
    },

    async listRemove(key: string, value: string): Promise<void> {
      await client.lrem(key, 0, value);
    },

    async listLength(key: string): Promise<number> {
      return client.llen(key);
    },

    async ping(timeoutMs = 5_000): Promise<void> {
      if (client.status === 'ready') {
        await client.ping();
        return;
      }

      await new Promise<void>((resolve, reject) => {
        const cleanup = (): void => {
          clearTimeout(timer);
          client.off('ready', onReady);
          client.off('error', onFail);
        };
        const onReady = (): void => {
          cleanup();
          resolve();
        };
        const onFail = (error: Error): void => {
          cleanup();
          reject(error);
        };
        const timer = setTimeout(() => {
          cleanup();
          reject(new Error(`Redis 연결 시간 초과 (${timeoutMs}ms)`));
        }, timeoutMs);

        client.once('ready', onReady);
        client.once('error', onFail);
      });
    },

    async close(): Promise<void> {
      try {
        await client.quit();
      } catch {
        client.disconnect();
      }
    },
  };
}
