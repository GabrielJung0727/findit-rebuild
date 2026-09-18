import { copyFileSync, mkdirSync, readdirSync, writeFileSync } from 'node:fs';
import { resolve } from 'node:path';
import { pathToFileURL } from 'node:url';

import { APP_ASSETS, LEGACY_DRAWABLE, LEGACY_RAW } from '../paths.js';

/**
 * 퍼즐 드로어블 이름 규칙: 'a' + 4자리 숫자, 선택적으로 '_' + 2자리 패치 번호.
 * 'ad_btn' 이나 'attack' 처럼 a 로 시작하는 UI 에셋과 구분해야 한다.
 */
const PUZZLE_NAME = /^a\d{4}(_\d{2})?$/;

export function isPuzzleDrawable(name: string): boolean {
  return PUZZLE_NAME.test(name);
}

/** 확장자를 뗀 드로어블 이름. 9-patch(`foo.9.png`)는 `foo.9` 로 유지한다. */
function drawableName(file: string): string {
  return file.replace(/\.png$/, '');
}

export function collectUiAssets(): string[] {
  return readdirSync(LEGACY_DRAWABLE)
    .filter((f) => f.endsWith('.png'))
    .map(drawableName)
    .filter((name) => !isPuzzleDrawable(name))
    .sort();
}

export function collectAudioAssets(): string[] {
  return readdirSync(LEGACY_RAW)
    .filter((f) => f.endsWith('.ogg'))
    .map((f) => f.replace(/\.ogg$/, ''))
    .sort();
}

function main(): void {
  const uiDir = resolve(APP_ASSETS, 'legacy');
  const audioDir = resolve(APP_ASSETS, 'audio');
  mkdirSync(uiDir, { recursive: true });
  mkdirSync(audioDir, { recursive: true });

  const ui = collectUiAssets();
  for (const name of ui) {
    copyFileSync(resolve(LEGACY_DRAWABLE, `${name}.png`), resolve(uiDir, `${name}.png`));
  }

  const audio = collectAudioAssets();
  for (const name of audio) {
    copyFileSync(resolve(LEGACY_RAW, `${name}.ogg`), resolve(audioDir, `${name}.ogg`));
  }

  // Dart 쪽에서 에셋 상수를 생성할 때 쓴다. 디렉터리를 다시 훑지 않아도 되게.
  writeFileSync(resolve(uiDir, 'index.json'), `${JSON.stringify({ ui, audio }, null, 2)}\n`);

  console.log(`UI ${ui.length}장 → ${uiDir}`);
  console.log(`오디오 ${audio.length}개 → ${audioDir}`);
}

if (process.argv[1] && import.meta.url === pathToFileURL(process.argv[1]).href) {
  main();
}
