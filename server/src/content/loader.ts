import { readFileSync, readdirSync } from 'node:fs';
import { resolve } from 'node:path';

import type { Puzzle } from './types.js';

/** 5-of-N 이 성립하려면 퍼즐당 최소 이만큼의 rect 가 필요하다. */
const MIN_RECTS = 5;

/**
 * 퍼즐 디렉터리를 읽는다. 이 계획에서 파일시스템을 건드리는 유일한 함수다.
 * 배틀 엔진은 Puzzle 객체만 받고 그것이 어디서 왔는지 모른다.
 */
export function loadPuzzles(dir: string): Puzzle[] {
  const files = readdirSync(dir)
    .filter((file) => file.endsWith('.json') && file !== 'manifest.json')
    .sort();

  const puzzles = files.map((file) => {
    const puzzle = JSON.parse(readFileSync(resolve(dir, file), 'utf8')) as Puzzle;
    if (puzzle.rects.length < MIN_RECTS) {
      throw new Error(`${puzzle.id}: rect ${puzzle.rects.length}개 — 최소 ${MIN_RECTS}개 필요`);
    }
    return puzzle;
  });

  if (puzzles.length === 0) throw new Error(`no puzzles found in ${dir}`);
  return puzzles;
}
