// 스킬 트리 — 스펙 §3.4 표, 비주얼 매핑은 §3.5, 가림시간 공식은 §3.3.

export type SkillFamily = 'handprint' | 'footprint' | 'shadow' | 'clone' | 'ghost';

export interface SkillDef {
  id: string;
  family: SkillFamily;
  tier: number;
  durationMs: number;
  unlockLevel: number;
  pointCost: number;
  requires: readonly string[];
  effectAsset: string;
}

interface FamilySpec {
  family: SkillFamily;
  /** 단계별 지속시간(ms). 길이가 곧 계열의 단계 수다. */
  durationsMs: readonly number[];
  /** 단계별 언락 레벨. durationsMs 와 길이가 같아야 한다. */
  unlockLevels: readonly number[];
  pointCost: number;
  /** 1 단계의 선행 요건. 2 단계 이상은 직전 단계가 자동으로 붙는다. */
  entryRequires: readonly string[];
  effectAsset: string;
}

/**
 * 유령 계열 지속시간: 스펙은 끝점 3.0·4.0 초와 "단계당 +0.2s~0.5s" 만 준다.
 * 균등 +0.25 초로 정한다 — 두 끝점을 정확히 맞추고 명시된 범위 안에 든다.
 */
const FAMILIES: readonly FamilySpec[] = [
  {
    family: 'handprint',
    durationsMs: [1000, 1100, 1200, 1300, 1400, 1500, 1600, 1700, 1800],
    unlockLevels: [1, 3, 5, 7, 9, 11, 13, 15, 17],
    pointCost: 1,
    entryRequires: [],
    effectAsset: 'efct_skill_01',
  },
  {
    family: 'footprint',
    durationsMs: [1900, 2000, 2100, 2200, 2300],
    unlockLevels: [10, 12, 14, 16, 18],
    pointCost: 2,
    entryRequires: ['handprint_5'],
    effectAsset: 'efct_skill_02',
  },
  {
    family: 'shadow',
    durationsMs: [2000, 2100, 2200, 2300, 2400],
    unlockLevels: [20, 22, 24, 26, 28],
    pointCost: 3,
    entryRequires: ['handprint_8', 'footprint_5'],
    effectAsset: 'efct_skill_101',
  },
  {
    family: 'clone',
    durationsMs: [2500, 2600, 2700, 2800, 2900],
    unlockLevels: [30, 33, 36, 39, 42],
    pointCost: 4,
    entryRequires: ['shadow_5'],
    effectAsset: 'efct_skill_102',
  },
  {
    family: 'ghost',
    durationsMs: [3000, 3250, 3500, 3750, 4000],
    unlockLevels: [45, 48, 51, 54, 57],
    pointCost: 5,
    // 스펙 §3.4: "손도장 10" 요구는 손도장이 9 단계까지뿐이므로 9 로 해석한다.
    entryRequires: ['clone_5', 'footprint_5', 'handprint_9'],
    effectAsset: 'efct_skill_103',
  },
];

function buildSkills(): SkillDef[] {
  const skills: SkillDef[] = [];
  for (const spec of FAMILIES) {
    if (spec.durationsMs.length !== spec.unlockLevels.length) {
      throw new Error(`${spec.family}: durationsMs 와 unlockLevels 길이 불일치`);
    }
    spec.durationsMs.forEach((durationMs, i) => {
      const tier = i + 1;
      const previous = i === 0 ? [] : [`${spec.family}_${tier - 1}`];
      skills.push({
        id: `${spec.family}_${tier}`,
        family: spec.family,
        tier,
        durationMs,
        unlockLevel: spec.unlockLevels[i]!,
        pointCost: spec.pointCost,
        requires: [...(i === 0 ? spec.entryRequires : []), ...previous],
        effectAsset: spec.effectAsset,
      });
    });
  }
  return skills;
}

export const SKILLS: readonly SkillDef[] = buildSkills();

const BY_ID = new Map(SKILLS.map((s) => [s.id, s]));

export function skillById(id: string): SkillDef | undefined {
  return BY_ID.get(id);
}

export interface BlindParams {
  skillDurationMs: number;
  /** 레벨 기반 공격력. 초 단위 계수다. */
  attackerAttack: number;
  attackerItemBonusMs: number;
  /** 레벨 기반 방어력. 초 단위 계수다. */
  defenderDefense: number;
  defenderItemReductionMs: number;
}

/**
 * 스펙 §3.3:
 *   최종 = 기본시간 + 공격력 + 공격아이템 − 방어력 − 방어아이템
 * 하한 0 으로 clamp 한다 — 음수 가림 시간은 정의되지 않는다.
 */
export function blindDurationMs({
  skillDurationMs,
  attackerAttack,
  attackerItemBonusMs,
  defenderDefense,
  defenderItemReductionMs,
}: BlindParams): number {
  const raw =
    skillDurationMs +
    attackerAttack * 1000 +
    attackerItemBonusMs -
    defenderDefense * 1000 -
    defenderItemReductionMs;
  // 능력치가 소수라 부동소수 잔차가 남는다. 반올림해 정수 ms 로 고정한다.
  return Math.max(0, Math.round(raw));
}
