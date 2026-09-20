import { describe, expect, it } from 'vitest';
import { SKILLS, blindDurationMs, skillById } from './skills.js';

describe('SKILLS 표 — 스펙 §3.4', () => {
  it('총 29 개다 (손도장 9 + 발도장 5 + 그림자 5 + 분신 5 + 유령 5)', () => {
    expect(SKILLS).toHaveLength(29);
  });

  it('계열별 개수가 맞는다', () => {
    const count = (f: string) => SKILLS.filter((s) => s.family === f).length;
    expect(count('handprint')).toBe(9);
    expect(count('footprint')).toBe(5);
    expect(count('shadow')).toBe(5);
    expect(count('clone')).toBe(5);
    expect(count('ghost')).toBe(5);
  });

  it('id 가 중복되지 않는다', () => {
    expect(new Set(SKILLS.map((s) => s.id)).size).toBe(SKILLS.length);
  });

  it.each([
    ['handprint_1', 1000, 1, 1],
    ['handprint_9', 1800, 17, 1],
    ['footprint_1', 1900, 10, 2],
    ['footprint_5', 2300, 18, 2],
    ['shadow_1', 2000, 20, 3],
    ['shadow_5', 2400, 28, 3],
    ['clone_1', 2500, 30, 4],
    ['clone_5', 2900, 42, 4],
    ['ghost_1', 3000, 45, 5],
    ['ghost_5', 4000, 57, 5],
  ])('%s → %ims, Lv%i, %ipt', (id, durationMs, unlockLevel, pointCost) => {
    expect(skillById(id)).toMatchObject({ durationMs, unlockLevel, pointCost });
  });

  it('손도장 언락 레벨은 홀수만 쓴다', () => {
    for (const s of SKILLS.filter((x) => x.family === 'handprint')) {
      expect(s.unlockLevel % 2).toBe(1);
    }
  });

  it('유령 지속시간은 3.0 → 4.0 을 균등 +0.25 로 채운다', () => {
    const ghosts = SKILLS.filter((s) => s.family === 'ghost').map((s) => s.durationMs);
    expect(ghosts).toEqual([3000, 3250, 3500, 3750, 4000]);
  });

  it('계열별 모든 수치를 스펙 표와 일치시킨다', () => {
    const values = (family: string) => SKILLS
      .filter((skill) => skill.family === family)
      .map(({ durationMs, unlockLevel, pointCost }) => [durationMs, unlockLevel, pointCost]);
    expect(values('handprint')).toEqual([
      [1000, 1, 1], [1100, 3, 1], [1200, 5, 1], [1300, 7, 1], [1400, 9, 1],
      [1500, 11, 1], [1600, 13, 1], [1700, 15, 1], [1800, 17, 1],
    ]);
    expect(values('footprint')).toEqual([
      [1900, 10, 2], [2000, 12, 2], [2100, 14, 2], [2200, 16, 2], [2300, 18, 2],
    ]);
    expect(values('shadow')).toEqual([
      [2000, 20, 3], [2100, 22, 3], [2200, 24, 3], [2300, 26, 3], [2400, 28, 3],
    ]);
    expect(values('clone')).toEqual([
      [2500, 30, 4], [2600, 33, 4], [2700, 36, 4], [2800, 39, 4], [2900, 42, 4],
    ]);
  });

  it('모든 선행 요건이 실재하는 스킬을 가리킨다 — 오타면 영구히 못 배운다', () => {
    const ids = new Set(SKILLS.map((s) => s.id));
    for (const s of SKILLS) {
      for (const req of s.requires) expect(ids.has(req)).toBe(true);
    }
  });

  it('선행 요건에 순환이 없다 — 위상 정렬이 성립한다', () => {
    const byId = new Map(SKILLS.map((s) => [s.id, s]));
    const state = new Map<string, 'visiting' | 'done'>();
    const visit = (id: string): void => {
      if (state.get(id) === 'done') return;
      if (state.get(id) === 'visiting') throw new Error(`cycle at ${id}`);
      state.set(id, 'visiting');
      for (const r of byId.get(id)!.requires) visit(r);
      state.set(id, 'done');
    };
    expect(() => SKILLS.forEach((s) => visit(s.id))).not.toThrow();
  });

  it('선행 스킬의 언락 레벨이 항상 더 낮거나 같다 — 배울 수 없는 스킬을 막는다', () => {
    const byId = new Map(SKILLS.map((s) => [s.id, s]));
    for (const s of SKILLS) {
      for (const r of s.requires) {
        expect(byId.get(r)!.unlockLevel).toBeLessThanOrEqual(s.unlockLevel);
      }
    }
  });

  it('유령은 손도장 9 를 요구한다 — 스펙이 "손도장 10" 을 9 로 해석하라고 정했다', () => {
    expect(skillById('ghost_1')!.requires).toContain('handprint_9');
  });

  it('각 계열의 1단계 교차 선행 요건이 스펙 표와 같다', () => {
    expect(skillById('handprint_1')!.requires).toEqual([]);
    expect(skillById('footprint_1')!.requires).toEqual(['handprint_5']);
    expect(skillById('shadow_1')!.requires).toEqual(['handprint_8', 'footprint_5']);
    expect(skillById('clone_1')!.requires).toEqual(['shadow_5']);
    expect(skillById('ghost_1')!.requires).toEqual(['clone_5', 'footprint_5', 'handprint_9']);
  });

  it('계열별 이펙트 에셋이 스펙 §3.5 매핑과 같다', () => {
    const asset = (f: string) => SKILLS.find((s) => s.family === f)!.effectAsset;
    expect(asset('handprint')).toBe('efct_skill_01');
    expect(asset('footprint')).toBe('efct_skill_02');
    expect(asset('shadow')).toBe('efct_skill_101');
    expect(asset('clone')).toBe('efct_skill_102');
    expect(asset('ghost')).toBe('efct_skill_103');
  });
});

describe('blindDurationMs — 스펙 §3.3 공식', () => {
  const base = {
    skillDurationMs: 2000,
    attackerAttack: 0,
    attackerItemBonusMs: 0,
    defenderDefense: 0,
    defenderItemReductionMs: 0,
  };

  it('수식어가 없으면 스킬 기본시간 그대로다', () => {
    expect(blindDurationMs(base)).toBe(2000);
  });

  it('공격력은 초 단위로 더해진다', () => {
    expect(blindDurationMs({ ...base, attackerAttack: 0.5 })).toBe(2500);
  });

  it('방어력은 초 단위로 빠진다', () => {
    expect(blindDurationMs({ ...base, defenderDefense: 0.5 })).toBe(1500);
  });

  it('아이템 보정이 양쪽 다 적용된다', () => {
    expect(
      blindDurationMs({ ...base, attackerItemBonusMs: 800, defenderItemReductionMs: 600 }),
    ).toBe(2200);
  });

  it('스펙 예시 전체 조합', () => {
    expect(
      blindDurationMs({
        skillDurationMs: 2000,
        attackerAttack: 0.85,
        attackerItemBonusMs: 800,
        defenderDefense: 0.85,
        defenderItemReductionMs: 900,
      }),
    ).toBe(1900);
  });

  it('0 으로 clamp 한다 — 음수 가림 시간은 정의되지 않는다', () => {
    expect(blindDurationMs({ ...base, defenderDefense: 99 })).toBe(0);
  });

  it('정수 밀리초를 낸다 — 부동소수 잔차가 새어나가면 안 된다', () => {
    const ms = blindDurationMs({ ...base, attackerAttack: 0.57, defenderDefense: 0.13 });
    expect(Number.isInteger(ms)).toBe(true);
    expect(ms).toBe(2440);
  });
});
