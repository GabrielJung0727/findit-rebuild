import { readFileSync } from 'node:fs';
import { resolve } from 'node:path';
import { loadConfig } from './platform/config.js';
import { createLogger } from './platform/logger.js';
import { SystemClock } from './platform/clock.js';
import { createDb } from './platform/pg.js';
import { createCache } from './platform/redis.js';
import { loadPuzzles } from './content/loader.js';
import { createApp } from './http/app.js';
import {
  createAccount, createGuestRegistry, createSessionAudit, findAccountByEmail,
} from './identity/repository.js';
import { hashPassword, verifyPassword } from './identity/password.js';
import {
  createGuestSession, createSession, revokeSession, verifySession,
} from './identity/session.js';

async function main(): Promise<void> {
  const config = loadConfig(process.env);
  const log = createLogger(config.nodeEnv);
  const clock = new SystemClock();

  const db = createDb(config.databaseUrl);
  const cache = createCache(config.redisUrl, (error) => log.error('Redis 오류', { error: error.message }));

  await cache.ping();
  log.info('Redis 연결 확인');

  const schema = readFileSync(resolve(import.meta.dirname, '../sql/001_init.sql'), 'utf8');
  await db.query(schema);
  log.info('스키마 적용 완료');

  const manifestPath = resolve(config.contentDir, 'puzzles/manifest.json');
  const version = (JSON.parse(readFileSync(manifestPath, 'utf8')) as { version: string }).version;
  const puzzles = loadPuzzles(resolve(config.contentDir, 'puzzles'));
  await db.query(
    'INSERT INTO content_version(version) VALUES($1) ON CONFLICT (version) DO NOTHING',
    [version],
  );
  log.info('콘텐츠 로드 완료', { puzzles: puzzles.length, version });

  const audit = createSessionAudit(db);
  const guests = createGuestRegistry(db);
  const sessionDeps = { cache, clock, audit, guests };
  const knownPuzzleIds = new Set(puzzles.map((puzzle) => puzzle.id));

  const app = createApp({
    clock,
    log,
    config,
    puzzles,
    contentVersion: version,
    resolvePuzzleId: async (matchId) => (knownPuzzleIds.has(matchId) ? matchId : null),
    identity: {
      register: async (email, password, nickname, characterId) =>
        createAccount(db, {
          email, nickname, characterId, passwordHash: await hashPassword(password),
        }),
      login: async (email, password) => {
        const account = await findAccountByEmail(db, email);
        const ok = await verifyPassword(password, account?.password_hash ?? '$2a$12$invalid');
        if (!account || !ok) return null;
        return createSession(sessionDeps, account.id);
      },
      guest: () => createGuestSession(sessionDeps),
      logout: (token) => revokeSession(sessionDeps, token),
      verify: (token) => verifySession(sessionDeps, token),
    },
  });

  const server = app.listen(config.port, () => {
    log.info('서버 기동', { port: config.port, nodeEnv: config.nodeEnv });
  });

  const shutdown = async (signal: string): Promise<void> => {
    log.info('종료 신호 수신', { signal });
    server.close();
    await Promise.allSettled([db.close(), cache.close()]);
    process.exit(0);
  };
  process.on('SIGTERM', () => void shutdown('SIGTERM'));
  process.on('SIGINT', () => void shutdown('SIGINT'));
}

void main().catch((error: unknown) => {
  console.error('부팅 실패:', error);
  process.exit(1);
});
