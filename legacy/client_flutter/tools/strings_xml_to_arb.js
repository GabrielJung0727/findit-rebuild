#!/usr/bin/env node
/**
 * Android `strings.xml` → Flutter ARB 변환기 (idempotent).
 *
 * 04-26.md §3 — 기존 안드 i18n (145 키) 를 Flutter 측 ARB 로 옮긴다.
 *
 * 사용법:
 *   node client_flutter/tools/strings_xml_to_arb.js
 *
 * 입력:
 *   android_project/app/src/main/res/values/strings.xml      → app_en.arb
 *   android_project/app/src/main/res/values-ko/strings.xml   → app_ko.arb
 *
 * 출력:
 *   client_flutter/lib/l10n/app_en.arb
 *   client_flutter/lib/l10n/app_ko.arb
 *
 * 변환 규칙:
 *   - <string name="x">val</string>  → "x": "val"
 *   - 안드로이드 escape 처리:
 *       \n → \n (literal newline in JSON), \t → \t, \\ → \, \' → ', \" → "
 *   - 둘러싼 큰따옴표("...") 가 양 끝에만 있고 내부에 escape 가 없으면 제거
 *     (안드 strings.xml 관례: 공백 보존용)
 *   - 줄바꿈 포함 multi-line 문자열은 한 줄 \n 로 합침
 *   - dart 식별자로 부적합한 키(예: snake_case) → camelCase 자동 변환
 *
 * 멱등성: 동일 입력에 동일 출력. ARB 의 metadata(`@key`) 는 키 정렬 후 보존.
 */
'use strict';

const fs = require('fs');
const path = require('path');

const ROOT = path.resolve(__dirname, '..', '..');
const SRC_EN = path.join(ROOT, 'android_project/app/src/main/res/values/strings.xml');
const SRC_KO = path.join(ROOT, 'android_project/app/src/main/res/values-ko/strings.xml');
const DST_EN = path.join(__dirname, '..', 'lib/l10n/app_en.arb');
const DST_KO = path.join(__dirname, '..', 'lib/l10n/app_ko.arb');

// snake_case → camelCase. 숫자 포함 식별자도 처리 (item_pen01 → itemPen01)
function toCamel(snake) {
  return snake.replace(/_([a-zA-Z0-9])/g, (_, c) => c.toUpperCase());
}

// 안드 strings.xml escape → JS 문자열 (그대로 ARB JSON 에 들어가는 raw value)
function unescapeAndroidValue(raw) {
  let s = raw;
  // CRLF → LF 정규화 (Windows 에서 편집된 파일 호환)
  s = s.replace(/\r\n/g, '\n').replace(/\r/g, '\n');
  // 양 끝 큰따옴표 제거 — strings.xml 의 공백 보존 표기 (예: "  더 보기")
  if (s.length >= 2 && s.startsWith('"') && s.endsWith('"')) {
    const inside = s.slice(1, -1);
    if (!inside.includes('"')) s = inside;
  }
  // Android escape sequences (안드 빌드 시 처리되는 것들)
  s = s.replace(/\\n/g, '\n');
  s = s.replace(/\\t/g, '\t');
  s = s.replace(/\\'/g, "'");
  s = s.replace(/\\"/g, '"');
  s = s.replace(/\\\\/g, '\\');
  return s;
}

// XML decode — entity 5종만 (strings.xml 에 등장하는 것만)
function xmlDecode(s) {
  return s
    .replace(/&lt;/g, '<')
    .replace(/&gt;/g, '>')
    .replace(/&quot;/g, '"')
    .replace(/&apos;/g, "'")
    .replace(/&amp;/g, '&');
}

function parseStringsXml(filePath) {
  const xml = fs.readFileSync(filePath, 'utf8');
  // <string name="key">value</string>  — value 는 줄바꿈 포함 가능
  const re = /<string\s+name="([^"]+)"\s*>([\s\S]*?)<\/string>/g;
  const result = {};
  let m;
  while ((m = re.exec(xml)) !== null) {
    const key = m[1];
    const value = unescapeAndroidValue(xmlDecode(m[2]));
    result[key] = value;
  }
  return result;
}

function buildArb(map, locale) {
  const out = { '@@locale': locale };
  const keys = Object.keys(map).sort();
  for (const k of keys) {
    const camel = toCamel(k);
    out[camel] = map[k];
  }
  return out;
}

function writeArb(arb, dest) {
  // 사람이 읽기 좋게 2-space indent + trailing newline
  fs.writeFileSync(dest, JSON.stringify(arb, null, 2) + '\n', 'utf8');
}

function main() {
  if (!fs.existsSync(SRC_EN)) {
    console.error('missing en source:', SRC_EN);
    process.exit(2);
  }
  if (!fs.existsSync(SRC_KO)) {
    console.error('missing ko source:', SRC_KO);
    process.exit(2);
  }

  const en = parseStringsXml(SRC_EN);
  const ko = parseStringsXml(SRC_KO);

  const enKeys = Object.keys(en);
  const koKeys = Object.keys(ko);

  console.log(`en keys: ${enKeys.length}`);
  console.log(`ko keys: ${koKeys.length}`);

  // 키 셋 비교 — 04-24.md §4 와 동일 검증
  const enSet = new Set(enKeys);
  const koSet = new Set(koKeys);
  const onlyEn = [...enSet].filter((k) => !koSet.has(k));
  const onlyKo = [...koSet].filter((k) => !enSet.has(k));
  if (onlyEn.length || onlyKo.length) {
    console.error('KEY MISMATCH (en/ko parity required):');
    if (onlyEn.length) console.error('  only-en:', onlyEn);
    if (onlyKo.length) console.error('  only-ko:', onlyKo);
    process.exit(1);
  }
  console.log(`parity OK — ${enKeys.length} keys both sides`);

  const arbEn = buildArb(en, 'en');
  const arbKo = buildArb(ko, 'ko');

  writeArb(arbEn, DST_EN);
  writeArb(arbKo, DST_KO);

  console.log(`wrote ${path.relative(ROOT, DST_EN)}`);
  console.log(`wrote ${path.relative(ROOT, DST_KO)}`);

  // 추가 보고: dart 식별자로 변환되며 충돌 발생하는지
  const camelMap = new Map();
  let collision = false;
  for (const k of enKeys) {
    const camel = toCamel(k);
    if (camelMap.has(camel)) {
      console.error(`  COLLISION: ${k} and ${camelMap.get(camel)} both map to ${camel}`);
      collision = true;
    }
    camelMap.set(camel, k);
  }
  if (collision) process.exit(1);

  console.log('done.');
}

main();
