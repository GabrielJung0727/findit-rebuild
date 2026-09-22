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

    socket.on('message', (raw: unknown) => {
      void handle(String(raw)).catch((error: unknown) => {
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
