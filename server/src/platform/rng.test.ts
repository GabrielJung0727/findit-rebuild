import { describe, expect, it } from 'vitest';
import { createRng } from './rng.js';
import { TestClock } from './clock.js';

describe('createRng', () => {
  it('같은 시드는 같은 수열을 낸다 — 매치 재현의 전제', () => {
    const a = createRng(12345);
    const b = createRng(12345);
    const seqA = Array.from({ length: 20 }, () => a.float());
    const seqB = Array.from({ length: 20 }, () => b.float());
    expect(seqA).toEqual(seqB);
  });

  it('다른 시드는 다른 수열을 낸다', () => {
    const a = createRng(1);
    const b = createRng(2);
    expect(a.float()).not.toBe(b.float());
  });

  it('float 은 [0, 1) 범위다', () => {
    const rng = createRng(7);
    for (let i = 0; i < 1000; i++) {
      const v = rng.float();
      expect(v).toBeGreaterThanOrEqual(0);
      expect(v).toBeLessThan(1);
    }
  });

  it('int 은 [0, max) 범위이고 경계를 넘지 않는다', () => {
    const rng = createRng(99);
    for (let i = 0; i < 1000; i++) {
      const v = rng.int(10);
      expect(Number.isInteger(v)).toBe(true);
      expect(v).toBeGreaterThanOrEqual(0);
      expect(v).toBeLessThan(10);
    }
  });

  it('int(1) 은 항상 0 이다', () => {
    const rng = createRng(3);
    expect([rng.int(1), rng.int(1), rng.int(1)]).toEqual([0, 0, 0]);
  });

  it('pick 은 배열 원소 중 하나를 고른다', () => {
    const rng = createRng(42);
    const items = ['a', 'b', 'c'] as const;
    for (let i = 0; i < 100; i++) {
      expect(items).toContain(rng.pick(items));
    }
  });

  it('pick 은 빈 배열에서 던진다 — 조용히 undefined 를 내면 원인 추적이 어렵다', () => {
    expect(() => createRng(1).pick([])).toThrow(/empty/i);
  });
});

describe('TestClock', () => {
  it('advance 한 만큼만 흐른다', () => {
    const clock = new TestClock(1000);
    expect(clock.now()).toBe(1000);
    clock.advance(500);
    expect(clock.now()).toBe(1500);
  });

  it('set 은 절대 시각을 지정한다', () => {
    const clock = new TestClock();
    clock.set(40_000);
    expect(clock.now()).toBe(40_000);
  });

  it('뒤로 가는 advance 를 거부한다 — monotonic 계약이다', () => {
    const clock = new TestClock(100);
    expect(() => clock.advance(-1)).toThrow(/monotonic/i);
  });

  it('뒤로 가는 set 을 거부한다 — monotonic 계약이다', () => {
    const clock = new TestClock(100);
    expect(() => clock.set(99)).toThrow(/monotonic/i);
  });
});
