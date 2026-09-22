import { describe, expect, it } from 'vitest';
import { SystemClock, TestClock } from '../platform/clock.js';
import { createContentUrls, parseContentUrl, verifyContentUrl } from './urls.js';

const secret = 's'.repeat(32);
const ttlMs = 300_000;

function make(now = 1_000_000): { clock: TestClock; urls: ReturnType<typeof createContentUrls> } {
  const clock = new TestClock(now);
  return { clock, urls: createContentUrls({ secret, ttlMs, clock }) };
}

describe('서명 URL 발급', () => {
  it('base 와 patch 가 서로 다른 URL 을 낸다', () => {
    const { urls } = make();
    expect(urls.base('m1')).not.toBe(urls.patch('m1', 0));
  });

  it('URL 에 서명과 만료가 실린다', () => {
    const { urls } = make();
    const parsed = parseContentUrl(urls.patch('m1', 3));
    expect(parsed).toMatchObject({ matchId: 'm1', kind: 'patch', index: 3 });
    expect(parsed!.sig).toMatch(/^[0-9a-f]{64}$/);
    expect(parsed!.exp).toBe(1_000_000 + ttlMs);
  });

  it('인덱스가 다르면 서명도 다르다 — 이게 열거를 막는다', () => {
    const { urls } = make();
    expect(parseContentUrl(urls.patch('m1', 0))!.sig)
      .not.toBe(parseContentUrl(urls.patch('m1', 1))!.sig);
  });

  it('매치가 다르면 서명도 다르다', () => {
    const { urls } = make();
    expect(parseContentUrl(urls.patch('m1', 0))!.sig)
      .not.toBe(parseContentUrl(urls.patch('m2', 0))!.sig);
  });
});

describe('서명 검증', () => {
  it('발급한 URL 을 통과시킨다', () => {
    const { clock, urls } = make();
    const params = parseContentUrl(urls.patch('m1', 2))!;
    expect(verifyContentUrl({ secret, clock }, params)).toBe(true);
  });

  it('인덱스를 바꾸면 거부한다 — 다른 패치를 열 수 없다', () => {
    const { clock, urls } = make();
    const params = parseContentUrl(urls.patch('m1', 2))!;
    expect(verifyContentUrl({ secret, clock }, { ...params, index: 3 })).toBe(false);
  });

  it('matchId 를 바꾸면 거부한다 — 다른 매치의 URL 을 재사용할 수 없다', () => {
    const { clock, urls } = make();
    const params = parseContentUrl(urls.patch('m1', 2))!;
    expect(verifyContentUrl({ secret, clock }, { ...params, matchId: 'm2' })).toBe(false);
  });

  it('만료를 미래로 늘리면 거부한다 — exp 도 서명 대상이다', () => {
    const { clock, urls } = make();
    const params = parseContentUrl(urls.patch('m1', 2))!;
    expect(verifyContentUrl({ secret, clock }, { ...params, exp: params.exp + 60_000 })).toBe(false);
  });

  it('TTL 이 지나면 거부한다', () => {
    const { clock, urls } = make();
    const params = parseContentUrl(urls.patch('m1', 2))!;
    clock.advance(ttlMs + 1);
    expect(verifyContentUrl({ secret, clock }, params)).toBe(false);
  });

  it('TTL 경계 직전은 통과한다', () => {
    const { clock, urls } = make();
    const params = parseContentUrl(urls.patch('m1', 2))!;
    clock.advance(ttlMs - 1);
    expect(verifyContentUrl({ secret, clock }, params)).toBe(true);
  });

  it('정확히 exp 인 순간 거부한다 — 반개구간이다', () => {
    const { clock, urls } = make();
    const params = parseContentUrl(urls.patch('m1', 2))!;
    clock.advance(ttlMs);
    expect(clock.now()).toBe(params.exp);
    expect(verifyContentUrl({ secret, clock }, params)).toBe(false);
  });

  it('다른 키로 만든 서명을 거부한다', () => {
    const { clock, urls } = make();
    const params = parseContentUrl(urls.patch('m1', 2))!;
    expect(verifyContentUrl({ secret: 'x'.repeat(32), clock }, params)).toBe(false);
  });

  it('서명 문자열이 길이만 같고 내용이 다르면 거부한다', () => {
    const { clock, urls } = make();
    const params = parseContentUrl(urls.patch('m1', 2))!;
    expect(verifyContentUrl({ secret, clock }, { ...params, sig: 'a'.repeat(64) })).toBe(false);
  });
});

describe('실제 시계에서의 왕복 — 운영 경로', () => {
  it('SystemClock 으로 발급한 URL 이 파싱되고 검증된다', () => {
    const clock = new SystemClock();
    expect(Number.isInteger(clock.now())).toBe(true);

    const urls = createContentUrls({ secret, ttlMs, clock });

    for (let i = 0; i < 50; i += 1) {
      const parsed = parseContentUrl(urls.patch('m1', i));
      expect(parsed).not.toBeNull();
      expect(verifyContentUrl({ secret, clock }, parsed!)).toBe(true);
    }
  });
});

describe('열거 시나리오 — 스펙 §6.3', () => {
  it('rect 0 의 URL 을 가진 클라가 rect 1~9 의 URL 을 만들 수 없다', () => {
    const { clock, urls } = make();
    const known = parseContentUrl(urls.patch('m1', 0))!;
    for (let index = 1; index < 10; index += 1) {
      expect(verifyContentUrl({ secret, clock }, { ...known, index })).toBe(false);
    }
  });
});
