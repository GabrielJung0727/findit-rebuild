import { afterEach, beforeEach, describe, expect, it } from 'vitest';
import type { Server } from 'node:http';
import type { AddressInfo } from 'node:net';
import WebSocket from 'ws';
import { readFileSync } from 'node:fs';
import { resolve } from 'node:path';
import { createApp } from '../http/app.js';
import { createDb, type Db } from '../platform/pg.js';
import { createCache, type Cache } from '../platform/redis.js';
import { SystemClock } from '../platform/clock.js';
import { createRng } from '../platform/rng.js';
import { loadPuzzles } from '../content/loader.js';
import { createContentUrls } from '../content/urls.js';
import { createMatchIndex } from './index.js';
import { createRealtime } from './wiring.js';

const contentSecret = 's'.repeat(32);

const dbUrl = process.env['DATABASE_URL'];
const redisUrl = process.env['REDIS_URL'];
const suite = dbUrl && redisUrl ? describe : describe.skip;

suite('2-클라이언트 통합', () => {
  let db: Db;
  let cache: Cache;
  let server: Server;
  let realtime: ReturnType<typeof createRealtime>;
  let url = '';
  let httpUrl = '';
  let run = 0;

  beforeEach(async () => {
    run += 1;
    db = createDb(dbUrl!);
    await db.query(readFileSync(resolve(import.meta.dirname, '../../sql/001_init.sql'), 'utf8'));
    cache = createCache(redisUrl!, () => {});

    const clock = new SystemClock();
    const contentDir = resolve(import.meta.dirname, '../../../content');
    const puzzles = loadPuzzles(resolve(contentDir, 'puzzles'));
    const contentVersion = (JSON.parse(
      readFileSync(resolve(contentDir, 'puzzles/manifest.json'), 'utf8'),
    ) as { version: string }).version;
    const log = { error: () => {} };

    realtime = createRealtime({
      db, cache, clock,
      rng: createRng(1234),
      puzzles,
      urls: createContentUrls({ secret: contentSecret, ttlMs: 300_000, clock }),
      log,
      queueKey: `findit:test:wire:${process.pid}:${run}`,
      aiTransitionMs: 150,
      verify: async (token: string) =>
        token.startsWith('g-') ? { kind: 'guest', guestId: token } : null,
    });

    const app = createApp({
      clock,
      log,
      config: { contentUrlSecret: contentSecret, contentUrlTtlMs: 300_000, contentDir },
      puzzles,
      contentVersion,
      resolvePuzzleId: (matchId) => createMatchIndex(cache).puzzleIdOf(matchId),
      identity: {
        register: async () => { throw new Error('unused'); },
        login: async () => null,
        guest: async () => { throw new Error('unused'); },
        logout: async () => {},
        verify: async () => null,
      },
    });
    server = app.listen(0);
    realtime.attach(server);
    await new Promise<void>((resolveListen, rejectListen) => {
      server.once('listening', () => resolveListen());
      server.once('error', rejectListen);
    });
    const port = (server.address() as AddressInfo).port;
    url = `ws://127.0.0.1:${port}`;
    httpUrl = `http://127.0.0.1:${port}`;
  });

  afterEach(async () => {
    await realtime.close();
    await new Promise<void>((resolveClose) => server.close(() => resolveClose()));
    await Promise.allSettled([db.close(), cache.close()]);
  });

  interface Client {
    ws: WebSocket;
    seen: { t: string; d: Record<string, unknown> }[];
    waitFor(t: string, ms?: number): Promise<Record<string, unknown>>;
    send(t: string, d?: Record<string, unknown>): void;
    close(): void;
  }

  async function connect(token: string): Promise<Client> {
    const ws = new WebSocket(url);
    const seen: { t: string; d: Record<string, unknown> }[] = [];
    await new Promise<void>((resolveOpen, rejectOpen) => {
      ws.once('open', () => resolveOpen());
      ws.once('error', rejectOpen);
    });
    ws.on('message', (raw) => { seen.push(JSON.parse(String(raw))); });

    const client: Client = {
      ws,
      seen,
      send(t, d = {}) { ws.send(JSON.stringify({ t, seq: 1, d })); },
      close() { ws.close(); },
      async waitFor(t, ms = 4_000) {
        const deadline = Date.now() + ms;
        for (;;) {
          const hit = seen.find((message) => message.t === t);
          if (hit) return hit.d;
          if (Date.now() > deadline) {
            throw new Error(`${t} 를 기다리다 시간 초과. 받은 것: ${seen.map((message) => message.t).join(',')}`);
          }
          await new Promise((resolveWait) => setTimeout(resolveWait, 20));
        }
      },
    };
    client.send('AUTH', { token });
    await client.waitFor('QUEUED');
    return client;
  }

  it('두 사람이 큐에서 만나 매치가 시작된다', async () => {
    const a = await connect('g-a');
    const b = await connect('g-b');
    a.send('QUEUE_JOIN', { mode: 'casual' });
    b.send('QUEUE_JOIN', { mode: 'casual' });

    const [foundA, foundB] = await Promise.all([a.waitFor('MATCH_FOUND'), b.waitFor('MATCH_FOUND')]);
    expect(foundA['matchId']).toBe(foundB['matchId']);
    expect(foundA['isAi']).toBe(false);
    a.close();
    b.close();
  });

  it('양쪽 READY 로 카운트다운과 START 가 온다', async () => {
    const a = await connect('g-a');
    const b = await connect('g-b');
    a.send('QUEUE_JOIN', { mode: 'casual' });
    b.send('QUEUE_JOIN', { mode: 'casual' });
    await Promise.all([a.waitFor('MATCH_FOUND'), b.waitFor('MATCH_FOUND')]);

    a.send('READY');
    b.send('READY');
    const start = await a.waitFor('START', 6_000);
    expect(start['targetCount']).toBe(5);
    expect(JSON.stringify(start)).not.toContain('rects');
    expect(start).not.toHaveProperty('targetIndices');
    a.close();
    b.close();
  });

  it('START 의 imageUrl 로 이미지를 실제로 받을 수 있다', async () => {
    const a = await connect('g-a');
    const b = await connect('g-b');
    a.send('QUEUE_JOIN', { mode: 'casual' });
    b.send('QUEUE_JOIN', { mode: 'casual' });
    const found = await a.waitFor('MATCH_FOUND');
    a.send('READY');
    b.send('READY');
    const start = await a.waitFor('START', 6_000);

    expect(String(start['imageUrl'])).toContain(String(found['matchId']));
    expect(await cache.get(`findit:match:${String(found['matchId'])}`))
      .toBe(String(start['puzzleId']));

    const res = await fetch(`${httpUrl}${String(start['imageUrl'])}`);
    expect(res.status).toBe(200);
    expect(res.headers.get('content-type')).toMatch(/image\/webp/);

    const forged = String(start['imageUrl']).replace('/base/0', '/patch/3');
    expect((await fetch(`${httpUrl}${forged}`)).status).toBe(403);

    a.close();
    b.close();
  });

  it('혼자 들어가면 AI 와 붙고, 상대 진행이 흘러온다', async () => {
    const a = await connect('g-solo');
    a.send('QUEUE_JOIN', { mode: 'casual' });

    const found = await a.waitFor('MATCH_FOUND');
    expect(found['isAi']).toBe(true);

    a.send('READY');
    await a.waitFor('START', 6_000);
    await a.waitFor('OPPONENT_PROGRESS', 15_000);
    a.close();
  }, 25_000);

  it('상대가 나가면 남은 사람이 END 를 받는다', async () => {
    const a = await connect('g-a');
    const b = await connect('g-b');
    a.send('QUEUE_JOIN', { mode: 'casual' });
    b.send('QUEUE_JOIN', { mode: 'casual' });
    await Promise.all([a.waitFor('MATCH_FOUND'), b.waitFor('MATCH_FOUND')]);
    a.send('READY');
    b.send('READY');
    await a.waitFor('START', 6_000);

    b.send('LEAVE');
    const end = await a.waitFor('END', 6_000);
    expect(end['result']).toBe('win');
    a.close();
    b.close();
  });

  it('게스트의 전적이 남는다 — account 행이 없어도 정산이 죽지 않는다', async () => {
    const a = await connect('g-a');
    const b = await connect('g-b');
    a.send('QUEUE_JOIN', { mode: 'casual' });
    b.send('QUEUE_JOIN', { mode: 'casual' });
    const found = await a.waitFor('MATCH_FOUND');
    a.send('READY');
    b.send('READY');
    await a.waitFor('START', 6_000);
    b.send('LEAVE');
    await a.waitFor('END', 6_000);
    await new Promise((resolveWait) => setTimeout(resolveWait, 300));

    const rows = await db.query<{ account_id: string | null }>(
      'SELECT account_id FROM match_history WHERE match_id = $1',
      [String(found['matchId'])],
    );
    expect(rows.length).toBeGreaterThan(0);
    expect(rows[0]!.account_id).toBeNull();
    a.close();
    b.close();
  });

  it('끝난 매치는 레지스트리와 Redis 에서 사라진다 — 누수', async () => {
    const a = await connect('g-a');
    const b = await connect('g-b');
    a.send('QUEUE_JOIN', { mode: 'casual' });
    b.send('QUEUE_JOIN', { mode: 'casual' });
    const found = await a.waitFor('MATCH_FOUND');
    a.send('READY');
    b.send('READY');
    await a.waitFor('START', 6_000);
    b.send('LEAVE');
    await a.waitFor('END', 6_000);
    await new Promise((resolveWait) => setTimeout(resolveWait, 300));

    expect(realtime.matchCount).toBe(0);
    expect(await cache.get(`findit:match:${String(found['matchId'])}`)).toBeNull();
    a.close();
    b.close();
  });

  it('양쪽이 다 끊겨도 매치가 회수된다', async () => {
    const a = await connect('g-a');
    const b = await connect('g-b');
    a.send('QUEUE_JOIN', { mode: 'casual' });
    b.send('QUEUE_JOIN', { mode: 'casual' });
    await Promise.all([a.waitFor('MATCH_FOUND'), b.waitFor('MATCH_FOUND')]);
    a.send('READY');
    b.send('READY');
    await a.waitFor('START', 6_000);

    a.ws.terminate();
    b.ws.terminate();
    await new Promise((resolveWait) => setTimeout(resolveWait, 500));

    expect(realtime.matchCount).toBe(0);
  });

  it('AI 와 붙고 있는 사람에게 난입하면 두 사람의 새 매치가 시작된다', async () => {
    const solo = await connect('g-solo');
    solo.send('QUEUE_JOIN', { mode: 'casual' });
    const aiMatch = await solo.waitFor('MATCH_FOUND');
    expect(aiMatch['isAi']).toBe(true);

    const intruder = await connect('g-in');
    intruder.send('QUEUE_JOIN', { mode: 'casual' });

    const forIntruder = await intruder.waitFor('MATCH_FOUND');
    expect(forIntruder['isAi']).toBe(false);

    const second = solo.seen.filter((message) => message.t === 'MATCH_FOUND');
    await new Promise((resolveWait) => setTimeout(resolveWait, 200));
    expect(solo.seen.filter((message) => message.t === 'MATCH_FOUND').length).toBeGreaterThan(1);
    expect(second.length).toBeGreaterThan(0);

    const rows = await db.query(
      'SELECT 1 FROM match_history WHERE match_id = $1',
      [String(aiMatch['matchId'])],
    );
    expect(rows).toHaveLength(0);
    solo.close();
    intruder.close();
  }, 15_000);

  it('전적에 리듀서가 계산한 점수가 그대로 들어간다 — 0 이 아니다', async () => {
    const a = await connect('g-a');
    const b = await connect('g-b');
    a.send('QUEUE_JOIN', { mode: 'casual' });
    b.send('QUEUE_JOIN', { mode: 'casual' });
    const found = await a.waitFor('MATCH_FOUND');
    a.send('READY');
    b.send('READY');
    await a.waitFor('START', 6_000);

    b.send('LEAVE');
    const end = await a.waitFor('END', 6_000);
    await new Promise((resolveWait) => setTimeout(resolveWait, 300));

    const rows = await db.query<{ score_delta: number; coin_delta: number }>(
      `SELECT score_delta, coin_delta FROM match_history
        WHERE match_id = $1 AND result = 'win'`,
      [String(found['matchId'])],
    );
    expect(rows).toHaveLength(1);
    expect(rows[0]!.score_delta).toBe(Number(end['score']));
    expect(rows[0]!.coin_delta).toBe(Number(end['coinDelta']));
    a.close();
    b.close();
  });

  it('p2 의 탭이 p2 의 점수가 된다 — 슬롯이 뒤바뀌지 않는다', async () => {
    const a = await connect('g-a');
    const b = await connect('g-b');
    a.send('QUEUE_JOIN', { mode: 'casual' });
    b.send('QUEUE_JOIN', { mode: 'casual' });
    await Promise.all([a.waitFor('MATCH_FOUND'), b.waitFor('MATCH_FOUND')]);
    a.send('READY');
    b.send('READY');
    const start = await a.waitFor('START', 6_000);

    const miss = {
      x: Number(start['width']) + 1000,
      y: Number(start['height']) + 1000,
    };
    b.send('TAP', miss);
    await b.waitFor('LOCK', 3_000);
    await new Promise((resolveWait) => setTimeout(resolveWait, 200));
    expect(a.seen.some((message) => message.t === 'LOCK')).toBe(false);
    a.close();
    b.close();
  });
});
