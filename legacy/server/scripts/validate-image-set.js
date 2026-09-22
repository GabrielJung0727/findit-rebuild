#!/usr/bin/env node
/**
 * 틀린그림 이미지 세트 검증기
 *
 * 기획서 findit_틀린그림가이드_20120704.xls 포맷 준수 여부 자동 검사.
 *
 * 사용법:
 *   node scripts/validate-image-set.js <set-dir-or-manifest>
 *   node scripts/validate-image-set.js docs/findit_thebattle_contents_guide_20120704/contents/png
 *
 * 디렉터리 모드: <basename>.png + <basename>_1.png ~ <basename>_7.png 8 PNG 패턴 자동 인식.
 *   manifest.json (선택) 이 있으면 좌표/광고문구/URL 까지 검증.
 *
 * Manifest 모드: --manifest <path/to/manifest.json>
 *   {
 *     "img": "market001.png",
 *     "xSize": 640, "ySize": 720,
 *     "imageCut": [{x,y,w,h}, ...7개],
 *     "adCaption": "...", "urlDetail": "https://..."
 *   }
 *
 * 검사 항목:
 *   - 원본 1 + 패치 7 = 총 8 PNG 존재
 *   - 원본 PNG 의 실제 W×H 가 manifest.xSize/ySize 와 일치
 *   - imageCut 길이가 정확히 7
 *   - 각 cut[i] 의 x,y,w,h 가 비음수 정수
 *   - 각 cut[i] 박스가 원본 경계 안에 들어감 (x+w ≤ xSize, y+h ≤ ySize)
 *   - 패치 PNG <basename>_<n>.png 의 실제 W×H 가 cut[n-1].w×h 와 일치
 *   - (광고 이미지) adCaption 이 있으면 urlDetail 도 있어야 함
 *
 * 종료 코드:
 *   0 = 모두 통과
 *   1 = 검증 실패 (사용자 콘텐츠 수정 필요)
 *   2 = 사용법/IO 에러
 */
'use strict';

const fs = require('fs');
const path = require('path');

function readPngSize(filePath) {
  const buf = Buffer.alloc(24);
  const fd = fs.openSync(filePath, 'r');
  try {
    fs.readSync(fd, buf, 0, 24, 0);
  } finally {
    fs.closeSync(fd);
  }
  // PNG signature 8 bytes + IHDR length 4 bytes + "IHDR" 4 bytes = byte 16 onwards: width(4) height(4) BE
  if (buf.toString('ascii', 1, 4) !== 'PNG') throw new Error(`${filePath} is not a PNG`);
  return { w: buf.readUInt32BE(16), h: buf.readUInt32BE(20) };
}

function parseArgs(argv) {
  const args = { positional: [], manifest: null };
  for (let i = 2; i < argv.length; i++) {
    const a = argv[i];
    if (a === '--manifest') args.manifest = argv[++i];
    else if (a === '-h' || a === '--help') args.help = true;
    else args.positional.push(a);
  }
  return args;
}

function fail(msg) { console.error('FAIL:', msg); }
function ok(msg) { console.log('OK:  ', msg); }

function validateSet({ dir, basename, manifest }) {
  const errors = [];

  const originalPath = path.join(dir, `${basename}.png`);
  if (!fs.existsSync(originalPath)) {
    errors.push(`missing original ${basename}.png in ${dir}`);
    return errors;
  }
  const original = readPngSize(originalPath);
  ok(`${basename}.png present (${original.w}x${original.h})`);

  // patches 1..7
  const patches = [];
  for (let i = 1; i <= 7; i++) {
    const p = path.join(dir, `${basename}_${i}.png`);
    if (!fs.existsSync(p)) {
      errors.push(`missing patch ${basename}_${i}.png`);
      continue;
    }
    const dim = readPngSize(p);
    patches.push({ idx: i, ...dim });
    ok(`${basename}_${i}.png present (${dim.w}x${dim.h})`);
  }
  if (patches.length !== 7) {
    errors.push(`expected 7 patches, found ${patches.length}`);
  }

  if (!manifest) {
    if (errors.length === 0) ok(`${basename} 8-PNG set complete (no manifest — coords not verified)`);
    return errors;
  }

  // manifest.xSize/ySize must match original
  if (manifest.xSize !== original.w || manifest.ySize !== original.h) {
    errors.push(`manifest xSize/ySize=${manifest.xSize}x${manifest.ySize} ≠ actual ${original.w}x${original.h}`);
  } else {
    ok(`manifest dims match original`);
  }

  if (!Array.isArray(manifest.imageCut) || manifest.imageCut.length !== 7) {
    errors.push(`manifest.imageCut must be array of length 7 (got ${manifest.imageCut?.length})`);
    return errors;
  }

  for (let i = 0; i < 7; i++) {
    const c = manifest.imageCut[i];
    if (!c) { errors.push(`imageCut[${i}] missing`); continue; }
    const { x, y, w, h } = c;
    if (![x, y, w, h].every((v) => Number.isInteger(v) && v >= 0)) {
      errors.push(`imageCut[${i}] x/y/w/h must be non-negative integers (got ${JSON.stringify(c)})`);
      continue;
    }
    if (w === 0 || h === 0) { errors.push(`imageCut[${i}] w/h must be positive`); continue; }
    if (x + w > original.w || y + h > original.h) {
      errors.push(`imageCut[${i}] (x=${x},y=${y},w=${w},h=${h}) exceeds image ${original.w}x${original.h}`);
      continue;
    }
    // patch dim match
    const patch = patches.find((p) => p.idx === i + 1);
    if (patch && (patch.w !== w || patch.h !== h)) {
      errors.push(`imageCut[${i}] declares ${w}x${h} but ${basename}_${i + 1}.png is ${patch.w}x${patch.h}`);
    } else if (patch) {
      ok(`imageCut[${i}] ↔ ${basename}_${i + 1}.png dims match (${w}x${h}) and within bounds`);
    }
  }

  if (manifest.adCaption && !manifest.urlDetail) {
    errors.push(`adCaption present but urlDetail missing — ad clicks have nowhere to go`);
  } else if (manifest.adCaption) {
    ok(`adCaption + urlDetail both present`);
  }

  return errors;
}

function main() {
  const args = parseArgs(process.argv);
  if (args.help || (args.positional.length === 0 && !args.manifest)) {
    console.log('usage: node scripts/validate-image-set.js <dir> [--manifest <file>]');
    console.log('       node scripts/validate-image-set.js --manifest <file>');
    console.log('');
    console.log('manifest schema: { img, xSize, ySize, imageCut[7], adCaption?, urlDetail? }');
    process.exit(2);
  }

  let manifest = null;
  let dir = args.positional[0];
  let basename = null;

  if (args.manifest) {
    const mp = path.resolve(args.manifest);
    manifest = JSON.parse(fs.readFileSync(mp, 'utf8'));
    if (!manifest.img) { fail('manifest missing "img"'); process.exit(2); }
    basename = path.basename(manifest.img, '.png');
    dir = dir || path.dirname(mp);
  } else {
    // dir-only mode: find all *.png that are not _N.png patches
    const all = fs.readdirSync(dir).filter((f) => f.endsWith('.png'));
    const originals = all.filter((f) => !/_\d+\.png$/i.test(f));
    if (originals.length === 0) { fail(`no original PNGs (pattern <name>.png) found in ${dir}`); process.exit(2); }
    let allErrors = [];
    for (const o of originals) {
      const bn = path.basename(o, '.png');
      console.log(`\n--- set: ${bn} ---`);
      allErrors = allErrors.concat(validateSet({ dir, basename: bn, manifest: null }));
    }
    if (allErrors.length) {
      console.error(`\n${allErrors.length} error(s):`);
      allErrors.forEach((e) => fail(e));
      process.exit(1);
    }
    console.log('\nAll sets passed.');
    return;
  }

  console.log(`\n--- set: ${basename} ---`);
  const errors = validateSet({ dir, basename, manifest });
  if (errors.length) {
    console.error(`\n${errors.length} error(s):`);
    errors.forEach((e) => fail(e));
    process.exit(1);
  }
  console.log('\nAll checks passed.');
}

main();
