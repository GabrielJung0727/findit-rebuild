/** Plan 1 의 tools/src/puzzle-parser.ts 가 만든 JSON 과 같은 모양이다. */
export interface PuzzleRect {
  index: number;
  x: number;
  y: number;
  w: number;
  h: number;
  /** 레거시 드로어블 이름. 서빙 경로가 아니다 — 패치 URL 은 서버가 따로 만든다. */
  sourceDrawable: string;
}

export interface Puzzle {
  id: string;
  width: number;
  height: number;
  rects: readonly PuzzleRect[];
}
