import { describe, expect, it } from 'vitest';
import { resolve } from 'node:path';
import { loadConstantTable, parseJavaIntConstants, resolveOperand } from './java-constants.js';

const ROOT = resolve(import.meta.dirname, '../..');
const JAVA = resolve(ROOT, 'legacy/android_project/app/src/main/java');

describe('parseJavaIntConstants', () => {
  it('static final int 선언을 뽑는다', () => {
    const table = parseJavaIntConstants(`
      public static final int DLG_DOTORI_AUTH_DIALOG = 130;
      public static final int INACTIVE_ALPHA = 150;
      public static final String IGNORED = "nope";
    `);
    expect(table.get('DLG_DOTORI_AUTH_DIALOG')).toBe(130);
    expect(table.get('INACTIVE_ALPHA')).toBe(150);
    expect(table.has('IGNORED')).toBe(false);
  });

  it('값이 다른 동명 상수는 충돌로 거부한다', () => {
    expect(() =>
      parseJavaIntConstants(`
        public static final int DUP = 1;
        public static final int DUP = 2;
      `),
    ).toThrow(/DUP/);
  });
});

describe('loadConstantTable', () => {
  it('원작 두 소스에서 필요한 상수를 전부 읽는다', () => {
    const table = loadConstantTable([
      resolve(JAVA, 'com/feelingk/iap/util/Defines.java'),
      resolve(JAVA, 'com/findit/battle/GameView.java'),
    ]);
    expect(table.get('DLG_DOTORI_AUTH_DIALOG')).toBe(130);
    expect(table.get('DLG_AUTO_PURCHASE')).toBe(110);
    expect(table.get('VIBRATOR_TIME_NOTFINDRECT')).toBe(200);
    expect(table.get('INACTIVE_ALPHA')).toBe(150);
  });
});

describe('resolveOperand', () => {
  const table = new Map([['DLG_DOTORI_AUTH_DIALOG', 130]]);

  it('숫자 리터럴은 그대로 통과시킨다', () => {
    expect(resolveOperand('187', table)).toBe(187);
    expect(resolveOperand('  0 ', table)).toBe(0);
  });

  it('정규화된 심볼의 말단 이름으로 조회한다', () => {
    expect(resolveOperand('Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG', table)).toBe(130);
  });

  it('모르는 심볼은 던진다 — 조용히 0 이 되면 좌표가 망가진다', () => {
    expect(() => resolveOperand('Some.Unknown.CONSTANT', table)).toThrow(/Unresolved/);
  });
});
