import { describe, expect, it } from 'vitest';
import request from 'supertest';
import { existsSync, mkdtempSync, rmSync, writeFileSync } from 'node:fs';
import { tmpdir } from 'node:os';
import { relative, resolve } from 'node:path';
import { TestClock } from '../platform/clock.js';
import { createApp } from './app.js';
import { createContentUrls, parseContentUrl } from '../content/urls.js';
import { loadPuzzles } from '../content/loader.js';
import type { Principal } from '../identity/types.js';

const secret = 's'.repeat(32);
const clock = new TestClock(1_000_000);
const contentDir = resolve(import.meta.dirname, '../../../content');
const puzzles = loadPuzzles(resolve(contentDir, 'puzzles'));

function stubDeps() {
  const sessions = new Map<string, Principal>();
  const logged: string[] = [];
  const registered: string[] = [];
  const revoked: string[] = [];
  const resolved: string[] = [];
  return {
    clock,
    log: { error: (message: string) => { logged.push(message); } },
    logged,
    registered,
    revoked,
    resolved,
    config: { contentUrlSecret: secret, contentUrlTtlMs: 300_000, contentDir },
    puzzles,
    contentVersion: 'v-test',
    resolvePuzzleId: async (matchId: string) => {
      resolved.push(matchId);
      return matchId;
    },
    identity: {
      register: async (email: string) => {
        if (email === 'taken@b.c') throw new Error('duplicate');
        registered.push(email);
        return { accountId: `acc-${email}` };
      },
      login: async (email: string, password: string) => {
        if (password !== 'good') return null;
        const token = `t-${email}`;
        sessions.set(token, { kind: 'account', accountId: `acc-${email}` });
        return { token };
      },
      guest: async () => {
        const token = `g-${sessions.size}`;
        sessions.set(token, { kind: 'guest', guestId: token });
        return { token };
      },
      logout: async (token: string) => {
        revoked.push(token);
        sessions.delete(token);
      },
      verify: async (token: string) => sessions.get(token) ?? null,
    },
  };
}

describe('GET /health', () => {
  it('200 과 ok 를 준다', async () => {
    const response = await request(createApp(stubDeps())).get('/health');
    expect(response.status).toBe(200);
    expect(response.body).toMatchObject({ status: 'ok' });
  });
});

describe('인증', () => {
  it('로그인이 토큰을 준다', async () => {
    const response = await request(createApp(stubDeps()))
      .post('/auth/login').send({ email: 'a@b.c', password: 'good' });
    expect(response.status).toBe(200);
    expect(typeof response.body.token).toBe('string');
  });

  it('틀린 비밀번호는 401 이다', async () => {
    const response = await request(createApp(stubDeps()))
      .post('/auth/login').send({ email: 'a@b.c', password: 'bad' });
    expect(response.status).toBe(401);
  });

  it('401 응답이 계정 존재 여부를 흘리지 않는다', async () => {
    const app = createApp(stubDeps());
    const exists = await request(app).post('/auth/login').send({ email: 'exists@b.c', password: 'bad' });
    const missing = await request(app).post('/auth/login').send({ email: 'nope@b.c', password: 'bad' });
    expect(exists.body).toEqual(missing.body);
  });

  it('필드가 빠지면 400 이다', async () => {
    const response = await request(createApp(stubDeps())).post('/auth/login').send({ email: 'a@b.c' });
    expect(response.status).toBe(400);
  });

  it('게스트 세션을 발급한다', async () => {
    const response = await request(createApp(stubDeps())).post('/auth/guest').send({});
    expect(response.status).toBe(200);
    expect(typeof response.body.token).toBe('string');
  });

  it('응답 어디에도 비밀번호 해시가 없다', async () => {
    const response = await request(createApp(stubDeps()))
      .post('/auth/login').send({ email: 'a@b.c', password: 'good' });
    expect(JSON.stringify(response.body)).not.toMatch(/hash|\$2[aby]\$/);
  });
});

describe('비동기 핸들러 예외', () => {
  it('의존성이 throw 해도 500 으로 응답이 끝난다 — 매달리면 안 된다', async () => {
    const deps = stubDeps();
    deps.identity.guest = async () => { throw new Error('redis down'); };
    const response = await request(createApp(deps)).post('/auth/guest').send({});
    expect(response.status).toBe(500);
    expect(response.body).toEqual({ error: 'internal_error' });
  });

  it('예외를 로그에 남긴다', async () => {
    const deps = stubDeps();
    deps.identity.guest = async () => { throw new Error('redis down'); };
    await request(createApp(deps)).post('/auth/guest').send({});
    expect(deps.logged).toHaveLength(1);
  });
});

describe('POST /auth/register', () => {
  it('가입이 201 과 accountId 를 준다', async () => {
    const response = await request(createApp(stubDeps())).post('/auth/register')
      .send({ email: 'a@b.c', password: 'good1234', nickname: '테스터', characterId: 3 });
    expect(response.status).toBe(201);
    expect(response.body.accountId).toBe('acc-a@b.c');
  });

  it('nickname 이 빠지면 400 이고 저장소를 때리지 않는다', async () => {
    const deps = stubDeps();
    const response = await request(createApp(deps)).post('/auth/register')
      .send({ email: 'a@b.c', password: 'good1234' });
    expect(response.status).toBe(400);
    expect(deps.registered).toEqual([]);
  });

  it('중복은 409 이고 이유를 구분해 주지 않는다 — 사용자 열거', async () => {
    const response = await request(createApp(stubDeps())).post('/auth/register')
      .send({ email: 'taken@b.c', password: 'good1234', nickname: 'n' });
    expect(response.status).toBe(409);
    expect(JSON.stringify(response.body)).not.toMatch(/email|duplicate|password|exists/i);
  });

  it('응답에 비밀번호가 되돌아오지 않는다', async () => {
    const response = await request(createApp(stubDeps())).post('/auth/register')
      .send({ email: 'a@b.c', password: 'secret12', nickname: 'n' });
    expect(JSON.stringify(response.body)).not.toContain('secret12');
  });
});

describe('POST /auth/logout', () => {
  it('204 를 주고 그 세션이 실제로 폐기된다', async () => {
    const deps = stubDeps();
    const app = createApp(deps);
    const { body } = await request(app).post('/auth/login')
      .send({ email: 'a@b.c', password: 'good' });

    const response = await request(app).post('/auth/logout')
      .set('authorization', `Bearer ${body.token}`);
    expect(response.status).toBe(204);
    expect(deps.revoked).toEqual([body.token]);
    expect(await deps.identity.verify(body.token)).toBeNull();
  });

  it('헤더가 없어도 204 다 — 로그아웃은 멱등이다', async () => {
    const deps = stubDeps();
    expect((await request(createApp(deps)).post('/auth/logout')).status).toBe(204);
    expect(deps.revoked).toEqual(['']);
  });
});

describe('GET /content/manifest', () => {
  it('버전과 퍼즐 목록을 준다', async () => {
    const response = await request(createApp(stubDeps())).get('/content/manifest');
    expect(response.status).toBe(200);
    expect(response.body.version).toBe('v-test');
    expect(response.body.puzzles).toHaveLength(30);
  });

  it('좌표도 rect 개수도 싣지 않는다 — 스펙 §6.4', async () => {
    const response = await request(createApp(stubDeps())).get('/content/manifest');
    for (const entry of response.body.puzzles as Array<Record<string, unknown>>) {
      expect(Object.keys(entry).sort()).toEqual(['height', 'id', 'width']);
    }
  });
});

describe('GET /content/:matchId/:kind/:index', () => {
  const urls = createContentUrls({ secret, ttlMs: 300_000, clock });

  it('유효한 서명이면 이미지를 준다', async () => {
    const response = await request(createApp(stubDeps())).get(urls.base('a0001'));
    expect(response.status).toBe(200);
    expect(response.headers['content-type']).toMatch(/image\/webp/);
  });

  it('서명이 없으면 403 이다', async () => {
    const response = await request(createApp(stubDeps())).get('/content/a0001/base/0');
    expect(response.status).toBe(403);
  });

  it('인덱스를 바꾸면 403 이다 — 열거 차단', async () => {
    const signed = urls.patch('a0001', 0);
    const tampered = signed.replace('/patch/0?', '/patch/1?');
    expect((await request(createApp(stubDeps())).get(tampered)).status).toBe(403);
  });

  it('만료된 URL 은 403 이다', async () => {
    const late = new TestClock(1_000_000);
    const url = createContentUrls({ secret, ttlMs: 1, clock: late }).base('a0001');
    late.advance(10);
    const deps = stubDeps();
    deps.clock = late;
    expect((await request(createApp(deps)).get(url)).status).toBe(403);
  });

  it('없는 퍼즐은 404 다 — 서명이 유효해도', async () => {
    expect((await request(createApp(stubDeps())).get(urls.base('nope'))).status).toBe(404);
  });

  it('서명이 틀리면 없는 퍼즐이어도 403 이다 — 404 로 존재 여부가 새면 안 된다', async () => {
    const good = parseContentUrl(urls.base('nope'))!;
    const forged = `/content/nope/base/0?exp=${good.exp}&sig=${'a'.repeat(64)}`;
    expect((await request(createApp(stubDeps())).get(forged)).status).toBe(403);
  });

  it('서명이 틀리면 퍼즐 조회를 아예 하지 않는다', async () => {
    const deps = stubDeps();
    const tampered = urls.base('a0001').replace('/base/0', '/base/1');
    expect((await request(createApp(deps)).get(tampered)).status).toBe(403);
    expect(deps.resolved).toEqual([]);
  });

  it('유효하게 서명된 경로 탈출도 파일에 닿지 못한다', async () => {
    const probeRoot = mkdtempSync(resolve(tmpdir(), 'findit-traversal-'));
    try {
      writeFileSync(resolve(probeRoot, 'base.webp'), Buffer.from([0x52, 0x49, 0x46, 0x46]));
      const escape = relative(resolve(contentDir, 'images'), probeRoot);
      expect(existsSync(resolve(contentDir, 'images', escape, 'base.webp'))).toBe(true);

      const response = await request(createApp(stubDeps())).get(urls.base(escape));
      expect(response.status).not.toBe(200);
      expect([403, 404]).toContain(response.status);
    } finally {
      rmSync(probeRoot, { recursive: true, force: true });
    }
  });
});
