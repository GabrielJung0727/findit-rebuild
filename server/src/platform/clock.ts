/**
 * 단조 증가하는 밀리초 시계.
 * 배틀 엔진은 이 포트로만 시간을 읽는다 — Date.now() 를 직접 부르는 순간
 * 그 코드는 실시간으로만 테스트할 수 있게 된다.
 */
export interface Clock {
  now(): number;
}

/** 운영용. performance.now() 는 프로세스 시작 기준 단조 증가를 보장한다. */
export class SystemClock implements Clock {
  now(): number {
    return performance.now();
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
