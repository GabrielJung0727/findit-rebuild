import type { Server } from 'node:http';
import { WebSocketServer, type WebSocket } from 'ws';
import {
  decodeEnvelope, encodeEnvelope, ProtocolError, type Envelope, type MessageType,
} from '@findit/protocol';
import type { Clock } from '../platform/clock.js';
import type { Principal } from '../identity/types.js';
import { createConnSession, type ConnSession } from './session.js';

const CLOSE_PROTOCOL = 4400;
const CLOSE_UNAUTHORIZED = 4401;

export type GameInput =
  | { kind: 'READY' }
  | { kind: 'TAP'; x: number; y: number }
  | { kind: 'SKILL'; skillId: string }
  | { kind: 'LEAVE' };

export interface Conn {
  readonly session: ConnSession;
  send(type: MessageType, payload: Record<string, unknown>): void;
  close(code: string, message: string): void;
}

export interface GatewayDeps {
  clock: Clock;
  log: { error(message: string, fields?: Record<string, unknown>): void };
  verify(token: string): Promise<Principal | null>;
  onJoin(conn: Conn, mode: string): Promise<void>;
  onLeaveQueue(conn: Conn): Promise<void>;
  onGameInput(conn: Conn, input: GameInput): void;
  onClose(conn: Conn): void;
}

export function attachGateway(
  server: Server,
  deps: GatewayDeps,
): { close(): Promise<void>; readonly connections: number } {
  const wss = new WebSocketServer({ server });
  const conns = new Set<Conn>();

  wss.on('connection', (socket: WebSocket) => {
    const session = createConnSession();
    const conn: Conn = {
      session,
      send(type, payload) {
        if (socket.readyState !== socket.OPEN) return;
        session.seq += 1;
        socket.send(encodeEnvelope(type, session.seq, payload));
      },
      close(code, message) {
        conn.send('ERROR', { code, message });
        socket.close(code === 'unauthorized' ? CLOSE_UNAUTHORIZED : CLOSE_PROTOCOL, code);
      },
    };
    conns.add(conn);

    // 연결마다 프레임을 한 줄로 세운다.
    //
    // handle 은 비동기이고 AUTH 분기는 verify 에서 Redis 를 때린다. 그대로
    // 두면 AUTH 가 끝나기 전에 다음 프레임이 처리되어, 인증된 클라이언트가
    // unauthorized 로 끊긴다. WebSocket 프레임은 순서가 보장되므로 처리도
    // 그 순서를 지켜야 한다 — AUTH 만의 문제가 아니라 await 를 가진 어떤
    // 분기든 같은 창을 연다.
    let inOrder: Promise<void> = Promise.resolve();

    socket.on('message', (raw: unknown) => {
      const text = String(raw);
      inOrder = inOrder
        .then(() => handle(text))
        .catch((error: unknown) => {
          deps.log.error('게이트웨이 처리 실패', {
            conn: session.id,
            error: error instanceof Error ? error.message : String(error),
          });
          conn.close('internal', '처리 중 오류');
        });
    });

    socket.on('close', () => {
      conns.delete(conn);
      deps.onClose(conn);
    });

    socket.on('error', (error: Error) => {
      deps.log.error('소켓 오류', { conn: session.id, error: error.message });
    });

    async function handle(raw: string): Promise<void> {
      let envelope: Envelope;
      try {
        envelope = decodeEnvelope(raw, 'c2s');
      } catch (error) {
        if (error instanceof ProtocolError) {
          conn.close('bad_frame', error.message);
          return;
        }
        throw error;
      }

      const { t, d } = envelope;
      if (t === 'AUTH') {
        const principal = await deps.verify(String(d['token'] ?? ''));
        if (principal === null) {
          conn.close('unauthorized', '인증 실패');
          return;
        }
        session.principal = principal;
        conn.send('QUEUED', { position: 0 });
        return;
      }

      if (session.principal === null) {
        conn.close('unauthorized', 'AUTH 가 먼저다');
        return;
      }

      switch (t) {
        case 'QUEUE_JOIN':
          await deps.onJoin(conn, String(d['mode'] ?? 'casual'));
          return;
        case 'QUEUE_LEAVE':
          await deps.onLeaveQueue(conn);
          return;
        case 'READY':
          deps.onGameInput(conn, { kind: 'READY' });
          return;
        case 'TAP':
          deps.onGameInput(conn, { kind: 'TAP', x: d['x'] as number, y: d['y'] as number });
          return;
        case 'SKILL':
          deps.onGameInput(conn, { kind: 'SKILL', skillId: d['skillId'] as string });
          return;
        case 'LEAVE':
          deps.onGameInput(conn, { kind: 'LEAVE' });
          return;
        default:
          conn.close('bad_frame', `처리할 수 없는 메시지: ${t}`);
      }
    }
  });

  return {
    get connections() { return conns.size; },
    async close(): Promise<void> {
      for (const conn of conns) conn.close('shutdown', '서버 종료');
      await new Promise<void>((resolve) => wss.close(() => resolve()));
    },
  };
}
