import { describe, expect, it } from 'vitest';
import { loadConfig } from './config.js';

const valid = {
  NODE_ENV: 'test',
  PORT: '8080',
  DATABASE_URL: 'postgres://u:p@localhost:5432/findit',
  REDIS_URL: 'redis://localhost:6379',
  CONTENT_URL_SECRET: 'a'.repeat(32),
  CONTENT_DIR: '/tmp/content',
};

describe('loadConfig', () => {
  it('유효한 환경을 파싱한다', () => {
    const config = loadConfig(valid);
    expect(config).toMatchObject({
      nodeEnv: 'test',
      port: 8080,
      databaseUrl: valid.DATABASE_URL,
      redisUrl: valid.REDIS_URL,
      contentDir: valid.CONTENT_DIR,
    });
  });

  it.each(['DATABASE_URL', 'REDIS_URL', 'CONTENT_URL_SECRET'])(
    '%s 가 없으면 던진다 — 기본값으로 뜨면 운영에서 조용히 틀린 DB 를 본다',
    (key) => {
      const env = { ...valid };
      delete (env as Record<string, string | undefined>)[key];
      expect(() => loadConfig(env)).toThrow(new RegExp(key));
    },
  );

  it('서명 키가 32자 미만이면 던진다', () => {
    expect(() => loadConfig({ ...valid, CONTENT_URL_SECRET: 'short' })).toThrow(/32/);
  });

  it('PORT 가 숫자가 아니면 던진다', () => {
    expect(() => loadConfig({ ...valid, PORT: 'eighty' })).toThrow(/PORT/);
  });

  it('PORT 기본값은 8080 이다', () => {
    const env = { ...valid };
    delete (env as Record<string, string | undefined>)['PORT'];
    expect(loadConfig(env).port).toBe(8080);
  });

  it('알 수 없는 NODE_ENV 를 거부한다', () => {
    expect(() => loadConfig({ ...valid, NODE_ENV: 'staging' })).toThrow(/NODE_ENV/);
  });

  it('서명 URL 기본 TTL 은 5분이다', () => {
    expect(loadConfig(valid).contentUrlTtlMs).toBe(300_000);
  });

  it('반환된 설정에 비밀값이 그대로 실려 있다 — 로그에 찍지 말 것', () => {
    expect(loadConfig(valid).contentUrlSecret).toBe(valid.CONTENT_URL_SECRET);
  });
});
