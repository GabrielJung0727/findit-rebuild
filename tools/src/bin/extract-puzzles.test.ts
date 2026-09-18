import { describe, expect, it } from 'vitest';
import { readFileSync } from 'node:fs';
import { resolve } from 'node:path';
import { buildPuzzleOutput } from './extract-puzzles.js';
import { CONTENT } from '../paths.js';

const { puzzles, manifest } = buildPuzzleOutput();

describe('buildPuzzleOutput', () => {
  it('퍼즐 30개와 매니페스트를 만든다', () => {
    expect(puzzles).toHaveLength(30);
    expect(manifest.puzzles).toHaveLength(30);
  });

  it('매니페스트의 rectCount 가 실제 rect 수와 맞는다', () => {
    for (const entry of manifest.puzzles) {
      const puzzle = puzzles.find((p) => p.id === entry.id)!;
      expect(entry.rectCount).toBe(puzzle.rects.length);
    }
  });

  it('매니페스트에 좌표가 들어가지 않는다 — 클라에 내려가는 파일이다', () => {
    const serialized = JSON.stringify(manifest);
    expect(serialized).not.toContain('rects');
    expect(serialized).not.toContain('"x"');
  });

  it('버전이 결정론적이다 — 같은 입력이면 같은 버전', () => {
    expect(buildPuzzleOutput().manifest.version).toBe(manifest.version);
  });
});

describe('생성된 파일', () => {
  it('npm run content:puzzles 실행 후 a0001.json 을 읽을 수 있다', () => {
    const raw = readFileSync(resolve(CONTENT, 'puzzles/a0001.json'), 'utf8');
    const puzzle = JSON.parse(raw) as { id: string; rects: unknown[] };
    expect(puzzle.id).toBe('a0001');
    expect(puzzle.rects).toHaveLength(7);
  });
});
