import type { PlayerSlot } from './state.js';

/**
 * 리듀서에 들어가는 이벤트.
 *
 * TIMER 는 주기 틱이 아니다. 리듀서가 돌려주는 wakeAt 시각에 런타임이
 * 한 번만 넣는다 — 40 초 만료, 카운트다운 종료, AI 행동이 이 경로로 온다.
 * 스펙 §6.2 의 "주기 틱을 쏘지 않는다" 를 지키면서도 시간이 흐르게 하는 장치다.
 */
export type BattleEvent =
  | { kind: 'READY'; slot: PlayerSlot }
  | { kind: 'TAP'; slot: PlayerSlot; x: number; y: number }
  | { kind: 'SKILL'; slot: PlayerSlot; skillId: string }
  | { kind: 'LEAVE'; slot: PlayerSlot }
  | { kind: 'TIMER' };
