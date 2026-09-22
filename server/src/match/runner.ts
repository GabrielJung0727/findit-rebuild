import type { MessageType } from '@findit/protocol';
import type { Clock } from '../platform/clock.js';
import type { Rng } from '../platform/rng.js';
import { hitTest, reduce, type ContentUrls, type ReduceContext } from '../battle/reducer.js';
import { planAiAction } from '../battle/ai-driver.js';
import type { BattleEvent } from '../battle/events.js';
import type { BattleState, Outbound, PlayerSlot } from '../battle/state.js';

export type TimerHandle = number;

export interface Scheduler {
  at(time: number, fn: () => void | Promise<void>): TimerHandle;
  cancel(handle: TimerHandle): void;
}

export type EndPayloads = Partial<Record<PlayerSlot, Record<string, unknown>>>;

export interface RunnerPorts {
  clock: Clock;
  rng: Rng;
  urls: ContentUrls;
  scheduler: Scheduler;
  send(slot: PlayerSlot, type: MessageType, payload: Record<string, unknown>): void;
  onEnd(state: BattleState, ends: EndPayloads): void;
}

const SLOTS = ['p1', 'p2'] as const;

export class MatchRunner {
  private current: BattleState;
  private wakeTimer: TimerHandle | null = null;
  private readonly aiTimers: Record<PlayerSlot, TimerHandle | null> = { p1: null, p2: null };
  private closed = false;

  constructor(initial: BattleState, private readonly ports: RunnerPorts) {
    this.current = initial;
  }

  get matchId(): string {
    return this.current.matchId;
  }

  get state(): BattleState {
    return this.current;
  }

  start(): void {
    this.reschedule(null);
    for (const slot of SLOTS) {
      if (this.current[slot].isAi) this.submit({ kind: 'READY', slot });
    }
  }

  submit(event: BattleEvent): void {
    if (this.closed || this.current.phase === 'ENDED') return;

    const before = this.current.phase;
    const { state, outbound, wakeAt } = reduce(this.current, event, this.ctx());
    this.current = state;

    const ends: EndPayloads = {};
    for (const item of outbound) {
      if (item.type === 'END' && item.to !== 'both') ends[item.to] = item.payload;
    }

    for (const item of outbound) this.emit(item);
    this.reschedule(wakeAt);

    if (before !== 'PLAYING' && state.phase === 'PLAYING') {
      for (const slot of SLOTS) if (state[slot].isAi) this.scheduleAi(slot);
    }

    if (state.phase === 'ENDED') this.finish(ends);
  }

  /** 난입된 AI 매치는 정산 없이 자원만 회수한다. */
  abort(): void {
    this.closed = true;
    this.clearAll();
  }

  private ctx(): ReduceContext {
    return { now: this.ports.clock.now(), rng: this.ports.rng, urls: this.ports.urls };
  }

  private emit(item: Outbound): void {
    const targets: readonly PlayerSlot[] = item.to === 'both' ? SLOTS : [item.to];
    for (const slot of targets) this.ports.send(slot, item.type, item.payload);
  }

  private reschedule(wakeAt: number | null): void {
    if (this.wakeTimer !== null) {
      this.ports.scheduler.cancel(this.wakeTimer);
      this.wakeTimer = null;
    }
    if (wakeAt === null || this.current.phase === 'ENDED' || this.closed) return;

    this.wakeTimer = this.ports.scheduler.at(wakeAt, () => {
      this.wakeTimer = null;
      this.submit({ kind: 'TIMER' });
    });
  }

  private scheduleAi(slot: PlayerSlot): void {
    const existing = this.aiTimers[slot];
    if (existing !== null) {
      this.ports.scheduler.cancel(existing);
      this.aiTimers[slot] = null;
    }
    if (this.closed || this.current.phase !== 'PLAYING') return;

    const ctx = this.ctx();
    const plan = planAiAction(this.current, slot, ctx);
    if (plan === null) {
      const lockedUntil = this.current[slot].lockedUntil;
      if (lockedUntil > ctx.now) {
        this.aiTimers[slot] = this.ports.scheduler.at(lockedUntil, () => {
          this.aiTimers[slot] = null;
          this.scheduleAi(slot);
        });
      }
      return;
    }

    this.aiTimers[slot] = this.ports.scheduler.at(plan.at, () => {
      this.aiTimers[slot] = null;

      const event = plan.event;
      if (event.kind === 'TAP') {
        const alive = hitTest(
          this.current.assignment,
          this.current.targetIndices,
          this.current.revealed,
          event.x,
          event.y,
        );
        if (alive === null) {
          this.scheduleAi(slot);
          return;
        }
      }

      this.submit(event);
      this.scheduleAi(slot);
    });
  }

  private finish(ends: EndPayloads): void {
    this.clearAll();
    this.ports.onEnd(this.current, ends);
  }

  private clearAll(): void {
    if (this.wakeTimer !== null) {
      this.ports.scheduler.cancel(this.wakeTimer);
      this.wakeTimer = null;
    }
    for (const slot of SLOTS) {
      const handle = this.aiTimers[slot];
      if (handle !== null) {
        this.ports.scheduler.cancel(handle);
        this.aiTimers[slot] = null;
      }
    }
  }
}

export { MatchRegistry } from './registry.js';
