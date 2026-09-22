import type { PlayerSlot } from '../battle/state.js';
import type { Principal } from '../identity/types.js';

export interface ConnSession {
  readonly id: string;
  principal: Principal | null;
  matchId: string | null;
  slot: PlayerSlot | null;
  seq: number;
}

let counter = 0;

export function createConnSession(): ConnSession {
  counter += 1;
  return { id: `c${counter}`, principal: null, matchId: null, slot: null, seq: 0 };
}

export function principalKey(principal: Principal): string {
  return principal.kind === 'account' ? principal.accountId : principal.guestId;
}
