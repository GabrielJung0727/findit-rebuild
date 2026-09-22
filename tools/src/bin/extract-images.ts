import { mkdirSync } from 'node:fs';
import { dirname, resolve } from 'node:path';
import { pathToFileURL } from 'node:url';
import sharp from 'sharp';

import type { Puzzle } from '../puzzle-parser.js';
import { CONTENT, LEGACY_DRAWABLE } from '../paths.js';
import { buildPuzzleOutput } from './extract-puzzles.js';

/** WebP 품질. 퍼즐은 '다른 곳 찾기'가 목적이라 압축 아티팩트에 민감하다. */
const WEBP_QUALITY = 92;

export interface Conversion {
  from: string;
  to: string;
}

export interface DimensionWarning {
  patch: string;
  declared: [number, number];
  actual: [number, number];
}

export function planConversions(puzzles: Puzzle[]): Conversion[] {
  const plan: Conversion[] = [];

  for (const puzzle of puzzles) {
    plan.push({
      from: resolve(LEGACY_DRAWABLE, `${puzzle.id}.png`),
      to: resolve(CONTENT, 'images', puzzle.id, 'base.webp'),
    });

    for (const rect of puzzle.rects) {
      const n = String(rect.index + 1).padStart(2, '0');
      plan.push({
        from: resolve(LEGACY_DRAWABLE, `${rect.sourceDrawable}.png`),
        to: resolve(CONTENT, 'images', puzzle.id, `patch_${n}.webp`),
      });
    }
  }

  return plan;
}

/**
 * 패치 PNG 의 실제 픽셀 크기가 선언된 rect 크기와 다른 경우를 모은다.
 * 원작이 그릴 때 rect 크기로 스케일하므로 (Objects.java:2192) 오류가 아니라 경고다.
 */
export async function checkPatchDimensions(puzzles: Puzzle[]): Promise<DimensionWarning[]> {
  const warnings: DimensionWarning[] = [];

  for (const puzzle of puzzles) {
    for (const rect of puzzle.rects) {
      const meta = await sharp(resolve(LEGACY_DRAWABLE, `${rect.sourceDrawable}.png`)).metadata();
      if (meta.width !== rect.w || meta.height !== rect.h) {
        warnings.push({
          patch: rect.sourceDrawable,
          declared: [rect.w, rect.h],
          actual: [meta.width ?? 0, meta.height ?? 0],
        });
      }
    }
  }

  return warnings;
}

async function main(): Promise<void> {
  const { puzzles } = buildPuzzleOutput();
  const plan = planConversions(puzzles);

  for (const { from, to } of plan) {
    mkdirSync(dirname(to), { recursive: true });
    await sharp(from).webp({ quality: WEBP_QUALITY }).toFile(to);
  }

  for (const w of await checkPatchDimensions(puzzles)) {
    console.warn(
      `  경고: ${w.patch} 선언 ${w.declared.join('x')} vs 실제 ${w.actual.join('x')} ` +
        `— 원작이 rect 크기로 스케일하므로 rect 가 권위`,
    );
  }

  console.log(`이미지 ${plan.length}장 변환 → ${resolve(CONTENT, 'images')}`);
}

if (process.argv[1] && import.meta.url === pathToFileURL(process.argv[1]).href) {
  await main();
}
