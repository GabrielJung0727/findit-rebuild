// 게임 밸런스 상수 — 기획서 xlsx 에서 추출
//   "레벨별 첨수체계_기본능력치_02.xlsx"
//   "findit_item,skill,shop_20120827.xlsx — item upgrade 시트"
//
// 모두 정적 데이터. DB 에 테이블로 두기에는 크기/빈도 상 부적합.

// 레벨 -> 누적 점수 임계값 (0 ~ 100레벨)
// 클라이언트 getLevel(score) 와 동일한 계산을 서버에서도 가능하게 함.
// 값은 xlsx 의 "점수" 열 반올림. 차이분 재계산이 아니라 누적값.
const LEVEL_SCORE = [
  0,
  5000, 10000, 15000, 21000, 27300, 34125, 42315, 52047, 63498, 76832,
  92199, 109717, 129466, 151475, 175711, 202068, 230357, 260303, 291540, 323609,
  355970, 391567, 430724, 473796, 521176, 573293, 630623, 693685, 763054, 839359,
  923295, 1015624, 1117187, 1228905, 1351796, 1486976, 1635673, 1799240, 1979164, 2177081,
  2394789, 2634268, 2897695, 3187464, 3506211, 3856832, 4242515, 4666766, 5133443, 5646787,
  6211466, 6832612, 7515874, 8267461, 9094207, 10003628, 11003991, 12104390, 13314829, 14646311,
  16110943, 17722037, 19494241, 21443665, 23588031, 25946834, 28541518, 31395669, 34535236, 37988760,
  41787636, 45966400, 50563040, 55619344, 61181278, 67299406, 74029346, 81432281, 89575509, 98533060,
  108386366, 119225002, 131147503, 144262253, 158688478, 174557326, 192013059, 211214364, 232335801, 255569381,
  281126319, 309238951, 340162846, 374179131, 411597044, 452756748, 498032423, 547835665, 602619232, 662881155,
];

// 레벨 -> 기본 능력치 (공격력/방어력/체력)
// attack/defense 는 소수(아이템 계산의 계수), hp 는 정수.
const LEVEL_ABILITY = [
  // [attack, defense, hp]
  [0.0, 0.0, 100],
  [0.5, 0.5, 110],  [0.51, 0.51, 120], [0.52, 0.52, 130], [0.53, 0.53, 140], [0.54, 0.54, 150],
  [0.55, 0.55, 160],[0.56, 0.56, 170], [0.57, 0.57, 180], [0.58, 0.58, 190], [0.59, 0.59, 200],
  [0.62, 0.62, 260],[0.63, 0.63, 270], [0.64, 0.64, 280], [0.65, 0.65, 290], [0.66, 0.66, 300],
  [0.67, 0.67, 310],[0.68, 0.68, 320], [0.69, 0.69, 330], [0.70, 0.70, 340], [0.71, 0.71, 350],
  [0.73, 0.73, 410],[0.74, 0.74, 420], [0.75, 0.75, 430], [0.76, 0.76, 440], [0.77, 0.77, 450],
  [0.78, 0.78, 460],[0.79, 0.79, 470], [0.80, 0.80, 480], [0.81, 0.81, 490], [0.82, 0.82, 500],
  [0.84, 0.84, 550],[0.85, 0.85, 560], [0.86, 0.86, 570], [0.87, 0.87, 580], [0.88, 0.88, 590],
  [0.89, 0.89, 600],[0.90, 0.90, 610], [0.91, 0.91, 620], [0.92, 0.92, 630], [0.93, 0.93, 640],
  [0.95, 0.95, 700],[0.96, 0.96, 710], [0.97, 0.97, 720], [0.98, 0.98, 730], [0.99, 0.99, 740],
  [1.00, 1.00, 750],[1.01, 1.01, 760], [1.02, 1.02, 770], [1.03, 1.03, 780], [1.04, 1.04, 790],
  [1.06, 1.06, 950],[1.07, 1.07, 1000],[1.08, 1.08, 1050],[1.09, 1.09, 1100],[1.10, 1.10, 1150],
  [1.11, 1.11, 1200],[1.12, 1.12, 1250],[1.13, 1.13, 1300],[1.14, 1.14, 1350],[1.15, 1.15, 1400],
  [1.17, 1.17, 1500],[1.18, 1.18, 1550],[1.19, 1.19, 1550],[1.20, 1.20, 1550],[1.21, 1.21, 1550],
  [1.22, 1.22, 1550],[1.23, 1.23, 1550],[1.24, 1.24, 1550],[1.25, 1.25, 1550],[1.26, 1.26, 1600],
  [1.28, 1.28, 1800],[1.29, 1.29, 1900],[1.30, 1.30, 2000],[1.31, 1.31, 2100],[1.32, 1.32, 2200],
  [1.33, 1.33, 2300],[1.34, 1.34, 2400],[1.35, 1.35, 2500],[1.36, 1.36, 2600],[1.37, 1.37, 2700],
  [1.38, 1.38, 2900],[1.39, 1.39, 3000],[1.40, 1.40, 3100],[1.41, 1.41, 3200],[1.42, 1.42, 3300],
  [1.43, 1.43, 3400],[1.44, 1.44, 3500],[1.45, 1.45, 3600],[1.46, 1.46, 3700],[1.47, 1.47, 3800],
  [1.48, 1.48, 4000],[1.49, 1.49, 4100],[1.50, 1.50, 4200],[1.51, 1.51, 4300],[1.52, 1.52, 4400],
  [1.53, 1.53, 4500],[1.54, 1.54, 4600],[1.55, 1.55, 4700],[1.56, 1.56, 4800],[1.57, 1.57, 5000],
];

// 등급 (기획 xlsx 의 A~J 열)
const GRADE_BANDS = [
  { grade: 'A', min: 1,  max: 10 },
  { grade: 'B', min: 11, max: 20 },
  { grade: 'C', min: 21, max: 30 },
  { grade: 'D', min: 31, max: 40 },
  { grade: 'E', min: 41, max: 50 },
  { grade: 'F', min: 51, max: 60 },
  { grade: 'G', min: 61, max: 70 },
  { grade: 'H', min: 71, max: 80 },
  { grade: 'I', min: 81, max: 90 },
  { grade: 'J', min: 91, max: 100 },
];

function levelForScore(score) {
  for (let i = 1; i < LEVEL_SCORE.length; i++) {
    if (score < LEVEL_SCORE[i]) return i;
  }
  return 100;
}

function gradeForLevel(level) {
  const b = GRADE_BANDS.find((x) => level >= x.min && level <= x.max);
  return b ? b.grade : 'J';
}

/**
 * 매치 결과로 점수가 누적될 때의 서버 권위 레벨업 계산.
 * 클라가 보낸 level/point 를 신뢰하지 않고 score 만으로 재계산한다.
 *  - 레벨이 오른 만큼 스킬 포인트(point)를 1레벨당 1씩 지급.
 * @param {number} oldScore 기존 누적 점수
 * @param {number} addScore 이번 매치로 얻은 점수(증분)
 * @returns {{newScore:number, oldLevel:number, newLevel:number, pointAward:number}}
 */
function levelUpResult(oldScore, addScore) {
  const prev = Math.max(0, Number(oldScore) || 0);
  const add = Math.max(0, Number(addScore) || 0);
  const newScore = prev + add;
  const oldLevel = levelForScore(prev);
  const newLevel = levelForScore(newScore);
  const pointAward = Math.max(0, newLevel - oldLevel);
  return { newScore, oldLevel, newLevel, pointAward };
}

function abilityForLevel(level) {
  const clamped = Math.max(0, Math.min(100, level));
  const [attack, defense, hp] = LEVEL_ABILITY[clamped];
  return { attack, defense, hp, grade: gradeForLevel(clamped) };
}

// -----------------------------------------------------
// 아이템 업그레이드 공식 (findit_item,skill,shop_20120827 item upgrade 시트)
// 방어(반지): 업그레이드 당 -0.1초 효과 증가
// 공격(연필): 업그레이드 당 +0.1초 효과 증가
// 성공확률: 0→1 50%, 1→2 45%, ..., 8→9 10% (단계↑ 시 감소)
// 비용: 100*level 코인
// -----------------------------------------------------
const UPGRADE_MAX_LEVEL = 9;
const UPGRADE_RATES = [0.5, 0.5, 0.45, 0.4, 0.35, 0.3, 0.25, 0.2, 0.15, 0.1]; // from→to index
const UPGRADE_COSTS = [0, 100, 200, 300, 400, 500, 600, 700, 800, 900];

function upgradeCost(toLevel) {
  return UPGRADE_COSTS[Math.min(toLevel, UPGRADE_MAX_LEVEL)];
}
function upgradeRate(toLevel, flux = 'none') {
  let rate = UPGRADE_RATES[Math.min(toLevel, UPGRADE_MAX_LEVEL)];
  if (flux === 'flux') rate += 0.05;
  else if (flux === 'advanced_flux') rate += 0.10;
  return Math.min(0.95, rate);
}

// -----------------------------------------------------
// 인벤토리/스킬덱 확장 공식
// -----------------------------------------------------
const INVENTORY_BASE = 3;
const INVENTORY_MAX_EXPANSIONS = 9;
const INVENTORY_COST = [0, 50, 100, 150, 200, 250, 300, 350, 400, 450]; // idx = expansion count
function inventoryExpansionCost(currentExpansions) {
  return INVENTORY_COST[Math.min(currentExpansions + 1, INVENTORY_MAX_EXPANSIONS)];
}

const SKILL_DECK_MAX = 4;
const SKILL_DECK_COST = [0, 100, 300, 900]; // 1→2=100, 2→3=300, 3→4=900
function skillDeckExpansionCost(currentCount) {
  if (currentCount >= SKILL_DECK_MAX) return null;
  return SKILL_DECK_COST[currentCount];
}

// -----------------------------------------------------
// 광고 보상 (24h 상한, 회당 보상)
// -----------------------------------------------------
const AD_REWARD_COIN_PER_VIEW = 5;
const AD_REWARD_DAILY_CAP = 20; // 하루 최대 20회 보상

module.exports = {
  LEVEL_SCORE,
  LEVEL_ABILITY,
  GRADE_BANDS,
  levelForScore,
  gradeForLevel,
  abilityForLevel,
  levelUpResult,
  UPGRADE_MAX_LEVEL,
  upgradeCost,
  upgradeRate,
  INVENTORY_BASE,
  INVENTORY_MAX_EXPANSIONS,
  inventoryExpansionCost,
  SKILL_DECK_MAX,
  skillDeckExpansionCost,
  AD_REWARD_COIN_PER_VIEW,
  AD_REWARD_DAILY_CAP,
};
