import { resolveOperand } from './java-constants.js';

export interface PuzzleRect {
  index: number;
  x: number;
  y: number;
  w: number;
  h: number;
  /**
   * 레거시 소스 드로어블 이름, 확장자 없음. 예: 'a0001_01'.
   * 생성된 트리의 실제 패치 파일명(`patch_01.webp`)과 다르다 — 이 필드를 URL
   * 조립에 쓰면 404 난다. patchUrl 은 index 로부터 만든다.
   */
  sourceDrawable: string;
}

export interface Puzzle {
  id: string;
  width: number;
  height: number;
  rects: PuzzleRect[];
}

const FIND_IMAGE = /new FindImage\((\d+),\s*(\d+),\s*R\.drawable\.(\w+)\)/;
const FIND_RECT = /new FindRect\(([^,]+),\s*([^,]+),\s*([^,]+),\s*([^,]+),\s*R\.drawable\.(\w+)\)/;

/** 5-of-N 노출이 성립하려면 퍼즐당 최소 이만큼의 rect 가 필요하다. */
const MIN_RECTS = 5;

/**
 * Java 소스에서 메서드 본문을 잘라낸다.
 * jadx 출력은 들여쓰기가 일정하므로 클래스 레벨 메서드의 닫는 중괄호는 항상 `\n    }\n` 이다.
 */
export function extractMethodBody(source: string, signature: string): string {
  const start = source.indexOf(signature);
  if (start < 0) throw new Error(`메서드를 찾지 못함: ${signature}`);

  const rest = source.slice(start);
  const end = rest.indexOf('\n    }\n');
  if (end < 0) throw new Error(`메서드 끝을 찾지 못함: ${signature}`);

  return rest.slice(0, end);
}

/**
 * `createBaseFindImages()` 본문에서 퍼즐 정의를 복원한다.
 *
 * 소스의 인덱스 변수(num, rectnum7 …)는 jadx 가 만든 별칭이라 추적하지 않는다.
 * 대입이 엄격히 순차적이므로 "직전 FindImage 이후의 FindRect 를 순서대로 append"
 * 하면 정확히 복원된다.
 */
export function parsePuzzles(segment: string, constants: Map<string, number>): Puzzle[] {
  const puzzles: Puzzle[] = [];
  let current: Puzzle | undefined;

  for (const line of segment.split('\n')) {
    const image = FIND_IMAGE.exec(line);
    if (image) {
      current = {
        id: image[3]!,
        width: Number(image[1]!),
        height: Number(image[2]!),
        rects: [],
      };
      puzzles.push(current);
      continue;
    }

    const rect = FIND_RECT.exec(line);
    if (rect && current) {
      current.rects.push({
        index: current.rects.length,
        x: resolveOperand(rect[1]!, constants),
        y: resolveOperand(rect[2]!, constants),
        w: resolveOperand(rect[3]!, constants),
        h: resolveOperand(rect[4]!, constants),
        sourceDrawable: rect[5]!,
      });
    }
  }

  return puzzles;
}

/**
 * 치명 오류는 던진다. 치명적이지 않은 이상(치수 불일치 등)은 extract-images 의
 * checkPatchDimensions 가 별도로 표면화하므로 여기서는 다루지 않는다.
 */
export function validatePuzzles(puzzles: Puzzle[]): void {
  const errors: string[] = [];

  if (puzzles.length === 0) errors.push('퍼즐이 하나도 파싱되지 않음');

  for (const puzzle of puzzles) {
    if (puzzle.rects.length < MIN_RECTS) {
      errors.push(`${puzzle.id}: rect ${puzzle.rects.length} 개 — at least ${MIN_RECTS} required`);
    }

    puzzle.rects.forEach((rect, i) => {
      const suffix = Number(rect.sourceDrawable.split('_').at(-1));
      if (suffix !== i + 1) {
        errors.push(`${puzzle.id}: rect ${i} patch '${rect.sourceDrawable}' — expected suffix ${i + 1}`);
      }

      if (
        rect.x < 0 || rect.y < 0 ||
        rect.x + rect.w > puzzle.width ||
        rect.y + rect.h > puzzle.height
      ) {
        errors.push(
          `${puzzle.id}: rect ${i} out of bounds ` +
            `(${rect.x},${rect.y},${rect.w},${rect.h}) vs ${puzzle.width}x${puzzle.height}`,
        );
      }

      if (rect.w <= 0 || rect.h <= 0) {
        errors.push(`${puzzle.id}: rect ${i} 크기가 0 이하 (${rect.w}x${rect.h})`);
      }
    });
  }

  if (errors.length > 0) {
    throw new Error(`퍼즐 검증 실패 (${errors.length}건):\n  ${errors.join('\n  ')}`);
  }
}
