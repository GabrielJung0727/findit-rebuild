import type { Rng } from '../platform/rng.js';

// AI 탐색 주기 — 스펙 §3.6.
//   clamp( (7 − level × 0.03) × (1 + U(−0.15, +0.15)), 1.0, 7.0 )
// 원작 기획서의 초기안은 level × 0.02 였고 0.03 으로 개정됐다.

export const AI_BASE_SECONDS = 7;
export const AI_LEVEL_FACTOR = 0.03;
export const AI_JITTER = 0.15;
export const AI_MIN_SECONDS = 1;
export const AI_MAX_SECONDS = 7;

/** AI 가 다음 틀린 부위를 찾기까지 걸리는 시간(ms). */
export function aiFindDelayMs(level: number, rng: Rng): number {
  const clampedLevel = Math.max(1, Math.min(100, level));
  const base = AI_BASE_SECONDS - clampedLevel * AI_LEVEL_FACTOR;
  const jitter = 1 + (rng.float() * 2 - 1) * AI_JITTER;
  const seconds = Math.max(AI_MIN_SECONDS, Math.min(AI_MAX_SECONDS, base * jitter));
  return Math.round(seconds * 1000);
}
