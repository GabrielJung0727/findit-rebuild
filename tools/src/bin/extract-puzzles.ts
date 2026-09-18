import { createHash } from 'node:crypto';
import { mkdirSync, readFileSync, writeFileSync } from 'node:fs';
import { resolve } from 'node:path';
import { pathToFileURL } from 'node:url';

import { loadConstantTable } from '../java-constants.js';
import { extractMethodBody, parsePuzzles, validatePuzzles, type Puzzle } from '../puzzle-parser.js';
import { CONTENT, LEGACY_JAVA } from '../paths.js';

export interface ManifestEntry {
  id: string;
  width: number;
  height: number;
  rectCount: number;
}

export interface PuzzleManifest {
  version: string;
  generatedAt: string;
  puzzles: ManifestEntry[];
}

const OBJECTS_JAVA = resolve(LEGACY_JAVA, 'com/findit/battle/Objects.java');
const DEFINES_JAVA = resolve(LEGACY_JAVA, 'com/feelingk/iap/util/Defines.java');
const GAMEVIEW_JAVA = resolve(LEGACY_JAVA, 'com/findit/battle/GameView.java');

export function buildPuzzleOutput(): {
  puzzles: Puzzle[];
  manifest: PuzzleManifest;
  warnings: string[];
} {
  const constants = loadConstantTable([DEFINES_JAVA, GAMEVIEW_JAVA]);
  const body = extractMethodBody(readFileSync(OBJECTS_JAVA, 'utf8'), 'private void createBaseFindImages()');
  const puzzles = parsePuzzles(body, constants);
  const warnings = validatePuzzles(puzzles);

  // 버전은 좌표 내용에서 유도한다. 내용이 같으면 재실행해도 같은 버전이 나오므로
  // 클라의 콘텐츠 캐시가 불필요하게 무효화되지 않는다.
  const version = createHash('sha256').update(JSON.stringify(puzzles)).digest('hex').slice(0, 12);

  const manifest: PuzzleManifest = {
    version,
    generatedAt: new Date().toISOString(),
    puzzles: puzzles.map((p) => ({
      id: p.id,
      width: p.width,
      height: p.height,
      rectCount: p.rects.length,
    })),
  };

  return { puzzles, manifest, warnings };
}

function main(): void {
  const { puzzles, manifest, warnings } = buildPuzzleOutput();
  const outDir = resolve(CONTENT, 'puzzles');
  mkdirSync(outDir, { recursive: true });

  for (const puzzle of puzzles) {
    writeFileSync(resolve(outDir, `${puzzle.id}.json`), `${JSON.stringify(puzzle, null, 2)}\n`);
  }
  writeFileSync(resolve(outDir, 'manifest.json'), `${JSON.stringify(manifest, null, 2)}\n`);

  for (const warning of warnings) console.warn(`  경고: ${warning}`);

  const rectTotal = puzzles.reduce((n, p) => n + p.rects.length, 0);
  console.log(`퍼즐 ${puzzles.length}세트 / rect ${rectTotal}개 → ${outDir}`);
  console.log(`콘텐츠 버전 ${manifest.version}`);
}

// 직접 실행일 때만 파일을 쓴다. import 는 부작용이 없어야 테스트가 가능하다.
if (process.argv[1] && import.meta.url === pathToFileURL(process.argv[1]).href) {
  main();
}
