import type { MatchRunner } from './runner.js';

/** P0의 살아 있는 매치는 한 서버 프로세스의 메모리에 둔다. */
export class MatchRegistry {
  private readonly byId = new Map<string, MatchRunner>();

  add(runner: MatchRunner): void {
    this.byId.set(runner.matchId, runner);
  }

  get(matchId: string): MatchRunner | undefined {
    return this.byId.get(matchId);
  }

  remove(matchId: string): void {
    this.byId.delete(matchId);
  }

  get size(): number {
    return this.byId.size;
  }

  findAiMatchWith(slotKey: string): MatchRunner | undefined {
    for (const runner of this.byId.values()) {
      const state = runner.state;
      if (state.phase === 'ENDED') continue;
      if (state.p2.isAi && state.p1.name === slotKey) return runner;
      if (state.p1.isAi && state.p2.name === slotKey) return runner;
    }
    return undefined;
  }
}
