import type { Rng } from '../platform/rng.js';
import type { Puzzle } from './types.js';

/** 한 판에 노출되는 틀린 부위 개수 (스펙 §3.1). */
export const TARGET_COUNT = 5;

export interface PuzzleAssignment {
  puzzle: Puzzle;
  /** 이번 판에 노출할 rect 인덱스. 길이는 항상 TARGET_COUNT. */
  targetIndices: readonly number[];
}

/**
 * 한 매치의 퍼즐과 노출 조합을 정한다.
 *
 * 스펙 §3.8 은 대칭 모델을 채택했다 — 두 플레이어가 같은 퍼즐, 같은 5 개를 받는다.
 * 그래서 이 함수는 매치당 한 번만 불리고 결과가 양쪽에 공유된다.
 *
 * 스펙이 격리를 요구한 지점이 바로 여기다. 캐주얼=비대칭 / 랭크=대칭으로
 * 나누는 결정이 나오면 이 함수만 바뀐다.
 */
export function assignPuzzle(puzzles: readonly Puzzle[], rng: Rng): PuzzleAssignment {
  const puzzle = rng.pick(puzzles);

  if (puzzle.rects.length < TARGET_COUNT) {
    throw new Error(`${puzzle.id}: rect ${puzzle.rects.length}개 — at least ${TARGET_COUNT} required`);
  }

  // 부분 Fisher-Yates. 전체를 섞지 않고 앞 TARGET_COUNT 개만 확정한다.
  const pool = puzzle.rects.map((rect) => rect.index);
  for (let i = 0; i < TARGET_COUNT; i++) {
    const j = i + rng.int(pool.length - i);
    [pool[i], pool[j]] = [pool[j]!, pool[i]!];
  }

  return { puzzle, targetIndices: pool.slice(0, TARGET_COUNT) };
}
