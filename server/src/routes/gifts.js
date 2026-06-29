// 친구 선물 — 코인/아이템 무료 선물 보내기 + 받은 선물 목록 + 수령.
//
// POST /app/member/giftSend.json   {fromUser, toUser, kind, amount|itemNo}
// GET  /app/member/giftList.json   ?userId=          — 미수령 선물 목록
// POST /app/member/giftClaim.json  {userId, giftId}  — 수령 → 지갑/인벤토리 적립
//
// 비즈니스 규칙은 util/gifts.js (순수, 테스트됨). 여기선 DB IO 만 담당.

const express = require('express');
const { query, tx } = require('../db');
const C = require('../util/codes');
const { validateGiftSend, classifyItemType } = require('../util/gifts');

const router = express.Router();

function ok(res, extra = {}) { res.json({ result: C.RESULT_PASS, ...extra }); }
function fail(res, code, extra = {}) { res.json({ result: code, ...extra }); }

// 선물 보내기
router.all('/member/giftSend.json', async (req, res, next) => {
  try {
    const p = { ...req.query, ...req.body };
    const { fromUser, toUser, kind = 'coin' } = p;

    const [recip] = await query(`SELECT user_id FROM members WHERE user_id = ? LIMIT 1`, [toUser || '']);
    const [[cnt]] = [await query(
      `SELECT COUNT(*) AS c FROM gifts WHERE from_user = ? AND created_at >= CURDATE()`,
      [fromUser || '']
    )];

    const check = validateGiftSend({
      fromUser,
      toUser,
      kind,
      amount: p.amount,
      itemNo: p.itemNo,
      dailySentCount: cnt ? Number(cnt.c) : 0,
      recipientExists: Boolean(recip),
    });
    if (!check.ok) return fail(res, C.RESULT_NOID, { reason: check.reason });

    const amount = kind === 'coin' ? Number(p.amount) : Number(p.qty || 1);
    const itemNo = kind === 'item' ? Number(p.itemNo) : null;
    await query(
      `INSERT INTO gifts(from_user, to_user, kind, amount, item_no) VALUES(?, ?, ?, ?, ?)`,
      [fromUser, toUser, kind, amount, itemNo]
    );
    ok(res);
  } catch (e) { next(e); }
});

// 받은(미수령) 선물 목록
router.get('/member/giftList.json', async (req, res, next) => {
  try {
    const { userId } = req.query;
    if (!userId) return fail(res, C.RESULT_NOID);
    const rows = await query(
      `SELECT id, from_user AS fromUser, kind, amount, item_no AS itemNo,
              DATE_FORMAT(created_at, '%Y-%m-%d %H:%i') AS regDate
         FROM gifts
        WHERE to_user = ? AND claimed_at IS NULL
        ORDER BY id DESC LIMIT 100`,
      [userId]
    );
    ok(res, { list: rows });
  } catch (e) { next(e); }
});

// 선물 수령 → 지갑/인벤토리 적립 (멱등: 이미 수령했으면 already)
router.all('/member/giftClaim.json', async (req, res, next) => {
  try {
    const p = { ...req.query, ...req.body };
    const { userId, giftId } = p;
    if (!userId || giftId == null) return fail(res, C.RESULT_NOID);

    const out = await tx(async (conn) => {
      const [[g]] = await conn.execute(
        `SELECT id, to_user, kind, amount, item_no, claimed_at
           FROM gifts WHERE id = ? FOR UPDATE`,
        [Number(giftId)]
      );
      if (!g || g.to_user !== userId) return { err: C.RESULT_NOID, reason: 'not_found' };
      if (g.claimed_at) return { err: C.RESULT_ALREADYEXIT, reason: 'already_claimed' };

      if (g.kind === 'coin') {
        await conn.execute(`UPDATE wallets SET coin = coin + ? WHERE user_id = ?`, [g.amount, userId]);
      } else {
        await conn.execute(
          `INSERT INTO inventories(user_id, item_no, item_type, quantity)
           VALUES(?, ?, ?, ?)
           ON DUPLICATE KEY UPDATE quantity = quantity + VALUES(quantity)`,
          [userId, g.item_no, classifyItemType(g.item_no), g.amount || 1]
        );
      }
      await conn.execute(`UPDATE gifts SET claimed_at = NOW() WHERE id = ?`, [g.id]);
      return { kind: g.kind, amount: g.amount, itemNo: g.item_no };
    });
    if (out.err) return fail(res, out.err, { reason: out.reason });
    ok(res, out);
  } catch (e) { next(e); }
});

module.exports = router;
