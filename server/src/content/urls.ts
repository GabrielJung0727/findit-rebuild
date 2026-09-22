import { createHmac, timingSafeEqual } from 'node:crypto';
import type { ContentUrls } from '../battle/reducer.js';
import type { Clock } from '../platform/clock.js';

export type ContentKind = 'base' | 'patch';

export interface SignedParams {
  matchId: string;
  kind: ContentKind;
  index: number;
  exp: number;
  sig: string;
}

function payload(params: Omit<SignedParams, 'sig'>): string {
  return `${params.matchId}|${params.kind}|${params.index}|${params.exp}`;
}

function sign(secret: string, params: Omit<SignedParams, 'sig'>): string {
  return createHmac('sha256', secret).update(payload(params)).digest('hex');
}

export function createContentUrls(deps: {
  secret: string;
  ttlMs: number;
  clock: Clock;
}): ContentUrls {
  const build = (matchId: string, kind: ContentKind, index: number): string => {
    const exp = deps.clock.now() + deps.ttlMs;
    const sig = sign(deps.secret, { matchId, kind, index, exp });
    const query = new URLSearchParams({ exp: String(exp), sig });
    return `/content/${encodeURIComponent(matchId)}/${kind}/${index}?${query.toString()}`;
  };

  return {
    base: (matchId: string): string => build(matchId, 'base', 0),
    patch: (matchId: string, rectIndex: number): string => build(matchId, 'patch', rectIndex),
  };
}

/** 테스트와 HTTP 라우터가 쓰는 파서. 형식이 어긋나면 null을 돌려준다. */
export function parseContentUrl(url: string): SignedParams | null {
  const [path, query] = url.split('?');
  if (!path || !query) return null;

  const match = /^\/content\/([^/]+)\/(base|patch)\/(\d+)$/.exec(path);
  if (!match) return null;

  const params = new URLSearchParams(query);
  const exp = Number(params.get('exp'));
  const sig = params.get('sig');
  if (!Number.isInteger(exp) || !sig) return null;

  return {
    matchId: decodeURIComponent(match[1]!),
    kind: match[2] as ContentKind,
    index: Number(match[3]!),
    exp,
    sig,
  };
}

export function verifyContentUrl(
  deps: { secret: string; clock: Clock },
  params: SignedParams,
): boolean {
  if (deps.clock.now() >= params.exp) return false;

  const expected = sign(deps.secret, params);
  const expectedBuffer = Buffer.from(expected, 'hex');
  const signatureBuffer = Buffer.from(params.sig, 'hex');
  if (expectedBuffer.length !== signatureBuffer.length) return false;
  return timingSafeEqual(expectedBuffer, signatureBuffer);
}
