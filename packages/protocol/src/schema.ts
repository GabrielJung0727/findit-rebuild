export type FieldType = 'int' | 'double' | 'string' | 'bool';

export interface FieldDef {
  readonly type: FieldType;
}

export interface MessageDef {
  readonly dir: 'c2s' | 's2c';
  readonly fields: Readonly<Record<string, FieldDef>>;
}

const int = { type: 'int' } as const satisfies FieldDef;
const str = { type: 'string' } as const satisfies FieldDef;
const bool = { type: 'bool' } as const satisfies FieldDef;

/**
 * 프로토콜 단일 진실 출처. 스펙 §8 의 메시지 목록에 대응한다.
 * 여기만 고치면 TypeScript 검증기와 Dart 데이터 클래스가 함께 따라온다.
 */
export const MESSAGES = {
  // ── C→S ──────────────────────────────────────────────
  AUTH: { dir: 'c2s', fields: { token: str } },
  QUEUE_JOIN: { dir: 'c2s', fields: { mode: str } },
  QUEUE_LEAVE: { dir: 'c2s', fields: {} },
  READY: { dir: 'c2s', fields: {} },
  TAP: { dir: 'c2s', fields: { x: int, y: int } },
  SKILL: { dir: 'c2s', fields: { skillId: str } },
  LEAVE: { dir: 'c2s', fields: {} },

  // ── S→C ──────────────────────────────────────────────
  QUEUED: { dir: 's2c', fields: { position: int } },
  MATCH_FOUND: {
    dir: 's2c',
    fields: { matchId: str, opponentName: str, opponentLevel: int, isAi: bool },
  },
  COUNTDOWN: { dir: 's2c', fields: { seconds: int } },
  START: {
    dir: 's2c',
    fields: { puzzleId: str, imageUrl: str, width: int, height: int, targetCount: int, durationMs: int },
  },
  REVEAL: {
    dir: 's2c',
    fields: { by: str, index: int, x: int, y: int, w: int, h: int, patchUrl: str },
  },
  LOCK: { dir: 's2c', fields: { durationMs: int } },
  BLIND: { dir: 's2c', fields: { durationMs: int, effectId: str } },
  OPPONENT_PROGRESS: { dir: 's2c', fields: { found: int } },
  END: {
    dir: 's2c',
    fields: {
      result: str, myFound: int, opponentFound: int,
      score: int, coinDelta: int, expDelta: int,
    },
  },
  ERROR: { dir: 's2c', fields: { code: str, message: str } },
} as const satisfies Record<string, MessageDef>;

export type MessageType = keyof typeof MESSAGES;
