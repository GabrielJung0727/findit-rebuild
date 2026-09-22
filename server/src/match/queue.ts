import type { Clock } from '../platform/clock.js';
import type { Cache } from '../platform/redis.js';
import type { Scheduler, TimerHandle } from './runner.js';

export const AI_TRANSITION_MS = 5_000;

export interface Waiting {
  key: string;
  name: string;
  level: number;
  conn: unknown;
}

export interface MatchmakerPorts {
  clock: Clock;
  scheduler: Scheduler;
  cache: Cache;
  queueKey: string;
  aiTransitionMs?: number;
  startMatch(a: Waiting, b: Waiting | null): Promise<string>;
}

export class Matchmaker {
  private readonly aiMs: number;
  private readonly timers = new Map<string, TimerHandle>();
  private readonly waiting = new Map<string, Waiting>();
  private tail: Promise<void> = Promise.resolve();

  constructor(private readonly ports: MatchmakerPorts) {
    this.aiMs = ports.aiTransitionMs ?? AI_TRANSITION_MS;
  }

  /**
   * P0는 단일 프로세스이므로 LPOP과 RPUSH 사이의 비동기 경쟁을 이 직렬화로 막는다.
   * 다중 인스턴스에서는 Lua 스크립트나 BLMOVE가 필요하다.
   */
  private serialize<T>(fn: () => Promise<T>): Promise<T> {
    const run = this.tail.then(fn);
    this.tail = run.then(() => undefined, () => undefined);
    return run;
  }

  async join(waiting: Waiting): Promise<void> {
    return this.serialize(() => this.joinLocked(waiting));
  }

  private async joinLocked(waiting: Waiting): Promise<void> {
    if (this.waiting.has(waiting.key)) return;

    // Redis에는 키만 남고 본문은 프로세스 메모리에 있으므로, 재시작 뒤 고아 키가
    // 앞에 있어도 실제 대기자를 만날 때까지 제거하며 진행한다.
    for (;;) {
      const opponentKey = await this.ports.cache.listPopLeft(this.ports.queueKey);
      if (opponentKey === null) break;

      const opponent = this.waiting.get(opponentKey);
      if (opponent === undefined) continue;

      this.forget(opponentKey);
      await this.ports.startMatch(waiting, opponent);
      return;
    }

    this.waiting.set(waiting.key, waiting);
    await this.ports.cache.listPushRight(this.ports.queueKey, waiting.key);
    const at = this.ports.clock.now() + this.aiMs;
    this.timers.set(waiting.key, this.ports.scheduler.at(at, () => this.toAi(waiting.key)));
  }

  async leave(key: string): Promise<void> {
    return this.serialize(() => this.leaveLocked(key));
  }

  private async leaveLocked(key: string): Promise<void> {
    if (!this.waiting.has(key)) return;
    this.forget(key);
    await this.ports.cache.listRemove(this.ports.queueKey, key);
  }

  async waitingCount(): Promise<number> {
    return this.ports.cache.listLength(this.ports.queueKey);
  }

  private toAi(key: string): Promise<void> {
    return this.serialize(() => this.toAiLocked(key));
  }

  private async toAiLocked(key: string): Promise<void> {
    const waiting = this.waiting.get(key);
    this.timers.delete(key);
    if (waiting === undefined) return;

    this.waiting.delete(key);
    await this.ports.cache.listRemove(this.ports.queueKey, key);
    await this.ports.startMatch(waiting, null);
  }

  private forget(key: string): void {
    this.waiting.delete(key);
    const handle = this.timers.get(key);
    if (handle !== undefined) {
      this.ports.scheduler.cancel(handle);
      this.timers.delete(key);
    }
  }
}
