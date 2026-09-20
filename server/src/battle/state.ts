import type { MessageType } from '@findit/protocol';
import { abilityForLevel, type Ability } from '../rules/levels.js';
import type { PuzzleAssignment } from '../content/assigner.js';

// 스펙 §3.1 확정 수치.
export const MATCH_DURATION_MS = 40_000;
export const COUNTDOWN_MS = 3_000;
export const MISS_LOCK_MS = 2_000;

export type PlayerSlot = 'p1' | 'p2';
export type Phase = 'WAITING' | 'COUNTDOWN' | 'PLAYING' | 'ENDED';

export function opponentOf(slot: PlayerSlot): PlayerSlot {
  return slot === 'p1' ? 'p2' : 'p1';
}

export interface PlayerState {
  name: string;
  level: number;
  isAi: boolean;
  ability: Ability;
  ready: boolean;
  /** 이 플레이어가 찾은 rect 인덱스 (발견 순서). */
  found: number[];
  combo: number;
  comboBonus: number;
  /** 오답 후 입력이 잠기는 절대 시각. 지났으면 잠금 없음. */
  lockedUntil: number;
  /** 상대 스킬로 화면이 가려지는 절대 시각. */
  blindedUntil: number;
  /** 아이템 보정 — P0 는 0. Plan 3 의 인벤토리가 채운다. */
  itemAttackBonusMs: number;
  itemDefenseReductionMs: number;
}

export interface BattleState {
  matchId: string;
  phase: Phase;
  puzzleId: string;
  width: number;
  height: number;
  /** 이번 판에 노출된 rect 인덱스. 좌표는 절대 클라로 나가지 않는다. */
  targetIndices: readonly number[];
  /** 이미 발견된 rect 인덱스 — 양쪽 통틀어. */
  revealed: number[];
  p1: PlayerState;
  p2: PlayerState;
  /** COUNTDOWN 진입 시각. PLAYING 시작은 여기에 COUNTDOWN_MS 를 더한 값. */
  countdownStartedAt: number;
  /** PLAYING 시작 시각 (권위 시계). 0 이면 아직 시작 전. */
  playStartedAt: number;
  /** 리듀서가 rect 좌표를 찾을 때 쓴다. 클라로 나가지 않는다. */
  assignment: PuzzleAssignment;
  winner: PlayerSlot | 'draw' | null;
}

export interface CreatePlayerParams {
  name: string;
  level: number;
  isAi: boolean;
}

export interface CreateBattleParams {
  matchId: string;
  assignment: PuzzleAssignment;
  p1: CreatePlayerParams;
  p2: CreatePlayerParams;
  startedAt: number;
}

function createPlayer({ name, level, isAi }: CreatePlayerParams): PlayerState {
  return {
    name,
    level,
    isAi,
    ability: abilityForLevel(level),
    ready: false,
    found: [],
    combo: 0,
    comboBonus: 0,
    lockedUntil: 0,
    blindedUntil: 0,
    itemAttackBonusMs: 0,
    itemDefenseReductionMs: 0,
  };
}

export function createBattle(params: CreateBattleParams): BattleState {
  const { assignment } = params;
  return {
    matchId: params.matchId,
    phase: 'WAITING',
    puzzleId: assignment.puzzle.id,
    width: assignment.puzzle.width,
    height: assignment.puzzle.height,
    targetIndices: assignment.targetIndices,
    revealed: [],
    p1: createPlayer(params.p1),
    p2: createPlayer(params.p2),
    countdownStartedAt: 0,
    playStartedAt: 0,
    assignment,
    winner: null,
  };
}

/** 리듀서가 런타임에 돌려주는 송신 지시. WS 를 모른다. */
export interface Outbound {
  to: PlayerSlot | 'both';
  type: MessageType;
  payload: Record<string, unknown>;
}
