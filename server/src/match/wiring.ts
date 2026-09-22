import { randomUUID } from 'node:crypto';
import type { Server } from 'node:http';
import type { BattleState, PlayerSlot } from '../battle/state.js';
import { createBattle, opponentOf } from '../battle/state.js';
import { assignPuzzle } from '../content/assigner.js';
import type { Puzzle } from '../content/types.js';
import type { Principal } from '../identity/types.js';
import type { Clock } from '../platform/clock.js';
import type { Db } from '../platform/pg.js';
import type { Cache } from '../platform/redis.js';
import type { Rng } from '../platform/rng.js';
import type { ContentUrls } from '../battle/reducer.js';
import { attachGateway, type Conn, type GameInput } from '../ws/gateway.js';
import { principalKey } from '../ws/session.js';
import { createMatchIndex } from './index.js';
import { Matchmaker, type Waiting } from './queue.js';
import { MatchRegistry } from './registry.js';
import { MatchRunner, type EndPayloads, type Scheduler, type TimerHandle } from './runner.js';
import { persistSettlement, settlementRows } from './settlement.js';

export interface RealtimeDeps {
  db: Db;
  cache: Cache;
  clock: Clock;
  rng: Rng;
  puzzles: readonly Puzzle[];
  urls: ContentUrls;
  log: { error(message: string, fields?: Record<string, unknown>): void };
  queueKey: string;
  aiTransitionMs?: number;
  verify(token: string): Promise<Principal | null>;
}

function realScheduler(clock: Clock, log: RealtimeDeps['log']): Scheduler {
  let seq = 0;
  const handles = new Map<number, NodeJS.Timeout>();

  return {
    at(time, fn) {
      seq += 1;
      const id = seq;
      handles.set(id, setTimeout(() => {
        handles.delete(id);
        void Promise.resolve(fn()).catch((error: unknown) => {
          log.error('예약 콜백 실패', {
            error: error instanceof Error ? error.message : String(error),
          });
        });
      }, Math.max(0, time - clock.now())));
      return id;
    },
    cancel(handle: TimerHandle): void {
      const timer = handles.get(handle);
      if (timer !== undefined) {
        clearTimeout(timer);
        handles.delete(handle);
      }
    },
  };
}

export function createRealtime(deps: RealtimeDeps): {
  attach(server: Server): void;
  close(): Promise<void>;
  readonly matchCount: number;
} {
  const scheduler = realScheduler(deps.clock, deps.log);
  const registry = new MatchRegistry();
  const index = createMatchIndex(deps.cache);

  interface Seat {
    conn: Conn | null;
    accountId: string | null;
  }

  const seats = new Map<string, Partial<Record<PlayerSlot, Seat>>>();
  let gateway: ReturnType<typeof attachGateway> | null = null;

  const matchmaker = new Matchmaker({
    clock: deps.clock,
    scheduler,
    cache: deps.cache,
    queueKey: deps.queueKey,
    aiTransitionMs: deps.aiTransitionMs,
    findIntrudable: (): Waiting | null => {
      for (const [matchId, row] of seats) {
        const runner = registry.get(matchId);
        if (runner === undefined) continue;

        const state = runner.state;
        if (state.phase === 'ENDED') continue;

        const humanSlot: PlayerSlot | null =
          state.p2.isAi && !state.p1.isAi ? 'p1' : state.p1.isAi && !state.p2.isAi ? 'p2' : null;
        if (humanSlot === null) continue;

        const conn = row[humanSlot]?.conn;
        if (conn === null || conn === undefined) continue;

        const person = state[humanSlot];
        return { key: person.name, name: person.name, level: person.level, conn };
      }
      return null;
    },
    abortMatch: (victimKey: string): void => {
      const runner = registry.findAiMatchWith(victimKey);
      if (runner === undefined) return;
      runner.abort();
      cleanup(runner.matchId);
    },
    startMatch: async (a: Waiting, b: Waiting | null) => start(a, b),
  });

  function seatOf(conn: Conn): { runner: MatchRunner; slot: PlayerSlot } | null {
    const { matchId, slot } = conn.session;
    if (matchId === null || slot === null) return null;
    const runner = registry.get(matchId);
    return runner === undefined ? null : { runner, slot };
  }

  async function start(a: Waiting, b: Waiting | null): Promise<string> {
    const matchId = randomUUID();
    const assignment = assignPuzzle(deps.puzzles, deps.rng);
    const state = createBattle({
      matchId,
      assignment,
      p1: { name: a.key, level: a.level, isAi: false },
      p2: b === null
        ? { name: `ai-${matchId.slice(0, 8)}`, level: a.level, isAi: true }
        : { name: b.key, level: b.level, isAi: false },
    });

    const connA = a.conn as Conn;
    const connB = b === null ? null : b.conn as Conn;
    seats.set(matchId, {
      p1: { conn: connA, accountId: accountIdOf(connA) },
      ...(connB === null ? {} : { p2: { conn: connB, accountId: accountIdOf(connB) } }),
    });

    const runner = new MatchRunner(state, {
      clock: deps.clock,
      rng: deps.rng,
      urls: deps.urls,
      scheduler,
      send: (slot, type, payload): void => {
        seats.get(matchId)?.[slot]?.conn?.send(type, payload);
      },
      onEnd: (ended, ends): void => {
        void settle(ended, ends).finally(() => cleanup(matchId));
      },
    });

    registry.add(runner);
    await index.put(matchId, assignment.puzzle.id);
    runner.start();

    bind(connA, matchId, 'p1');
    if (connB !== null) bind(connB, matchId, 'p2');
    announce(matchId, state);
    return matchId;
  }

  function accountIdOf(conn: Conn): string | null {
    const principal = conn.session.principal;
    return principal !== null && principal.kind === 'account' ? principal.accountId : null;
  }

  function bind(conn: Conn, matchId: string, slot: PlayerSlot): void {
    conn.session.matchId = matchId;
    conn.session.slot = slot;
  }

  function announce(matchId: string, state: BattleState): void {
    for (const slot of ['p1', 'p2'] as const) {
      const other = state[opponentOf(slot)];
      seats.get(matchId)?.[slot]?.conn?.send('MATCH_FOUND', {
        matchId,
        opponentName: other.name,
        opponentLevel: other.level,
        isAi: other.isAi,
      });
    }
  }

  async function settle(state: BattleState, ends: EndPayloads): Promise<void> {
    const seatsForMatch = seats.get(state.matchId);
    const rows = settlementRows({
      state,
      ends,
      accountIds: {
        p1: seatsForMatch?.p1?.accountId ?? null,
        p2: seatsForMatch?.p2?.accountId ?? null,
      },
    });

    for (const row of rows) {
      try {
        await persistSettlement(deps.db, row);
      } catch (error: unknown) {
        deps.log.error('정산 실패', {
          matchId: state.matchId,
          error: error instanceof Error ? error.message : String(error),
        });
      }
    }
  }

  function cleanup(matchId: string): void {
    registry.remove(matchId);
    for (const slot of ['p1', 'p2'] as const) {
      const conn = seats.get(matchId)?.[slot]?.conn;
      if (conn !== null && conn !== undefined && conn.session.matchId === matchId) {
        conn.session.matchId = null;
        conn.session.slot = null;
      }
    }
    seats.delete(matchId);
    void index.drop(matchId).catch((error: unknown) => {
      deps.log.error('매치 인덱스 정리 실패', {
        matchId,
        error: error instanceof Error ? error.message : String(error),
      });
    });
  }

  function toEvent(input: GameInput, slot: PlayerSlot) {
    switch (input.kind) {
      case 'TAP':
        return { kind: 'TAP' as const, slot, x: input.x, y: input.y };
      case 'SKILL':
        return { kind: 'SKILL' as const, slot, skillId: input.skillId };
      case 'READY':
        return { kind: 'READY' as const, slot };
      case 'LEAVE':
        return { kind: 'LEAVE' as const, slot };
      default: {
        const unexpected: never = input;
        throw new Error(`처리하지 않은 입력: ${JSON.stringify(unexpected)}`);
      }
    }
  }

  return {
    get matchCount(): number {
      return registry.size;
    },

    attach(server: Server): void {
      gateway = attachGateway(server, {
        clock: deps.clock,
        log: deps.log,
        verify: deps.verify,
        onJoin: async (conn, _mode) => {
          const principal = conn.session.principal;
          if (principal === null || conn.session.matchId !== null) return;
          await matchmaker.join({
            key: principalKey(principal),
            name: principalKey(principal),
            level: 1,
            conn,
          });
        },
        onLeaveQueue: async (conn) => {
          const principal = conn.session.principal;
          if (principal !== null) await matchmaker.leave(principalKey(principal));
        },
        onGameInput: (conn, input): void => {
          const seat = seatOf(conn);
          if (seat === null) return;
          seat.runner.submit(toEvent(input, seat.slot));
        },
        onClose: (conn): void => {
          const principal = conn.session.principal;
          if (principal !== null) void matchmaker.leave(principalKey(principal));

          const seat = seatOf(conn);
          if (seat === null) return;
          const place = seats.get(seat.runner.matchId)?.[seat.slot];
          if (place !== undefined) place.conn = null;
          seat.runner.submit({ kind: 'LEAVE', slot: seat.slot });
        },
      });
    },

    async close(): Promise<void> {
      for (const matchId of [...seats.keys()]) {
        registry.get(matchId)?.abort();
        cleanup(matchId);
      }
      await gateway?.close();
    },
  };
}
