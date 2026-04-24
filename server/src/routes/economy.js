// 재화/확장/강화 엔드포인트 (1.6)
//
// POST /app/member/spendGem.json              — 보석 차감
// POST /app/member/addGem.json                — 보석 적립 (IAP 영수증 검증 후 내부 호출용)
// POST /app/member/upgradeItem.json           — 아이템 강화 (확률 기반)
// POST /app/member/expandInventory.json       — 인벤토리 슬롯 확장
// POST /app/member/expandSkillDeck.json       — 스킬덱 확장

const express = require('express');
const { query, tx } = require('../db');
const C = require('../util/codes');
const balance = require('../util/balance');

const router = express.Router();

function ok(res, extra = {}) { res.json({ result: C.RESULT_PASS, ...extra }); }

// -----------------------------------------------------
// 보석 차감
// 파라미터: userId, gem
// -----------------------------------------------------
router.all('/member/spendGem.json', async (req, res, next) => {
  try {
    const { userId, gem } = { ...req.query, ...req.body };
    if (!userId) return res.json({ result: C.RESULT_NOID });
    const spend = Math.max(0, Number(gem) || 0);
    const out = await tx(async (conn) => {
      const [[w]] = await conn.execute(`SELECT gem FROM wallets WHERE user_id = ? FOR UPDATE`, [userId]);
      if (!w) return { err: C.RESULT_NOID };
      if (w.gem < spend) return { err: C.RESULT_NOID, reason: 'not_enough_gem' };
      await conn.execute(`UPDATE wallets SET gem = gem - ? WHERE user_id = ?`, [spend, userId]);
      return { gem: w.gem - spend };
    });
    if (out.err) return res.json({ result: out.err, ...out });
    ok(res, { gem: out.gem });
  } catch (e) { next(e); }
});

// -----------------------------------------------------
// 보석 적립 (IAP 영수증 검증 성공 후 내부 호출)
// 프로덕션: 영수증 검증과 함께 한 트랜잭션으로 처리하는 것이 정석.
// 현재 스펙은 admin-only 로 제한.
// -----------------------------------------------------
router.all('/member/addGem.json', async (req, res, next) => {
  try {
    const { userId, gem, adminToken } = { ...req.query, ...req.body };
    // 간단한 관리자 토큰 체크 (운영은 어드민 미들웨어로 교체)
    const adm = await query(`SELECT token FROM admin_tokens WHERE token = ? AND revoked_at IS NULL`, [adminToken || '']);
    if (adm.length === 0) return res.status(401).json({ result: C.RESULT_NOID, error: 'admin_required' });
    const add = Math.max(0, Number(gem) || 0);
    await query(`UPDATE wallets SET gem = gem + ? WHERE user_id = ?`, [add, userId]);
    const [[w]] = [await query(`SELECT gem FROM wallets WHERE user_id = ?`, [userId])];
    ok(res, { gem: w?.gem ?? 0 });
  } catch (e) { next(e); }
});

// -----------------------------------------------------
// 아이템 강화
// 파라미터: userId, itemNo, fluxUsed (none|flux|advanced_flux)
// 동작: 코인 차감 → 확률 성공 시 upgrade_level++, 실패 시 레벨 유지 (코인만 소모)
// 참조: findit_item,skill,shop_20120827.xlsx "item upgrade" 시트
// -----------------------------------------------------
router.all('/member/upgradeItem.json', async (req, res, next) => {
  try {
    const p = { ...req.query, ...req.body };
    const { userId, itemNo, fluxUsed = 'none' } = p;
    if (!userId || itemNo == null) return res.json({ result: C.RESULT_NOID });
    const typeNo = Number(itemNo);
    if (!['none', 'flux', 'advanced_flux'].includes(fluxUsed)) {
      return res.json({ result: C.RESULT_NOID, error: 'invalid_flux' });
    }

    const out = await tx(async (conn) => {
      const [[inv]] = await conn.execute(
        `SELECT id, upgrade_level FROM inventories WHERE user_id = ? AND item_no = ? FOR UPDATE`,
        [userId, typeNo]
      );
      if (!inv) return { err: C.RESULT_NOID, reason: 'item_not_owned' };
      if (inv.upgrade_level >= balance.UPGRADE_MAX_LEVEL) {
        return { err: C.RESULT_NOID, reason: 'max_upgrade' };
      }
      const toLevel = inv.upgrade_level + 1;
      const cost = balance.upgradeCost(toLevel);
      const rate = balance.upgradeRate(toLevel, fluxUsed);

      const [[w]] = await conn.execute(`SELECT coin FROM wallets WHERE user_id = ? FOR UPDATE`, [userId]);
      if (!w || Number(w.coin) < cost) return { err: C.RESULT_NOID, reason: 'not_enough_coin' };
      await conn.execute(`UPDATE wallets SET coin = coin - ? WHERE user_id = ?`, [cost, userId]);

      const success = Math.random() < rate;
      if (success) {
        await conn.execute(
          `UPDATE inventories SET upgrade_level = ? WHERE id = ?`,
          [toLevel, inv.id]
        );
      }
      await conn.execute(
        `INSERT INTO item_upgrade_log(user_id, inventory_id, from_level, to_level, success, coin_cost, flux_used)
         VALUES(?, ?, ?, ?, ?, ?, ?)`,
        [userId, inv.id, inv.upgrade_level, toLevel, success, cost, fluxUsed]
      );
      return { success, cost, rate, newLevel: success ? toLevel : inv.upgrade_level };
    });
    if (out.err) return res.json({ result: out.err, ...out });
    ok(res, out);
  } catch (e) { next(e); }
});

// -----------------------------------------------------
// 인벤토리 확장
// 파라미터: userId
// 비용은 서버가 결정 (현재 확장 횟수에 따라 계단식 증가)
// -----------------------------------------------------
router.all('/member/expandInventory.json', async (req, res, next) => {
  try {
    const { userId } = { ...req.query, ...req.body };
    if (!userId) return res.json({ result: C.RESULT_NOID });

    const out = await tx(async (conn) => {
      const [[w]] = await conn.execute(
        `SELECT coin, inventory_size FROM wallets WHERE user_id = ? FOR UPDATE`, [userId]);
      if (!w) return { err: C.RESULT_NOID };
      const currentExpansions = w.inventory_size - balance.INVENTORY_BASE;
      if (currentExpansions >= balance.INVENTORY_MAX_EXPANSIONS) {
        return { err: C.RESULT_NOID, reason: 'max_expanded' };
      }
      const cost = balance.inventoryExpansionCost(currentExpansions);
      if (Number(w.coin) < cost) return { err: C.RESULT_NOID, reason: 'not_enough_coin' };
      await conn.execute(
        `UPDATE wallets SET coin = coin - ?, inventory_size = inventory_size + 3 WHERE user_id = ?`,
        [cost, userId]
      );
      return { inventorySize: w.inventory_size + 3, cost };
    });
    if (out.err) return res.json({ result: out.err, ...out });
    ok(res, out);
  } catch (e) { next(e); }
});

// -----------------------------------------------------
// 스킬덱 확장 (1 → 최대 4)
// -----------------------------------------------------
router.all('/member/expandSkillDeck.json', async (req, res, next) => {
  try {
    const { userId } = { ...req.query, ...req.body };
    if (!userId) return res.json({ result: C.RESULT_NOID });

    const out = await tx(async (conn) => {
      const [[w]] = await conn.execute(
        `SELECT coin, skill_deck_count FROM wallets WHERE user_id = ? FOR UPDATE`, [userId]);
      if (!w) return { err: C.RESULT_NOID };
      if (w.skill_deck_count >= balance.SKILL_DECK_MAX) {
        return { err: C.RESULT_NOID, reason: 'max_expanded' };
      }
      const cost = balance.skillDeckExpansionCost(w.skill_deck_count);
      if (Number(w.coin) < cost) return { err: C.RESULT_NOID, reason: 'not_enough_coin' };
      await conn.execute(
        `UPDATE wallets SET coin = coin - ?, skill_deck_count = skill_deck_count + 1 WHERE user_id = ?`,
        [cost, userId]
      );
      return { skillDeckCount: w.skill_deck_count + 1, cost };
    });
    if (out.err) return res.json({ result: out.err, ...out });
    ok(res, out);
  } catch (e) { next(e); }
});

module.exports = router;
