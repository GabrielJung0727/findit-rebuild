import { describe, expect, it } from 'vitest';
import { MESSAGES } from './schema.js';
import { decodeEnvelope, encodeEnvelope, ProtocolError } from './validate.js';

describe('MESSAGES 선언', () => {
  it('스펙 §8 의 C→S 7종을 모두 선언한다', () => {
    for (const t of ['AUTH', 'QUEUE_JOIN', 'QUEUE_LEAVE', 'READY', 'TAP', 'SKILL', 'LEAVE']) {
      expect(MESSAGES[t as keyof typeof MESSAGES]?.dir).toBe('c2s');
    }
  });

  it('스펙 §8 의 S→C 10종을 모두 선언한다', () => {
    for (const t of [
      'QUEUED', 'MATCH_FOUND', 'COUNTDOWN', 'START', 'REVEAL',
      'LOCK', 'BLIND', 'OPPONENT_PROGRESS', 'END', 'ERROR',
    ]) {
      expect(MESSAGES[t as keyof typeof MESSAGES]?.dir).toBe('s2c');
    }
  });
});

describe('decodeEnvelope', () => {
  it('유효한 TAP 을 파싱한다', () => {
    const env = decodeEnvelope('{"t":"TAP","seq":17,"d":{"x":231,"y":402}}');
    expect(env).toEqual({ t: 'TAP', seq: 17, d: { x: 231, y: 402 } });
  });

  it('모르는 메시지 타입을 거부한다', () => {
    expect(() => decodeEnvelope('{"t":"NOPE","seq":1,"d":{}}')).toThrow(ProtocolError);
  });

  it('필드가 빠지면 거부한다', () => {
    expect(() => decodeEnvelope('{"t":"TAP","seq":1,"d":{"x":1}}')).toThrow(/y/);
  });

  it('타입이 틀리면 거부한다 — 문자열 좌표는 int 가 아니다', () => {
    expect(() => decodeEnvelope('{"t":"TAP","seq":1,"d":{"x":"1","y":2}}')).toThrow(/x/);
  });

  it('int 자리에 소수를 거부한다', () => {
    expect(() => decodeEnvelope('{"t":"TAP","seq":1,"d":{"x":1.5,"y":2}}')).toThrow(/x/);
  });

  it('seq 가 없으면 거부한다 — 리플레이 방어의 근거다', () => {
    expect(() => decodeEnvelope('{"t":"TAP","d":{"x":1,"y":2}}')).toThrow(/seq/);
  });

  it('JSON 이 아니면 거부한다', () => {
    expect(() => decodeEnvelope('not json')).toThrow(ProtocolError);
  });

  it('선언되지 않은 여분 필드를 거부한다 — 오타를 조용히 넘기지 않는다', () => {
    expect(() => decodeEnvelope('{"t":"TAP","seq":1,"d":{"x":1,"y":2,"z":3}}')).toThrow(/z/);
  });

  it.each(['constructor', '__proto__', 'toString', 'valueOf'])(
    '프로토타입 속성명 %s 을 메시지 타입으로 위장해도 ProtocolError 로 거부한다',
    (name) => {
      // `in` 을 쓰면 여기서 TypeError 가 나서 게이트웨이가 죽는다.
      expect(() => decodeEnvelope(`{"t":"${name}","seq":1,"d":{}}`)).toThrow(ProtocolError);
    },
  );

  it.each(['constructor', 'toString', 'valueOf'])(
    '프로토타입 속성명 %s 을 여분 필드로 넣어도 거부한다',
    (name) => {
      expect(() =>
        decodeEnvelope(`{"t":"TAP","seq":1,"d":{"x":1,"y":2,"${name}":1}}`),
      ).toThrow(ProtocolError);
    },
  );
});

describe('encodeEnvelope', () => {
  it('왕복한다', () => {
    const raw = encodeEnvelope('REVEAL', 3, {
      by: 'p1', index: 0, x: 10, y: 20, w: 130, h: 130, patchUrl: '/c/a0001/patch_01.webp',
    });
    expect(decodeEnvelope(raw).d).toMatchObject({ index: 0, patchUrl: '/c/a0001/patch_01.webp' });
  });

  it('선언에 없는 필드를 넣으면 인코딩 단계에서 던진다', () => {
    expect(() => encodeEnvelope('LOCK', 1, { durationMs: 2000, bogus: 1 })).toThrow(/bogus/);
  });
});
