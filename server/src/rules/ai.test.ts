import { describe, expect, it } from 'vitest';
import type { Rng } from '../platform/rng.js';
import { createRng } from '../platform/rng.js';
import {
  AI_BASE_SECONDS,
  AI_JITTER,
  AI_LEVEL_FACTOR,
  AI_MAX_SECONDS,
  AI_MIN_SECONDS,
  aiFindDelayMs,
} from './ai.js';

const fixedRng = (value: number): Rng => ({
  float: () => value,
  int: () => 0,
  pick: <T>(items: readonly T[]): T => items[0]!,
});

describe('aiFindDelayMs — 스펙 §3.6', () => {
  it('상수가 스펙과 같다', () => {
    expect(AI_BASE_SECONDS).toBe(7);
    expect(AI_LEVEL_FACTOR).toBe(0.03);
    expect(AI_JITTER).toBe(0.15);
    expect(AI_MIN_SECONDS).toBe(1);
    expect(AI_MAX_SECONDS).toBe(7);
  });

  it('중앙 난수에서는 스펙의 level × 0.03 공식을 정확히 적용한다', () => {
    expect(aiFindDelayMs(100, fixedRng(0.5))).toBe(4000);
  });

  it('같은 시드는 같은 값을 낸다', () => {
    expect(aiFindDelayMs(30, createRng(5))).toBe(aiFindDelayMs(30, createRng(5)));
  });

  it('항상 [1000, 7000] ms 범위 안이다', () => {
    const rng = createRng(1);
    for (let level = 1; level <= 100; level++) {
      for (let i = 0; i < 40; i++) {
        const ms = aiFindDelayMs(level, rng);
        expect(ms).toBeGreaterThanOrEqual(1000);
        expect(ms).toBeLessThanOrEqual(7000);
      }
    }
  });

  it('정수 밀리초를 낸다', () => {
    const rng = createRng(2);
    for (let i = 0; i < 50; i++) expect(Number.isInteger(aiFindDelayMs(50, rng))).toBe(true);
  });

  it('고레벨일수록 평균이 빨라진다 — 난이도 상승이 실제로 작동하는지', () => {
    const mean = (level: number): number => {
      const rng = createRng(777);
      let total = 0;
      for (let i = 0; i < 2000; i++) total += aiFindDelayMs(level, rng);
      return total / 2000;
    };
    expect(mean(100)).toBeLessThan(mean(50));
    expect(mean(50)).toBeLessThan(mean(1));
  });

  it('레벨 1 의 평균이 기본 7 초에 근접한다 (±15% jitter 는 평균 0)', () => {
    const rng = createRng(31);
    let total = 0;
    for (let i = 0; i < 5000; i++) total += aiFindDelayMs(1, rng);
    expect(total / 5000).toBeGreaterThan(6000);
    expect(total / 5000).toBeLessThan(7000);
  });

  it('범위를 벗어난 레벨을 [1, 100] 으로 clamp 한다', () => {
    expect(aiFindDelayMs(0, createRng(9))).toBe(aiFindDelayMs(1, createRng(9)));
    expect(aiFindDelayMs(999, createRng(9))).toBe(aiFindDelayMs(100, createRng(9)));
  });
});
