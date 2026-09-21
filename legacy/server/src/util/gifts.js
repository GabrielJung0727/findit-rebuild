// 친구 선물(코인/아이템) 비즈니스 규칙 — 순수 함수라 단위 테스트로 검증.
//
// 모델: B 가 친구 A 에게 무료 선물(일일 상한)을 보내고, A 가 수령(claim)하면 지갑/인벤토리에 적립.
// 보내는 쪽은 차감 없음(소셜 무료 선물). 남용 방지는 일일 발송 상한.

const GIFT_DAILY_CAP = 10; // 한 유저가 하루에 보낼 수 있는 선물 수
const GIFT_COIN_MAX = 100; // 1회 코인 선물 상한

/**
 * 선물 전송 유효성. 라우트가 dailySentCount(오늘 보낸 수)와 recipientExists 를 주입.
 * @returns {{ok:true}|{ok:false, reason:string}}
 */
function validateGiftSend({ fromUser, toUser, kind, amount, itemNo, dailySentCount, recipientExists }) {
  if (!fromUser || !toUser) return { ok: false, reason: 'missing_user' };
  if (fromUser === toUser) return { ok: false, reason: 'self_gift' };
  if (recipientExists === false) return { ok: false, reason: 'no_recipient' };
  if (!['coin', 'item'].includes(kind)) return { ok: false, reason: 'invalid_kind' };
  if ((dailySentCount || 0) >= GIFT_DAILY_CAP) return { ok: false, reason: 'daily_cap' };
  if (kind === 'coin') {
    const amt = Number(amount);
    if (!Number.isInteger(amt) || amt <= 0 || amt > GIFT_COIN_MAX) {
      return { ok: false, reason: 'invalid_amount' };
    }
  } else {
    if (itemNo == null || !Number.isInteger(Number(itemNo))) {
      return { ok: false, reason: 'invalid_item' };
    }
  }
  return { ok: true };
}

// item_no → inventories.item_type (NOT NULL). member.js classifyItemType 와 동일 규칙.
function classifyItemType(typeNo) {
  const n = Number(typeNo);
  if (n >= 38 && n <= 40) return 'PEN';
  if (n >= 41 && n <= 42) return 'RING';
  if (n >= 43 && n <= 48) return 'BERRY';
  if (n >= 49 && n <= 54) return 'POTION';
  if (n >= 55 && n <= 58) return 'GOLD';
  return 'ETC';
}

module.exports = { GIFT_DAILY_CAP, GIFT_COIN_MAX, validateGiftSend, classifyItemType };
