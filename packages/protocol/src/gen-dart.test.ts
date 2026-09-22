import { describe, expect, it } from 'vitest';
import { readFileSync } from 'node:fs';
import { resolve } from 'node:path';
import { generateDart } from '../tools/gen-dart.js';

const dart = generateDart();

const COMMITTED_DART = resolve(import.meta.dirname, '../../../app/lib/domain/protocol.g.dart');

describe('generateDart', () => {
  it('생성 파일임을 첫 줄에 밝힌다', () => {
    expect(dart.split('\n')[0]).toContain('GENERATED');
  });

  it('메시지 타입 enum 을 낸다', () => {
    expect(dart).toContain('enum MessageType {');
    expect(dart).toContain('tap,');
    expect(dart).toContain('reveal,');
  });

  it('TAP 클래스를 int 필드로 낸다', () => {
    expect(dart).toContain('class TapMessage {');
    expect(dart).toContain('final int x;');
    expect(dart).toContain('final int y;');
  });

  it('REVEAL 의 문자열 필드를 String 으로 낸다', () => {
    expect(dart).toContain('final String patchUrl;');
  });

  it('bool 필드를 낸다', () => {
    expect(dart).toContain('final bool isAi;');
  });

  it('fromJson 팩토리를 낸다', () => {
    expect(dart).toContain('factory TapMessage.fromJson(Map<String, dynamic> json)');
  });
});

describe('커밋된 protocol.g.dart 드리프트 가드', () => {
  it('app/lib/domain/protocol.g.dart 가 generateDart() 출력과 바이트 단위로 같다', () => {
    // schema.ts 를 고치고 `npm run protocol:dart` 를 잊으면 Dart 클라이언트가
    // 조용히 필드를 놓친다 — 이 테스트가 그 드리프트를 커밋 시점에 잡는다.
    const committed = readFileSync(COMMITTED_DART, 'utf8');
    expect(committed).toBe(dart);
  });
});
