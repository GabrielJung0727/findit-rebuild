import { describe, expect, it } from 'vitest';
import { generateDart } from '../tools/gen-dart.js';

const dart = generateDart();

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
