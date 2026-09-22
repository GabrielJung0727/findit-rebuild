import type { Puzzle } from './types.js';

export interface ManifestEntry {
  id: string;
  width: number;
  height: number;
}

export interface ClientManifest {
  version: string;
  puzzles: ManifestEntry[];
}

/** 좌표와 rect 개수는 START를 통해서만 전달하고 매니페스트에는 싣지 않는다. */
export function buildManifest(puzzles: readonly Puzzle[], version: string): ClientManifest {
  return {
    version,
    puzzles: puzzles.map((puzzle) => ({
      id: puzzle.id,
      width: puzzle.width,
      height: puzzle.height,
    })),
  };
}
