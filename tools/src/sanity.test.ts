import { describe, expect, it } from 'vitest';
import { existsSync } from 'node:fs';
import { resolve } from 'node:path';

const ROOT = resolve(import.meta.dirname, '../..');

describe('legacy 진실 출처', () => {
  it('원작 좌표 소스가 존재한다', () => {
    const p = resolve(ROOT, 'legacy/android_project/app/src/main/java/com/findit/battle/Objects.java');
    expect(existsSync(p)).toBe(true);
  });

  it('원작 에셋 디렉터리가 존재한다', () => {
    expect(existsSync(resolve(ROOT, 'legacy/decoded_apk/res/drawable-hdpi-v4'))).toBe(true);
    expect(existsSync(resolve(ROOT, 'legacy/decoded_apk/res/raw'))).toBe(true);
  });
});
