// 스킬 카탈로그 + 선행 스킬 검증 (1.5)
//
// 엔드포인트:
//   GET  /app/member/skillCatalog.json       — 44개 스킬 마스터
//   GET  /app/member/levelTable.json         — 100 레벨 점수/능력치 테이블
//   POST /app/member/buySkillAndSpendPoint.json  — member.js 의 기존 버전을 대체 (선행 스킬 검증)

const express = require('express');
const { query, tx } = require('../db');
const C = require('../util/codes');
const balance = require('../util/balance');

const router = express.Router();

// -----------------------------------------------------
// 스킬 카탈로그 (정적 — 변경 시 배포 필요)
// -----------------------------------------------------
router.get('/member/skillCatalog.json', async (_req, res, next) => {
  try {
    const rows = await query(
      `SELECT skill_id AS skillId, code, name_ko AS nameKo, name_en AS nameEn,
              group_code AS groupCode, tier, unlock_level AS unlockLevel,
              attack_duration AS attackDuration, point_cost AS pointCost,
              required_skill_ids AS requiredSkillIds, asset_group AS assetGroup
         FROM skill_catalog
        ORDER BY unlock_level ASC, tier ASC`
    );
    // requiredSkillIds CSV → int[]
    for (const r of rows) {
      r.requiredSkillIds = r.requiredSkillIds
        ? r.requiredSkillIds.split(',').map((s) => parseInt(s, 10))
        : [];
      r.attackDuration = Number(r.attackDuration);
    }
    res.json({ result: C.RESULT_PASS, list: rows });
  } catch (e) { next(e); }
});

// -----------------------------------------------------
// 레벨 테이블 (점수 임계값 + 기본 능력치)
// 클라 로그인 직후 1회 캐싱 권장
// -----------------------------------------------------
router.get('/member/levelTable.json', (_req, res) => {
  const list = [];
  for (let lv = 0; lv <= 100; lv++) {
    const [attack, defense, hp] = balance.LEVEL_ABILITY[lv];
    list.push({
      level: lv,
      cumScore: balance.LEVEL_SCORE[lv],
      attack, defense, hp,
      grade: lv === 0 ? '-' : balance.gradeForLevel(lv),
    });
  }
  res.json({ result: C.RESULT_PASS, list });
});

// -----------------------------------------------------
// 스킬 학습 (선행 검증 포함)
// 파라미터: userId, skillId
// 기존 /member/buySkillAndSpendPoint.json 보다 강한 검증 — 새 경로 제공하고
// 원본 경로는 member.js 에서 유지 (BC).
// -----------------------------------------------------
router.all('/member/learnSkill.json', async (req, res, next) => {
  try {
    const p = { ...req.query, ...req.body };
    const { userId, skillId } = p;
    if (!userId || skillId == null) return res.json({ result: C.RESULT_NOID });
    const sid = Number(skillId);

    // 카탈로그에서 스킬 확인
    const catRows = await query(
      `SELECT skill_id, unlock_level, point_cost, required_skill_ids
         FROM skill_catalog WHERE skill_id = ?`,
      [sid]
    );
    if (catRows.length === 0) return res.json({ result: C.RESULT_NOID, error: 'unknown_skill' });
    const meta = catRows[0];
    const required = meta.required_skill_ids
      ? meta.required_skill_ids.split(',').map((s) => parseInt(s, 10))
      : [];

    const result = await tx(async (conn) => {
      const [[wallet]] = await conn.execute(
        `SELECT level, point FROM wallets WHERE user_id = ? FOR UPDATE`,
        [userId]
      );
      if (!wallet) return { err: C.RESULT_NOID };
      if (wallet.level < meta.unlock_level) {
        return { err: C.RESULT_NOID, reason: 'level_too_low', required_level: meta.unlock_level };
      }
      if (wallet.point < meta.point_cost) {
        return { err: C.RESULT_NOID, reason: 'not_enough_point' };
      }
      // 선행 스킬 모두 보유 확인
      if (required.length > 0) {
        const [prereqs] = await conn.execute(
          `SELECT skill_id FROM skills WHERE user_id = ? AND skill_id IN (${required.map(() => '?').join(',')})`,
          [userId, ...required]
        );
        if (prereqs.length < required.length) {
          return { err: C.RESULT_NOID, reason: 'prereq_missing', required };
        }
      }
      // 중복 학습 차단
      const [existed] = await conn.execute(
        `SELECT id FROM skills WHERE user_id = ? AND skill_id = ?`, [userId, sid]
      );
      if (existed.length > 0) return { err: C.RESULT_ALREADYJOINED, reason: 'already_learned' };

      await conn.execute(`UPDATE wallets SET point = point - ? WHERE user_id = ?`, [meta.point_cost, userId]);
      await conn.execute(`INSERT INTO skills(user_id, skill_id) VALUES(?, ?)`, [userId, sid]);
      return { ok: true };
    });
    if (result.err) return res.json({ result: result.err, ...result });

    const skills = await query(
      `SELECT skill_id AS skillId FROM skills WHERE user_id = ? ORDER BY learned_at ASC`,
      [userId]
    );
    res.json({ result: C.RESULT_PASS, skill: skills, skillId: sid });
  } catch (e) { next(e); }
});

module.exports = router;
