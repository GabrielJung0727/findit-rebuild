import { aiFindDelayMs } from '../rules/ai.js';
import type { ReduceContext } from './reducer.js';
import type { BattleEvent } from './events.js';
import { MATCH_DURATION_MS, type BattleState, type PlayerSlot } from './state.js';

export interface AiPlan {
  /** 이 이벤트를 넣어야 할 절대 시각. */
  at: number;
  event: BattleEvent;
}

/**
 * AI는 리듀서 밖에서 사람과 같은 TAP 이벤트를 계획한다. 따라서 판정 경로는
 * 사람과 AI가 완전히 공유하며, AI는 스펙 §3.6대로 남은 대상만 정확히 누른다.
 */
export function planAiAction(
  state: BattleState,
  slot: PlayerSlot,
  ctx: ReduceContext,
): AiPlan | null {
  const player = state[slot];
  if (!player.isAi || state.phase !== 'PLAYING') return null;
  if (ctx.now < player.lockedUntil) return null;

  const remaining = state.targetIndices.filter((index) => !state.revealed.includes(index));
  if (remaining.length === 0) return null;

  const at = ctx.now + aiFindDelayMs(player.level, ctx.rng);
  if (at >= state.playStartedAt + MATCH_DURATION_MS) return null;

  const index = ctx.rng.pick(remaining);
  const rect = state.assignment.puzzle.rects.find((item) => item.index === index)!;
  return {
    at,
    event: {
      kind: 'TAP',
      slot,
      x: rect.x + Math.floor(rect.w / 2),
      y: rect.y + Math.floor(rect.h / 2),
    },
  };
}
