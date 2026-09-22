/**
 * 시드 기반 난수. 매치 전체가 시드 하나로 재현 가능해야 버그를 재현할 수 있다.
 * Math.random() 은 이 프로젝트 어디에서도 쓰지 않는다.
 */
export interface Rng {
  /** [0, 1) */
  float(): number;
  /** [0, maxExclusive) 정수 */
  int(maxExclusive: number): number;
  /** 배열에서 하나 */
  pick<T>(items: readonly T[]): T;
}

/**
 * mulberry32 — 32비트 상태, 통계 품질이 게임 용도에 충분하고 구현이 짧아
 * 다른 언어로 이식해 동일 수열을 재현하기 쉽다.
 */
export function createRng(seed: number): Rng {
  let state = seed >>> 0;

  const float = (): number => {
    state = (state + 0x6d2b79f5) >>> 0;
    let t = state;
    t = Math.imul(t ^ (t >>> 15), t | 1);
    t ^= t + Math.imul(t ^ (t >>> 7), t | 61);
    return ((t ^ (t >>> 14)) >>> 0) / 4294967296;
  };

  return {
    float,
    int(maxExclusive: number): number {
      if (!Number.isInteger(maxExclusive) || maxExclusive < 1) {
        throw new Error(`Rng.int: maxExclusive 는 1 이상 정수여야 함 (${maxExclusive})`);
      }
      return Math.floor(float() * maxExclusive);
    },
    pick<T>(items: readonly T[]): T {
      if (items.length === 0) throw new Error('Rng.pick: empty array');
      return items[Math.floor(float() * items.length)]!;
    },
  };
}
