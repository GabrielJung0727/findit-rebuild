import { describe, expect, it } from 'vitest';
import { existsSync } from 'node:fs';
import { planConversions, checkPatchDimensions } from './extract-images.js';
import { buildPuzzleOutput } from './extract-puzzles.js';

const { puzzles } = buildPuzzleOutput();

describe('planConversions', () => {
  const plan = planConversions(puzzles);

  it('베이스 30장 + 패치 262장 = 292 건을 계획한다', () => {
    expect(plan).toHaveLength(292);
  });

  it('원본 PNG 가 전부 실재한다', () => {
    const missing = plan.filter((c) => !existsSync(c.from));
    expect(missing).toEqual([]);
  });

  it('출력 경로가 퍼즐별 디렉터리로 갈린다', () => {
    const base = plan.find((c) => c.to.endsWith('a0001/base.webp'));
    expect(base).toBeDefined();
    const patch = plan.find((c) => c.to.endsWith('a0001/patch_01.webp'));
    expect(patch).toBeDefined();
  });
});

describe('checkPatchDimensions', () => {
  it('선언 크기와 PNG 실제 크기가 다른 4건을 경고로 보고한다', async () => {
    const warnings = await checkPatchDimensions(puzzles);
    const ids = warnings.map((w) => w.patch).sort();
    expect(ids).toEqual(['a0056_07', 'a0058_07', 'a0063_04', 'a0063_05']);
  });
});
