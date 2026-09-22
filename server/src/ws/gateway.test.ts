import { afterEach, beforeEach, describe, expect, it } from 'vitest';
import { createServer, type Server } from 'node:http';
import type { AddressInfo } from 'node:net';
import WebSocket from 'ws';
import { TestClock } from '../platform/clock.js';
import { attachGateway, type Conn, type GameInput, type GatewayDeps } from './gateway.js';

interface Harness {
  url: string;
  inputs: { conn: Conn; input: GameInput }[];
  joins: string[];
  leaves: number;
  closed: number;
  logged: string[];
  stop(): Promise<void>;
}

async function start(overrides: Partial<GatewayDeps> = {}): Promise<Harness> {
  const inputs: { conn: Conn; input: GameInput }[] = [];
  const joins: string[] = [];
  const logged: string[] = [];
  let closed = 0;
  let leaves = 0;
  const server: Server = createServer();
  const deps: GatewayDeps = {
    clock: new TestClock(1_000_000),
    log: { error: (message: string) => { logged.push(message); } },
    verify: async (token: string) =>
      token === 'good' ? { kind: 'account', accountId: 'acc-1' } : null,
    onJoin: async (_conn, mode) => { joins.push(mode); },
    onLeaveQueue: async () => { leaves += 1; },
    onGameInput: (conn, input) => { inputs.push({ conn, input }); },
    onClose: () => { closed += 1; },
    ...overrides,
  };
  const gateway = attachGateway(server, deps);
  await new Promise<void>((resolve) => server.listen(0, resolve));
  const port = (server.address() as AddressInfo).port;

  return {
    url: `ws://127.0.0.1:${port}`,
    inputs,
    joins,
    get leaves() { return leaves; },
    get closed() { return closed; },
    logged,
    async stop() {
      await gateway.close();
      await new Promise<void>((resolve) => server.close(() => resolve()));
    },
  };
}

function open(url: string): Promise<WebSocket> {
  const ws = new WebSocket(url);
  return new Promise((resolve, reject) => {
    ws.once('open', () => resolve(ws));
    ws.once('error', reject);
  });
}

function next(ws: WebSocket): Promise<{ t: string; d: Record<string, unknown>; seq: number }> {
  return new Promise((resolve, reject) => {
    const timer = setTimeout(() => reject(new Error('프레임을 기다리다 시간 초과')), 2_000);
    ws.once('message', (raw) => {
      clearTimeout(timer);
      resolve(JSON.parse(String(raw)) as { t: string; d: Record<string, unknown>; seq: number });
    });
  });
}

function closedWith(ws: WebSocket): Promise<number> {
  return new Promise((resolve) => { ws.once('close', (code) => resolve(code)); });
}

const frame = (type: string, data: Record<string, unknown> = {}): string =>
  JSON.stringify({ t: type, seq: 1, d: data });

let h: Harness;
beforeEach(async () => { h = await start(); });
afterEach(async () => { await h.stop(); });

describe('인증', () => {
  it('좋은 토큰이면 AUTH 가 통과한다', async () => {
    const ws = await open(h.url);
    ws.send(frame('AUTH', { token: 'good' }));
    expect((await next(ws)).t).not.toBe('ERROR');
    ws.close();
  });

  it('나쁜 토큰이면 ERROR 를 주고 연결을 끊는다', async () => {
    const ws = await open(h.url);
    ws.send(frame('AUTH', { token: 'bad' }));
    expect((await next(ws)).t).toBe('ERROR');
    expect(await closedWith(ws)).toBeGreaterThan(0);
  });

  it('AUTH 전에 온 QUEUE_JOIN 은 처리되지 않는다', async () => {
    const ws = await open(h.url);
    ws.send(frame('QUEUE_JOIN', { mode: 'casual' }));
    expect((await next(ws)).t).toBe('ERROR');
    expect(h.joins).toEqual([]);
    ws.close();
  });

  it('AUTH 전에 온 TAP 은 아래로 넘어가지 않는다', async () => {
    const ws = await open(h.url);
    ws.send(frame('TAP', { x: 10, y: 10 }));
    await next(ws);
    expect(h.inputs).toEqual([]);
    ws.close();
  });
});

describe('프레임 검문', () => {
  it('s2c 전용 메시지는 세션 검사에 닿기 전에 잘린다 — 봉투 단계의 방향 검문', async () => {
    const ws = await open(h.url);
    ws.send(JSON.stringify({
      t: 'END', seq: 1,
      d: { result: 'win', myFound: 5, opponentFound: 0, score: 9999, coinDelta: 9999, expDelta: 9999 },
    }));

    const reply = await next(ws);
    expect(reply.t).toBe('ERROR');
    expect(reply.d['code']).toBe('bad_frame');
    expect(String(reply.d['message'])).toContain('방향 불일치');
    expect(await closedWith(ws)).toBeGreaterThan(0);
  });

  it('JSON 이 아니면 끊는다', async () => {
    const ws = await open(h.url);
    ws.send('{{{');
    await next(ws);
    expect(await closedWith(ws)).toBeGreaterThan(0);
  });

  it('t 가 constructor 여도 죽지 않고 ERROR 를 준다 — 프로토타입 우회', async () => {
    const ws = await open(h.url);
    ws.send(JSON.stringify({ t: 'constructor', seq: 1, d: {} }));
    expect((await next(ws)).t).toBe('ERROR');
    const second = await open(h.url);
    second.send(frame('AUTH', { token: 'good' }));
    expect((await next(second)).t).not.toBe('ERROR');
    second.close();
  });

  it('선언되지 않은 필드가 섞이면 끊는다', async () => {
    const ws = await open(h.url);
    ws.send(frame('AUTH', { token: 'good', admin: true }));
    expect((await next(ws)).t).toBe('ERROR');
    expect(await closedWith(ws)).toBeGreaterThan(0);
  });
});

describe('매치 이벤트 전달', () => {
  it('인증된 TAP 이 좌표 그대로 넘어간다', async () => {
    const ws = await open(h.url);
    ws.send(frame('AUTH', { token: 'good' }));
    await next(ws);
    ws.send(frame('TAP', { x: 231, y: 402 }));
    await new Promise((resolve) => setTimeout(resolve, 50));

    expect(h.inputs).toHaveLength(1);
    expect(h.inputs[0]!.input).toEqual({ kind: 'TAP', x: 231, y: 402 });
    expect(h.inputs[0]!.input).not.toHaveProperty('slot');
    ws.close();
  });

  it('QUEUE_JOIN 이 모드와 함께 넘어간다', async () => {
    const ws = await open(h.url);
    ws.send(frame('AUTH', { token: 'good' }));
    await next(ws);
    ws.send(frame('QUEUE_JOIN', { mode: 'casual' }));
    await new Promise((resolve) => setTimeout(resolve, 50));
    expect(h.joins).toEqual(['casual']);
    ws.close();
  });

  it('QUEUE_LEAVE 가 큐 이탈로 넘어간다', async () => {
    const ws = await open(h.url);
    ws.send(frame('AUTH', { token: 'good' }));
    await next(ws);
    ws.send(frame('QUEUE_LEAVE'));
    await new Promise((resolve) => setTimeout(resolve, 50));
    expect(h.leaves).toBe(1);
    ws.close();
  });

  it('READY · SKILL · LEAVE 가 모두 아래로 넘어간다 — switch 에 빠진 갈래가 없다', async () => {
    const ws = await open(h.url);
    ws.send(frame('AUTH', { token: 'good' }));
    await next(ws);
    ws.send(frame('READY'));
    ws.send(frame('SKILL', { skillId: 'hand_01' }));
    ws.send(frame('LEAVE'));
    await new Promise((resolve) => setTimeout(resolve, 80));

    expect(h.inputs.map((item) => item.input)).toEqual([
      { kind: 'READY' },
      { kind: 'SKILL', skillId: 'hand_01' },
      { kind: 'LEAVE' },
    ]);
    expect(ws.readyState).toBe(ws.OPEN);
    ws.close();
  });

  it('연결이 닫히면 onClose 가 불린다 — 매치 이탈 처리의 근거', async () => {
    const ws = await open(h.url);
    ws.send(frame('AUTH', { token: 'good' }));
    await next(ws);
    ws.close();
    await new Promise((resolve) => setTimeout(resolve, 100));
    expect(h.closed).toBe(1);
  });

  it('서버 송신의 seq 는 연결마다 1 부터 증가한다', async () => {
    const ws = await open(h.url);
    ws.send(frame('AUTH', { token: 'good' }));
    expect(await next(ws)).toMatchObject({ seq: 1 });
    ws.close();
  });
});
