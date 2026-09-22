import { afterAll, beforeAll, describe, expect, it } from 'vitest';
import { TestClock } from '../platform/clock.js';
import { createCache, type Cache } from '../platform/redis.js';
import { Matchmaker, AI_TRANSITION_MS, type Waiting } from './queue.js';

class TestScheduler {
  private seq = 0;
  private readonly jobs = new Map<number, { at: number; fn: () => void | Promise<void> }>();

  at(time: number, fn: () => void | Promise<void>): number {
    const id = ++this.seq;
    this.jobs.set(id, { at: time, fn });
    return id;
  }

  cancel(handle: number): void {
    this.jobs.delete(handle);
  }

  get pending(): number {
    return this.jobs.size;
  }

  async runUntil(clock: TestClock, to: number): Promise<void> {
    for (let guard = 0; guard < 1_000; guard += 1) {
      const due = [...this.jobs.entries()]
        .filter(([, job]) => job.at <= to)
        .sort((a, b) => a[1].at - b[1].at)[0];
      if (!due) break;

      const [id, job] = due;
      this.jobs.delete(id);
      clock.set(Math.max(clock.now(), job.at));
      await job.fn();
    }
    clock.set(to);
  }
}

it('AI 전환 시각이 원작 수치다', () => {
  expect(AI_TRANSITION_MS).toBe(5_000);
});

const url = process.env['REDIS_URL'];
const suite = url ? describe : describe.skip;

suite('매칭 큐', () => {
  let cache: Cache;
  let n = 0;
  const player = (name: string): Waiting => ({ key: `k-${name}`, name, level: 10, conn: null });

  beforeAll(() => {
    cache = createCache(url!, () => {});
  });

  afterAll(async () => {
    await cache.close();
  });

  function harness(opts: { aiMs?: number; intrudable?: () => Waiting | null } = {}) {
    n += 1;
    const clock = new TestClock(1_000_000);
    const scheduler = new TestScheduler();
    const started: { a: string; b: string | null }[] = [];
    const intruded: string[] = [];
    const events: string[] = [];
    const queueKey = `findit:test:queue:${process.pid}:${n}`;
    const maker = new Matchmaker({
      clock,
      scheduler,
      cache,
      queueKey,
      aiTransitionMs: opts.aiMs ?? AI_TRANSITION_MS,
      findIntrudable: opts.intrudable ?? (() => null),
      startMatch: async (a, b) => {
        started.push({ a: a.name, b: b?.name ?? null });
        events.push(`start:${a.name}:${b?.name ?? 'ai'}`);
        return `match-${started.length}`;
      },
      abortMatch: (victimKey: string) => {
        intruded.push(victimKey);
        events.push(`abort:${victimKey}`);
      },
    });
    return { clock, scheduler, started, intruded, events, maker, queueKey };
  }

  it('혼자 들어가면 대기한다 — 즉시 AI 가 되지 않는다', async () => {
    const h = harness();
    await h.maker.join(player('A'));
    expect(h.started).toEqual([]);
    expect(await h.maker.waitingCount()).toBe(1);
  });

  it('둘째가 들어오면 즉시 붙는다', async () => {
    const h = harness();
    await h.maker.join(player('A'));
    await h.maker.join(player('B'));

    expect(h.started).toEqual([{ a: 'B', b: 'A' }]);
    expect(await h.maker.waitingCount()).toBe(0);
  });

  it('붙은 뒤에는 AI 전환 타이머가 남지 않는다', async () => {
    const h = harness();
    await h.maker.join(player('A'));
    await h.maker.join(player('B'));
    expect(h.scheduler.pending).toBe(0);
  });

  it('5초가 지나면 AI 와 붙는다', async () => {
    const h = harness();
    await h.maker.join(player('A'));
    await h.scheduler.runUntil(h.clock, h.clock.now() + AI_TRANSITION_MS + 1);

    expect(h.started).toEqual([{ a: 'A', b: null }]);
    expect(await h.maker.waitingCount()).toBe(0);
  });

  it('4.9초에는 아직 AI 가 아니다 — 경계', async () => {
    const h = harness();
    await h.maker.join(player('A'));
    await h.scheduler.runUntil(h.clock, h.clock.now() + AI_TRANSITION_MS - 100);
    expect(h.started).toEqual([]);
  });

  it('leave 하면 AI 전환도 취소된다', async () => {
    const h = harness();
    const a = player('A');
    await h.maker.join(a);
    expect(h.scheduler.pending).toBe(1);
    await h.maker.leave(a.key);
    expect(h.scheduler.pending).toBe(0);
    await h.scheduler.runUntil(h.clock, h.clock.now() + AI_TRANSITION_MS + 1);

    expect(h.started).toEqual([]);
    expect(await h.maker.waitingCount()).toBe(0);
  });

  it('동시에 들어온 둘이 서로를 만난다 — 둘 다 AI 로 빠지면 안 된다', async () => {
    const h = harness();
    await Promise.all([h.maker.join(player('A')), h.maker.join(player('B'))]);

    expect(h.started).toHaveLength(1);
    expect(h.started[0]!.b).not.toBeNull();
    expect(await h.maker.waitingCount()).toBe(0);
  });

  it('join 이 Redis 를 기다리는 동안 들어온 leave 가 무시되지 않는다', async () => {
    const h = harness();
    const a = player('A');
    const joining = h.maker.join(a);
    const leaving = h.maker.leave(a.key);
    await Promise.all([joining, leaving]);

    expect(await h.maker.waitingCount()).toBe(0);
    expect(h.scheduler.pending).toBe(0);
    await h.scheduler.runUntil(h.clock, h.clock.now() + AI_TRANSITION_MS + 1);
    expect(h.started).toEqual([]);
  });

  it('고아 키 뒤에 기다리는 사람이 있으면 그 사람과 붙는다', async () => {
    const h = harness();
    const a = player('A');
    await h.maker.join(a);

    await cache.listRemove(h.queueKey, a.key);
    await cache.listPushRight(h.queueKey, 'k-ghost');
    await cache.listPushRight(h.queueKey, a.key);
    await h.maker.join(player('B'));

    expect(h.started).toEqual([{ a: 'B', b: 'A' }]);
    expect(await h.maker.waitingCount()).toBe(0);
    expect(h.scheduler.pending).toBe(0);
  });

  it('같은 사람이 두 번 들어가도 자기 자신과 붙지 않는다', async () => {
    const h = harness();
    const a = player('A');
    await h.maker.join(a);
    await h.maker.join(a);

    expect(h.started).toEqual([]);
    expect(await h.maker.waitingCount()).toBe(1);
  });

  describe('난입 — 원작 GameActivity.java:611-616', () => {
    const victim: Waiting = { key: 'k-V', name: 'V', level: 10, conn: null };

    it('난입은 이전 판을 먼저 버리고 그다음에 새 매치를 연다', async () => {
      const h = harness({ intrudable: () => victim });
      await h.maker.join(player('I'));

      expect(h.started).toEqual([{ a: 'I', b: 'V' }]);
      expect(h.intruded).toEqual(['k-V']);
      expect(h.events).toEqual(['abort:k-V', 'start:I:V']);
    });

    it('난입자는 큐에서 기다리지 않는다', async () => {
      const h = harness({ intrudable: () => victim });
      await h.maker.join(player('I'));
      expect(await h.maker.waitingCount()).toBe(0);
      expect(h.scheduler.pending).toBe(0);
    });

    it('큐에 기다리는 사람이 있으면 난입보다 그쪽이 먼저다', async () => {
      let aiMatchExists = false;
      const h = harness({ intrudable: () => (aiMatchExists ? victim : null) });
      await h.maker.join(player('A'));
      expect(await h.maker.waitingCount()).toBe(1);

      aiMatchExists = true;
      await h.maker.join(player('B'));

      expect(h.started).toEqual([{ a: 'B', b: 'A' }]);
      expect(h.intruded).toEqual([]);
      expect(h.events).toEqual(['start:B:A']);
    });

    it('난입 대상이 없으면 평소대로 큐에 들어간다', async () => {
      const h = harness({ intrudable: () => null });
      await h.maker.join(player('A'));
      expect(h.started).toEqual([]);
      expect(await h.maker.waitingCount()).toBe(1);
    });
  });
});
