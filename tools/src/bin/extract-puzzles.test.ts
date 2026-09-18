import { describe, expect, it } from 'vitest';
import { readdirSync, readFileSync } from 'node:fs';
import { resolve } from 'node:path';
import { buildPuzzleOutput } from './extract-puzzles.js';
import { CONTENT } from '../paths.js';

const { puzzles, manifest } = buildPuzzleOutput();

describe('buildPuzzleOutput', () => {
  it('퍼즐 30개와 매니페스트를 만든다', () => {
    expect(puzzles).toHaveLength(30);
    expect(manifest.puzzles).toHaveLength(30);
  });

  it('매니페스트에 좌표가 들어가지 않는다 — 클라에 내려가는 파일이다', () => {
    // 문자열 검사가 아니라 키 집합을 고정한다. 좌표가 다른 이름으로 다시
    // 들어와도(px, coords 등) 이 단언이 막는다.
    for (const entry of manifest.puzzles) {
      expect(Object.keys(entry).sort()).toEqual(['height', 'id', 'width']);
    }
    expect(Object.keys(manifest).sort()).toEqual(['puzzles', 'version']);
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

describe('재생성 가드 — 262개 좌표의 유일한 안전망', () => {
  // generatedAt 처럼 실행마다 바뀌는 필드가 없어졌으므로, 메모리에서 다시
  // 만든 출력이 커밋된 content/puzzles/*.json 과 바이트 단위로 같아야 한다.
  // 이 테스트가 깨지면 파이프라인 출력과 커밋된 콘텐츠가 갈라졌다는 뜻이다.
  const outDir = resolve(CONTENT, 'puzzles');

  it('퍼즐별 JSON이 재생성 결과와 바이트 단위로 같다', () => {
    for (const puzzle of puzzles) {
      const expected = `${JSON.stringify(puzzle, null, 2)}\n`;
      const committed = readFileSync(resolve(outDir, `${puzzle.id}.json`), 'utf8');
      expect(committed, `${puzzle.id}.json 이 재생성 결과와 다르다`).toBe(expected);
    }
  });

  it('manifest.json이 재생성 결과와 바이트 단위로 같다', () => {
    const expected = `${JSON.stringify(manifest, null, 2)}\n`;
    const committed = readFileSync(resolve(outDir, 'manifest.json'), 'utf8');
    expect(committed).toBe(expected);
  });

  it('커밋된 퍼즐 JSON 파일 집합이 재생성된 퍼즐 id 집합과 정확히 같다', () => {
    const onDisk = readdirSync(outDir)
      .filter((f) => f.endsWith('.json') && f !== 'manifest.json')
      .map((f) => f.replace(/\.json$/, ''))
      .sort();
    const inMemory = puzzles.map((p) => p.id).sort();
    expect(onDisk).toEqual(inMemory);
  });
});
