export type Principal =
  | { kind: 'account'; accountId: string }
  | { kind: 'guest'; guestId: string };

export interface SessionAudit {
  recordIssued(accountId: string, tokenHash: string): Promise<void>;
  recordRevoked(tokenHash: string): Promise<void>;
}

/** 게스트 식별자 발급. 게임 상태가 아니라 광고 노출 카운팅용이다 (스펙 §6.5). */
export interface GuestRegistry {
  register(tokenHash: string): Promise<string>;
}
