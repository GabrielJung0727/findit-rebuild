import { describe, expect, it } from 'vitest';
import { resolve } from 'node:path';
import { createRng } from '../platform/rng.js';
import { loadPuzzles } from './loader.js';
import { TARGET_COUNT, assignPuzzle } from './assigner.js';

const puzzles = loadPuzzles(resolve(import.meta.dirname, '../../../content/puzzles'));

describe('assignPuzzle — 스펙 §3.8 대칭 모델', () => {
  it('노출 개수는 5 개다', () => {
    expect(TARGET_COUNT).toBe(5);
    expect(assignPuzzle(puzzles, createRng(1)).targetIndices).toHaveLength(5);
  });

  it('같은 시드는 같은 배정을 낸다 — 양쪽 플레이어가 동일 퍼즐을 받는 근거', () => {
    const a = assignPuzzle(puzzles, createRng(42));
    const b = assignPuzzle(puzzles, createRng(42));
    expect(a.puzzle.id).toBe(b.puzzle.id);
    expect(a.targetIndices).toEqual(b.targetIndices);
  });

  it('선택된 인덱스가 중복되지 않는다', () => {
    for (let seed = 0; seed < 200; seed++) {
      const { targetIndices } = assignPuzzle(puzzles, createRng(seed));
      expect(new Set(targetIndices).size).toBe(TARGET_COUNT);
    }
  });

  it('선택된 인덱스가 모두 해당 퍼즐의 rect 범위 안이다', () => {
    for (let seed = 0; seed < 200; seed++) {
      const { puzzle, targetIndices } = assignPuzzle(puzzles, createRng(seed));
      for (const i of targetIndices) {
        expect(i).toBeGreaterThanOrEqual(0);
        expect(i).toBeLessThan(puzzle.rects.length);
      }
    }
  });

  it('충분히 돌리면 30 세트가 모두 등장한다 — 특정 퍼즐만 나오지 않는지', () => {
    const seen = new Set<string>();
    for (let seed = 0; seed < 3000; seed++) seen.add(assignPuzzle(puzzles, createRng(seed)).puzzle.id);
    expect(seen.size).toBe(30);
  });

  it('같은 퍼즐이라도 시드가 다르면 노출 조합이 달라진다 — 암기 완화의 근거', () => {
    const combos = new Set<string>();
    for (let seed = 0; seed < 3000; seed++) {
      const a = assignPuzzle(puzzles, createRng(seed));
      if (a.puzzle.id === 'a0002') combos.add([...a.targetIndices].sort((x, y) => x - y).join(','));
    }
    expect(combos.size).toBeGreaterThan(20);
  });

  it('rect 가 5 개 미만인 퍼즐만 주면 던진다', () => {
    const tiny = [{ id: 'x', width: 640, height: 720, rects: puzzles[0]!.rects.slice(0, 3) }];
    expect(() => assignPuzzle(tiny, createRng(1))).toThrow(/at least 5|부족/i);
  });

  it('빈 목록에서 던진다', () => {
    expect(() => assignPuzzle([], createRng(1))).toThrow();
  });
});
