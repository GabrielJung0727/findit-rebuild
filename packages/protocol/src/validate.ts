import { MESSAGES, type FieldType, type MessageType } from './schema.js';

export class ProtocolError extends Error {
  override readonly name = 'ProtocolError';
}

export interface Envelope {
  t: MessageType;
  seq: number;
  d: Record<string, unknown>;
}

function matchesType(value: unknown, type: FieldType): boolean {
  switch (type) {
    case 'int':
      return typeof value === 'number' && Number.isInteger(value);
    case 'double':
      return typeof value === 'number' && Number.isFinite(value);
    case 'string':
      return typeof value === 'string';
    case 'bool':
      return typeof value === 'boolean';
  }
}

function checkPayload(type: MessageType, payload: Record<string, unknown>): void {
  const { fields } = MESSAGES[type];

  for (const [name, def] of Object.entries(fields)) {
    if (!Object.hasOwn(payload, name)) {
      throw new ProtocolError(`${type}: 필드 '${name}' 누락`);
    }
    if (!matchesType(payload[name], def.type)) {
      throw new ProtocolError(
        `${type}: 필드 '${name}' 타입 불일치 — ${def.type} 기대, ${typeof payload[name]} 수신`,
      );
    }
  }

  // 여분 필드를 거부한다. 필드명 오타가 조용히 넘어가면 원인을 찾기 어렵다.
  // Object.hasOwn 을 쓴다. `in` 은 프로토타입 체인을 타서 'constructor',
  // 'toString' 같은 이름의 여분 필드를 선언된 것으로 착각한다.
  for (const name of Object.keys(payload)) {
    if (!Object.hasOwn(fields, name)) {
      throw new ProtocolError(`${type}: 선언되지 않은 필드 '${name}'`);
    }
  }
}

export function decodeEnvelope(raw: string): Envelope {
  let parsed: unknown;
  try {
    parsed = JSON.parse(raw);
  } catch {
    throw new ProtocolError('JSON 파싱 실패');
  }

  if (typeof parsed !== 'object' || parsed === null) {
    throw new ProtocolError('봉투가 객체가 아님');
  }

  const env = parsed as Record<string, unknown>;

  // `in` 이 아니라 Object.hasOwn. `in` 은 't'가 'constructor' 나 '__proto__' 일 때
  // 참이 되고, 이어지는 MESSAGES[type] 접근이 ProtocolError 가 아닌 TypeError 로
  // 터진다 — 조작된 메시지 한 통으로 게이트웨이를 죽일 수 있다.
  if (typeof env['t'] !== 'string' || !Object.hasOwn(MESSAGES, env['t'])) {
    throw new ProtocolError(`알 수 없는 메시지 타입: ${String(env['t'])}`);
  }
  if (typeof env['seq'] !== 'number' || !Number.isInteger(env['seq'])) {
    throw new ProtocolError('seq 가 없거나 정수가 아님');
  }
  if (typeof env['d'] !== 'object' || env['d'] === null) {
    throw new ProtocolError('페이로드 d 가 객체가 아님');
  }

  const type = env['t'] as MessageType;
  const payload = env['d'] as Record<string, unknown>;
  checkPayload(type, payload);

  return { t: type, seq: env['seq'], d: payload };
}

export function encodeEnvelope(
  type: MessageType,
  seq: number,
  payload: Record<string, unknown>,
): string {
  checkPayload(type, payload);
  return JSON.stringify({ t: type, seq, d: payload });
}
