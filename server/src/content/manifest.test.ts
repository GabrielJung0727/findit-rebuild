import { describe, expect, it } from 'vitest';
import { buildManifest } from './manifest.js';
import type { Puzzle } from './types.js';

const puzzles: readonly Puzzle[] = [
  {
    id: 'a0001', width: 480, height: 320,
    rects: [
      { index: 0, x: 11, y: 22, w: 33, h: 44, sourceDrawable: 'a0001_0' },
      { index: 1, x: 55, y: 66, w: 77, h: 88, sourceDrawable: 'a0001_1' },
      { index: 2, x: 99, y: 111, w: 122, h: 133, sourceDrawable: 'a0001_2' },
    ],
  },
  {
    id: 'a0002', width: 640, height: 576,
    rects: [{ index: 0, x: 17, y: 29, w: 38, h: 51, sourceDrawable: 'a0002_0' }],
  },
];

describe('클라이언트 매니페스트', () => {
  it('버전과 퍼즐의 id·크기를 싣는다', () => {
    const manifest = buildManifest(puzzles, 'v7');
    expect(manifest.version).toBe('v7');
    expect(manifest.puzzles).toEqual([
      { id: 'a0001', width: 480, height: 320 },
      { id: 'a0002', width: 640, height: 576 },
    ]);
  });

  it('엔트리의 키가 정확히 id·width·height 뿐이다 — 스펙 §6.3', () => {
    for (const entry of buildManifest(puzzles, 'v7').puzzles) {
      expect(Object.keys(entry).sort()).toEqual(['height', 'id', 'width']);
    }
  });

  it('직렬화한 어디에도 좌표 값이 없다 — 스펙 §6.3', () => {
    const json = JSON.stringify(buildManifest(puzzles, 'v7'));

    for (const value of [11, 22, 33, 44, 55, 66, 77, 88, 99, 111, 122, 133, 17, 29, 38, 51]) {
      expect(json).not.toContain(String(value));
    }
    for (const key of ['rects', 'sourceDrawable', 'index']) {
      expect(json).not.toContain(key);
    }
  });

  it('rect 개수를 어떤 형태로도 싣지 않는다 — 스펙 §6.4', () => {
    const manifest = buildManifest(puzzles, 'v7');
    const json = JSON.stringify(manifest);
    expect(json).not.toContain('Count');
    for (const entry of manifest.puzzles) {
      for (const value of Object.values(entry)) {
        expect(Array.isArray(value)).toBe(false);
      }
    }
  });

  it('퍼즐이 없어도 형태를 지킨다', () => {
    expect(buildManifest([], 'v0')).toEqual({ version: 'v0', puzzles: [] });
  });
});
