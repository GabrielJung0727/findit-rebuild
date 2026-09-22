/**
 * 단조 증가하는 밀리초 시계.
 * 배틀 엔진은 이 포트로만 시간을 읽는다 — Date.now() 를 직접 부르는 순간
 * 그 코드는 실시간으로만 테스트할 수 있게 된다.
 */
export interface Clock {
  now(): number;
}

/**
 * 운영용. performance.now() 는 프로세스 시작 기준 단조 증가를 보장한다.
 *
 * 정수로 내린다. performance.now() 는 소수(354.624333)를 주는데, 포트의
 * 계약은 "밀리초 시계" 이고 TestClock 도 정수다. 소수가 새어 나가면 그 값을
 * 문자열로 싣는 곳에서 터진다 — 서명 콘텐츠 URL 의 exp 가 소수가 되어
 * parseContentUrl 의 Number.isInteger 검사에 걸리고, base·patch 이미지가
 * 전부 403 이 된다. Math.floor 는 단조성을 깨지 않는다.
 */
export class SystemClock implements Clock {
  now(): number {
    return Math.floor(performance.now());
  }
}

/** 테스트용. 시간이 오직 advance/set 으로만 흐른다. */
export class TestClock implements Clock {
  #ms: number;

  constructor(start = 0) {
    this.#ms = start;
  }

  now(): number {
    return this.#ms;
  }

  advance(ms: number): void {
    if (ms < 0) throw new Error('TestClock: monotonic 계약 위반 — 음수 advance');
    this.#ms += ms;
  }

  set(ms: number): void {
    if (ms < this.#ms) throw new Error('TestClock: monotonic 계약 위반 — 과거로 set');
    this.#ms = ms;
  }
}
