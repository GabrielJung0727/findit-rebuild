import { describe, expect, it } from 'vitest';
import { resolve } from 'node:path';
import { loadPuzzles } from './loader.js';

const CONTENT = resolve(import.meta.dirname, '../../../content/puzzles');
const puzzles = loadPuzzles(CONTENT);

describe('loadPuzzles', () => {
  it('Plan 1 이 만든 퍼즐 30 세트를 읽는다', () => {
    expect(puzzles).toHaveLength(30);
  });

  it('rect 총계가 262 개다', () => {
    expect(puzzles.reduce((n, p) => n + p.rects.length, 0)).toBe(262);
  });

  it('매니페스트를 퍼즐로 착각하지 않는다', () => {
    expect(puzzles.map((p) => p.id)).not.toContain('manifest');
  });

  it('모든 퍼즐이 640x720 이다', () => {
    for (const p of puzzles) expect([p.width, p.height]).toEqual([640, 720]);
  });

  it('모든 퍼즐이 최소 5 개의 rect 를 가진다 — 5-of-N 성립 조건', () => {
    for (const p of puzzles) expect(p.rects.length).toBeGreaterThanOrEqual(5);
  });

  it('id 순으로 정렬돼 결정론적이다 — 파일시스템 순서에 의존하면 안 된다', () => {
    const ids = puzzles.map((p) => p.id);
    expect(ids).toEqual([...ids].sort());
  });

  it('없는 디렉터리에서 던진다', () => {
    expect(() => loadPuzzles(resolve(CONTENT, '../nope'))).toThrow();
  });

  it('퍼즐이 하나도 없으면 던진다 — 빈 콘텐츠로 서버가 뜨면 안 된다', () => {
    expect(() => loadPuzzles(resolve(import.meta.dirname))).toThrow(/no puzzles/i);
  });
});
