import { readFileSync } from 'node:fs';

const INT_CONST = /public\s+static\s+final\s+int\s+(\w+)\s*=\s*(-?\d+)\s*;/g;

/** Java 소스에서 `public static final int` 선언을 모두 뽑는다. */
export function parseJavaIntConstants(source: string): Map<string, number> {
  const table = new Map<string, number>();
  for (const match of source.matchAll(INT_CONST)) {
    const name = match[1]!;
    const value = Number(match[2]!);
    const existing = table.get(name);
    if (existing !== undefined && existing !== value) {
      throw new Error(`상수 충돌: ${name} 이 ${existing} 과 ${value} 로 중복 선언됨`);
    }
    table.set(name, value);
  }
  return table;
}

/** 여러 Java 파일의 상수를 하나의 표로 합친다. 값이 다른 동명 상수는 거부한다. */
export function loadConstantTable(files: string[]): Map<string, number> {
  const table = new Map<string, number>();
  for (const file of files) {
    for (const [name, value] of parseJavaIntConstants(readFileSync(file, 'utf8'))) {
      const existing = table.get(name);
      if (existing !== undefined && existing !== value) {
        throw new Error(`상수 충돌: ${name} — ${existing} vs ${value} (${file})`);
      }
      table.set(name, value);
    }
  }
  return table;
}

/**
 * 좌표 피연산자를 숫자로 만든다.
 * 숫자 리터럴이면 그대로, 심볼이면 말단 이름으로 상수표를 조회한다.
 * 조회 실패 시 던진다 — 기본값 0 으로 넘어가면 좌표가 조용히 망가진다.
 */
export function resolveOperand(operand: string, table: Map<string, number>): number {
  const text = operand.trim();
  if (/^-?\d+$/.test(text)) return Number(text);

  const leaf = text.split('.').at(-1);
  if (leaf === undefined) throw new Error(`Unresolved constant: ${operand}`);

  const value = table.get(leaf);
  if (value === undefined) throw new Error(`Unresolved constant: ${operand}`);
  return value;
}
