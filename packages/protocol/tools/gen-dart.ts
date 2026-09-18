import { mkdirSync, writeFileSync } from 'node:fs';
import { dirname, resolve } from 'node:path';
import { pathToFileURL } from 'node:url';

import { MESSAGES, type FieldType } from '../src/schema.js';

const OUT = resolve(import.meta.dirname, '../../../app/lib/domain/protocol.g.dart');

const DART_TYPE: Record<FieldType, string> = {
  int: 'int',
  double: 'double',
  string: 'String',
  bool: 'bool',
};

/** SCREAMING_SNAKE → lowerCamel */
function toLowerCamel(name: string): string {
  const [head = '', ...tail] = name.toLowerCase().split('_');
  return head + tail.map((p) => p.charAt(0).toUpperCase() + p.slice(1)).join('');
}

/** SCREAMING_SNAKE → UpperCamel */
function toUpperCamel(name: string): string {
  const camel = toLowerCamel(name);
  return camel.charAt(0).toUpperCase() + camel.slice(1);
}

export function generateDart(): string {
  const lines: string[] = [
    '// GENERATED — 직접 수정하지 말 것.',
    '// 출처: packages/protocol/src/schema.ts',
    '// 재생성: npm run protocol:dart',
    '',
    '// ignore_for_file: type=lint',
    '',
    'enum MessageType {',
  ];

  for (const type of Object.keys(MESSAGES)) {
    lines.push(`  ${toLowerCamel(type)},`);
  }
  lines.push('}', '');

  lines.push('const Map<MessageType, String> messageTypeWire = {');
  for (const type of Object.keys(MESSAGES)) {
    lines.push(`  MessageType.${toLowerCamel(type)}: '${type}',`);
  }
  lines.push('};', '');

  for (const [type, def] of Object.entries(MESSAGES)) {
    const className = `${toUpperCamel(type)}Message`;
    const entries = Object.entries(def.fields);

    lines.push(`/// ${def.dir === 'c2s' ? '클라 → 서버' : '서버 → 클라'}`);
    lines.push(`class ${className} {`);

    for (const [name, field] of entries) {
      lines.push(`  final ${DART_TYPE[field.type]} ${name};`);
    }
    lines.push('');

    if (entries.length === 0) {
      lines.push(`  const ${className}();`);
    } else {
      lines.push(`  const ${className}({`);
      for (const [name] of entries) lines.push(`    required this.${name},`);
      lines.push('  });');
    }
    lines.push('');

    lines.push(`  factory ${className}.fromJson(Map<String, dynamic> json) => ${className}(`);
    for (const [name, field] of entries) {
      lines.push(`    ${name}: json['${name}'] as ${DART_TYPE[field.type]},`);
    }
    lines.push('  );', '');

    lines.push('  Map<String, dynamic> toJson() => {');
    for (const [name] of entries) lines.push(`    '${name}': ${name},`);
    lines.push('  };');
    lines.push('}', '');
  }

  return lines.join('\n');
}

function main(): void {
  const dart = generateDart();
  mkdirSync(dirname(OUT), { recursive: true });
  writeFileSync(OUT, dart);
  console.log(`Dart ${Object.keys(MESSAGES).length}개 메시지 → ${OUT}`);
}

if (process.argv[1] && import.meta.url === pathToFileURL(process.argv[1]).href) {
  main();
}
