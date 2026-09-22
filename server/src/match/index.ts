import { KEY, type Cache } from '../platform/redis.js';

const DEFAULT_TTL_MS = 600_000;

/** HTTP 콘텐츠 라우트가 matchId에서 실제 퍼즐을 찾기 위한 Redis 인덱스. */
export interface MatchIndex {
  put(matchId: string, puzzleId: string): Promise<void>;
  puzzleIdOf(matchId: string): Promise<string | null>;
  drop(matchId: string): Promise<void>;
}

export function createMatchIndex(cache: Cache, ttlMs = DEFAULT_TTL_MS): MatchIndex {
  return {
    async put(matchId: string, puzzleId: string): Promise<void> {
      await cache.setEx(KEY.match(matchId), puzzleId, ttlMs);
    },

    async puzzleIdOf(matchId: string): Promise<string | null> {
      if (!matchId) return null;
      return cache.get(KEY.match(matchId));
    },

    async drop(matchId: string): Promise<void> {
      if (!matchId) return;
      await cache.del(KEY.match(matchId));
    },
  };
}
