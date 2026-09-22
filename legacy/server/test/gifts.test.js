const { test } = require('node:test');
const assert = require('node:assert');
const { validateGiftSend, classifyItemType, GIFT_DAILY_CAP, GIFT_COIN_MAX } = require('../src/util/gifts');

const base = { fromUser: 'a@x', toUser: 'b@x', kind: 'coin', amount: 10, dailySentCount: 0, recipientExists: true };

test('validateGiftSend: 정상 코인 선물', () => {
  assert.deepEqual(validateGiftSend(base), { ok: true });
});

test('validateGiftSend: 자기 자신/없는 수신자/유저누락 거부', () => {
  assert.equal(validateGiftSend({ ...base, toUser: 'a@x' }).reason, 'self_gift');
  assert.equal(validateGiftSend({ ...base, recipientExists: false }).reason, 'no_recipient');
  assert.equal(validateGiftSend({ ...base, fromUser: '' }).reason, 'missing_user');
});

test('validateGiftSend: 일일 상한 초과 거부', () => {
  assert.equal(validateGiftSend({ ...base, dailySentCount: GIFT_DAILY_CAP }).reason, 'daily_cap');
});

test('validateGiftSend: 코인 금액 범위 검증', () => {
  assert.equal(validateGiftSend({ ...base, amount: 0 }).reason, 'invalid_amount');
  assert.equal(validateGiftSend({ ...base, amount: -5 }).reason, 'invalid_amount');
  assert.equal(validateGiftSend({ ...base, amount: GIFT_COIN_MAX + 1 }).reason, 'invalid_amount');
  assert.equal(validateGiftSend({ ...base, amount: GIFT_COIN_MAX }).ok, true);
});

test('validateGiftSend: 아이템 선물은 itemNo 필요', () => {
  assert.equal(validateGiftSend({ ...base, kind: 'item', itemNo: null }).reason, 'invalid_item');
  assert.equal(validateGiftSend({ ...base, kind: 'item', itemNo: 43 }).ok, true);
  assert.equal(validateGiftSend({ ...base, kind: 'bogus' }).reason, 'invalid_kind');
});

test('classifyItemType: item_no 범위 매핑', () => {
  assert.equal(classifyItemType(38), 'PEN');
  assert.equal(classifyItemType(42), 'RING');
  assert.equal(classifyItemType(43), 'BERRY');
  assert.equal(classifyItemType(50), 'POTION');
  assert.equal(classifyItemType(55), 'GOLD');
  assert.equal(classifyItemType(0), 'ETC');
});
