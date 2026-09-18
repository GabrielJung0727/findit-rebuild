import { describe, expect, it } from 'vitest';
import { readFileSync } from 'node:fs';
import { resolve } from 'node:path';
import { loadConstantTable } from './java-constants.js';
import { extractMethodBody, parsePuzzles, validatePuzzles } from './puzzle-parser.js';

const ROOT = resolve(import.meta.dirname, '../..');
const JAVA = resolve(ROOT, 'legacy/android_project/app/src/main/java');

const constants = loadConstantTable([
  resolve(JAVA, 'com/feelingk/iap/util/Defines.java'),
  resolve(JAVA, 'com/findit/battle/GameView.java'),
]);

const puzzles = parsePuzzles(
  extractMethodBody(
    readFileSync(resolve(JAVA, 'com/findit/battle/Objects.java'), 'utf8'),
    'private void createBaseFindImages()',
  ),
  constants,
);

describe('parsePuzzles', () => {
  it('퍼즐 30세트를 뽑는다', () => {
    expect(puzzles).toHaveLength(30);
  });

  it('rect 총계가 262 개다', () => {
    expect(puzzles.reduce((n, p) => n + p.rects.length, 0)).toBe(262);
  });

  it('베이스 이미지는 전부 640x720 이다', () => {
    for (const p of puzzles) {
      expect([p.width, p.height]).toEqual([640, 720]);
    }
  });

  it('a0001 의 첫 rect 를 상수 역치환까지 포함해 복원한다', () => {
    const first = puzzles[0]!;
    expect(first.id).toBe('a0001');
    // 소스 원문: new FindRect(187, 340, DLG_DOTORI_AUTH_DIALOG, DLG_DOTORI_AUTH_DIALOG, a0001_01)
    expect(first.rects[0]).toEqual({
      index: 0, x: 187, y: 340, w: 130, h: 130, patch: 'a0001_01',
    });
  });

  it('rect 수가 이미지마다 다르다 — 7 로 하드코딩하면 안 된다', () => {
    const counts = new Set(puzzles.map((p) => p.rects.length));
    expect([...counts].sort((a, b) => a - b)).toEqual([7, 8, 9, 10]);
  });

  it('10 개짜리 퍼즐도 끝까지 읽는다', () => {
    const a0002 = puzzles.find((p) => p.id === 'a0002')!;
    expect(a0002.rects).toHaveLength(10);
    expect(a0002.rects.at(-1)!.patch).toBe('a0002_10');
  });
});

describe('validatePuzzles', () => {
  it('원작 데이터는 치명 오류 없이 통과한다', () => {
    expect(() => validatePuzzles(puzzles)).not.toThrow();
  });

  it('경계를 벗어난 rect 는 던진다', () => {
    expect(() =>
      validatePuzzles([
        { id: 'bad', width: 640, height: 720, rects: [
          { index: 0, x: 600, y: 0, w: 130, h: 130, patch: 'bad_01' },
        ] },
      ]),
    ).toThrow(/out of bounds/);
  });

  it('패치 접미사 순번이 어긋나면 던진다', () => {
    expect(() =>
      validatePuzzles([
        { id: 'bad', width: 640, height: 720, rects: [
          { index: 0, x: 0, y: 0, w: 10, h: 10, patch: 'bad_03' },
        ] },
      ]),
    ).toThrow(/suffix/);
  });

  it('rect 가 5 개 미만이면 던진다 — 5-of-N 이 성립하지 않는다', () => {
    expect(() =>
      validatePuzzles([
        { id: 'bad', width: 640, height: 720, rects: [
          { index: 0, x: 0, y: 0, w: 10, h: 10, patch: 'bad_01' },
        ] },
      ]),
    ).toThrow(/at least 5/);
  });
});
