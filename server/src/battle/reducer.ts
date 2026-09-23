import type { PuzzleAssignment } from '../content/assigner.js';
import type { Rng } from '../platform/rng.js';
import { comboScoreBonus } from '../rules/combo.js';
import { matchScore } from '../rules/score.js';
import { blindDurationMs, skillById } from '../rules/skills.js';
import type { BattleEvent } from './events.js';
import {
  COUNTDOWN_MS,
  MATCH_DURATION_MS,
  MISS_LOCK_MS,
  opponentOf,
  type BattleState,
  type Outbound,
  type PlayerSlot,
  type PlayerState,
} from './state.js';

const EXP_PER_FIND = 100;
const COIN_PER_FIND = 1;

/**
 * 콘텐츠 URL 발급 포트.
 *
 * 리듀서가 URL 문자열을 조립하면 클라이언트가 경로 규칙을 학습해 아직 발견하지
 * 않은 패치를 미리 받아볼 수 있다. 서명된 매치 한정 URL 발급은 Plan 3 런타임의
 * 책임이며, 엔진은 그 발급기만 호출한다.
 */
export interface ContentUrls {
  base(matchId: string): string;
  patch(matchId: string, rectIndex: number): string;
}

export interface ReduceContext {
  /** 권위 시계의 현재 시각(ms). 클라이언트의 시각은 판정에 쓰지 않는다. */
  now: number;
  rng: Rng;
  urls: ContentUrls;
}

export interface ReduceResult {
  state: BattleState;
  outbound: Outbound[];
  /** 현재 상태의 다음 TIMER 예약 시각. 예약할 일이 없으면 null. */
  wakeAt: number | null;
}

/**
 * 좌표가 아직 발견되지 않은 노출 대상 안에 있으면 그 rect 인덱스를, 아니면 null.
 */
export function hitTest(
  assignment: PuzzleAssignment,
  targetIndices: readonly number[],
  revealed: readonly number[],
  x: number,
  y: number,
): number | null {
  for (const index of targetIndices) {
    if (revealed.includes(index)) continue;
    const rect = assignment.puzzle.rects.find((item) => item.index === index);
    if (!rect) continue;
    if (x >= rect.x && x < rect.x + rect.w && y >= rect.y && y < rect.y + rect.h) {
      return index;
    }
  }
  return null;
}

function clonePlayer(player: PlayerState): PlayerState {
  return { ...player, found: [...player.found] };
}

function cloneState(state: BattleState): BattleState {
  return {
    ...state,
    revealed: [...state.revealed],
    p1: clonePlayer(state.p1),
    p2: clonePlayer(state.p2),
  };
}

/**
 * 상태만 보고 런타임이 다음에 깨울 시각을 결정한다.
 *
 * 잠금과 가림은 다음 입력 때 권위 시계와 비교하면 되므로 별도 예약이 필요 없다.
 */
export function nextWakeAt(state: BattleState): number | null {
  switch (state.phase) {
    case 'COUNTDOWN':
      return state.countdownStartedAt + COUNTDOWN_MS;
    case 'PLAYING':
      return state.playStartedAt + MATCH_DURATION_MS;
    default:
      return null;
  }
}

function noChange(state: BattleState): ReduceResult {
  return { state, outbound: [], wakeAt: nextWakeAt(state) };
}

function playDeadline(state: BattleState): number {
  return state.playStartedAt + MATCH_DURATION_MS;
}

/** 종료 시 양쪽에 보낼 END를 각자 관점에서 만든다. */
function endOutbound(state: BattleState): Outbound[] {
  return (['p1', 'p2'] as const).map((slot) => {
    const me = state[slot];
    const other = state[opponentOf(slot)];
    const isWinner = state.winner === slot;
    const isDraw = state.winner === 'draw';
    const coinDelta = isDraw
      ? me.found.length * COIN_PER_FIND
      : isWinner
        ? (me.found.length + other.found.length) * COIN_PER_FIND
        : 0;

    return {
      to: slot,
      type: 'END',
      payload: {
        result: isDraw ? 'draw' : isWinner ? 'win' : 'lose',
        myFound: me.found.length,
        opponentFound: other.found.length,
        score: matchScore({
          findCount: me.found.length,
          // 원작과 동일 — 누적이 아니라 정산 시점 live 콤보 1회 조회 (legacy L3048).
          comboBonus: comboScoreBonus(me.combo),
          isWinner,
        }),
        coinDelta,
        expDelta: me.found.length * EXP_PER_FIND,
      },
    };
  });
}

function finish(state: BattleState, winner: PlayerSlot | 'draw'): ReduceResult {
  const next = cloneState(state);
  next.phase = 'ENDED';
  next.winner = winner;
  return { state: next, outbound: endOutbound(next), wakeAt: nextWakeAt(next) };
}

function resolveByCount(state: BattleState): PlayerSlot | 'draw' {
  if (state.p1.found.length > state.p2.found.length) return 'p1';
  if (state.p2.found.length > state.p1.found.length) return 'p2';
  return 'draw';
}

function onReady(state: BattleState, slot: PlayerSlot, ctx: ReduceContext): ReduceResult {
  if (state.phase !== 'WAITING' || state[slot].ready) return noChange(state);

  const next = cloneState(state);
  next[slot] = { ...next[slot], ready: true };

  if (!(next.p1.ready && next.p2.ready)) {
    return { state: next, outbound: [], wakeAt: nextWakeAt(next) };
  }

  next.phase = 'COUNTDOWN';
  next.countdownStartedAt = ctx.now;
  return {
    state: next,
    outbound: [{ to: 'both', type: 'COUNTDOWN', payload: { seconds: COUNTDOWN_MS / 1000 } }],
    wakeAt: nextWakeAt(next),
  };
}

function startPlaying(state: BattleState, ctx: ReduceContext): ReduceResult {
  const next = cloneState(state);
  next.phase = 'PLAYING';
  next.playStartedAt = ctx.now;

  return {
    state: next,
    outbound: [
      {
        to: 'both',
        type: 'START',
        payload: {
          puzzleId: next.puzzleId,
          imageUrl: ctx.urls.base(next.matchId),
          width: next.width,
          height: next.height,
          targetCount: next.targetIndices.length,
          durationMs: MATCH_DURATION_MS,
        },
      },
    ],
    wakeAt: nextWakeAt(next),
  };
}

function onTap(
  state: BattleState,
  slot: PlayerSlot,
  x: number,
  y: number,
  ctx: ReduceContext,
): ReduceResult {
  if (state.phase !== 'PLAYING') return noChange(state);

  // 플레이 구간은 [playStartedAt, playStartedAt + MATCH_DURATION_MS) 이다.
  // TIMER의 >= 종료 조건과 같은 경계여야, 같은 시각의 이벤트 순서가 승패를
  // 바꾸지 않는다.
  if (ctx.now < state.playStartedAt || ctx.now >= playDeadline(state)) return noChange(state);
  if (ctx.now < state[slot].lockedUntil) return noChange(state);

  const hit = hitTest(state.assignment, state.targetIndices, state.revealed, x, y);
  const next = cloneState(state);
  const me = next[slot];
  const other = opponentOf(slot);

  if (hit === null) {
    next[slot] = { ...me, combo: 0, lockedUntil: ctx.now + MISS_LOCK_MS };
    return {
      state: next,
      outbound: [{ to: slot, type: 'LOCK', payload: { durationMs: MISS_LOCK_MS } }],
      wakeAt: nextWakeAt(next),
    };
  }

  const rect = next.assignment.puzzle.rects.find((item) => item.index === hit)!;
  const combo = me.combo + 1;
  next.revealed = [...next.revealed, hit];
  next[slot] = {
    ...me,
    found: [...me.found, hit],
    combo,
  };
  next[other] = { ...next[other], combo: 0 };

  // REVEAL 은 받는 사람 기준으로 by 를 쓴다. 이 프로토콜의 다른 s2c 가
  // 이미 그렇다 — END.myFound, OPPONENT_PROGRESS.found. 절대 슬롯('p1')을
  // 보내면 클라이언트가 자기 슬롯을 알 방법이 없어(MATCH_FOUND 도 슬롯을
  // 싣지 않는다) 내가 찾은 것도 상대 것으로 그린다.
  //
  // 값이 수신자마다 다르므로 to: 'both' 하나로는 만들 수 없다.
  //
  // URL 은 한 번만 만들어 둘이 나눠 쓴다. 스펙 §6.3 은 패치 URL 을
  // "일회용" 으로 규정했고, Plan 3 은 그것을 TTL + 매치·인덱스 바인딩으로
  // 좁히면서 "엄격한 1회 소비는 P1 에서 재검토" 라고 적어 뒀다. P1 이 Redis
  // 사용 표시로 진짜 1회 소비를 구현하면, 한 rect 에 URL 을 두 번 만드는
  // 코드는 토큰을 둘 태우고 먼저 것을 무효화할 수도 있다.
  const patchUrl = ctx.urls.patch(next.matchId, hit);
  const revealPayload = {
    index: hit,
    x: rect.x,
    y: rect.y,
    w: rect.w,
    h: rect.h,
    patchUrl,
  };

  const revealOutbound: Outbound[] = [
    { to: slot, type: 'REVEAL', payload: { by: 'me', ...revealPayload } },
    { to: other, type: 'REVEAL', payload: { by: 'opponent', ...revealPayload } },
    { to: other, type: 'OPPONENT_PROGRESS', payload: { found: next[slot].found.length } },
  ];

  if (next[slot].found.length >= next.targetIndices.length) {
    const ended = finish(next, slot);
    return { ...ended, outbound: [...revealOutbound, ...ended.outbound] };
  }

  if (next.revealed.length >= next.targetIndices.length) {
    const ended = finish(next, resolveByCount(next));
    return { ...ended, outbound: [...revealOutbound, ...ended.outbound] };
  }

  return {
    state: next,
    outbound: revealOutbound,
    wakeAt: nextWakeAt(next),
  };
}

function onSkill(
  state: BattleState,
  slot: PlayerSlot,
  skillId: string,
  ctx: ReduceContext,
): ReduceResult {
  if (state.phase !== 'PLAYING') return noChange(state);

  const skill = skillById(skillId);
  if (!skill || state[slot].level < skill.unlockLevel) return noChange(state);
  if (ctx.now < state[slot].skillActiveUntil) return noChange(state);

  const attacker = state[slot];
  const other = opponentOf(slot);
  const defender = state[other];
  const durationMs = blindDurationMs({
    skillDurationMs: skill.durationMs,
    attackerAttack: attacker.ability.attack,
    attackerItemBonusMs: attacker.itemAttackBonusMs,
    defenderDefense: defender.ability.defense,
    defenderItemReductionMs: defender.itemDefenseReductionMs,
  });

  const next = cloneState(state);
  next[slot] = { ...next[slot], skillActiveUntil: ctx.now + durationMs };
  next[other] = { ...next[other], blindedUntil: ctx.now + durationMs };
  return {
    state: next,
    outbound: [{ to: other, type: 'BLIND', payload: { durationMs, effectId: skill.effectAsset } }],
    wakeAt: nextWakeAt(next),
  };
}

export function reduce(
  state: BattleState,
  event: BattleEvent,
  ctx: ReduceContext,
): ReduceResult {
  if (state.phase === 'ENDED') return noChange(state);

  switch (event.kind) {
    case 'READY':
      return onReady(state, event.slot, ctx);
    case 'TAP':
      return onTap(state, event.slot, event.x, event.y, ctx);
    case 'SKILL':
      return onSkill(state, event.slot, event.skillId, ctx);
    case 'LEAVE':
      return finish(state, opponentOf(event.slot));
    case 'TIMER':
      if (state.phase === 'COUNTDOWN' && ctx.now >= state.countdownStartedAt + COUNTDOWN_MS) {
        return startPlaying(state, ctx);
      }
      if (state.phase === 'PLAYING' && ctx.now >= playDeadline(state)) {
        return finish(state, resolveByCount(state));
      }
      return noChange(state);
  }
}
