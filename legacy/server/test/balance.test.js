const { test } = require('node:test');
const assert = require('node:assert');
const balance = require('../src/util/balance');

test('levelForScore: 레벨 구간 경계', () => {
  assert.equal(balance.levelForScore(0), 1);
  assert.equal(balance.levelForScore(4999), 1);
  assert.equal(balance.levelForScore(5000), 2);
  assert.equal(balance.levelForScore(9999), 2);
  assert.equal(balance.levelForScore(10000), 3);
  assert.equal(balance.levelForScore(Number.MAX_SAFE_INTEGER), 100);
});

test('levelUpResult: 레벨 변화 없음', () => {
  const r = balance.levelUpResult(0, 0);
  assert.deepEqual(r, { newScore: 0, oldLevel: 1, newLevel: 1, pointAward: 0 });
});

test('levelUpResult: 한 레벨 상승 → 포인트 1', () => {
  const r = balance.levelUpResult(0, 5000);
  assert.equal(r.newScore, 5000);
  assert.equal(r.oldLevel, 1);
  assert.equal(r.newLevel, 2);
  assert.equal(r.pointAward, 1);
});

test('levelUpResult: 여러 레벨 점프 → 포인트 = 레벨차', () => {
  const r = balance.levelUpResult(0, 15000); // 0~5000=L1, ~10000=L2, ~15000=L3, ~21000=L4
  assert.equal(r.newLevel, 4);
  assert.equal(r.pointAward, 3);
});

test('levelUpResult: 음수/비정상 입력은 0 으로 클램프', () => {
  const r = balance.levelUpResult(-100, -50);
  assert.equal(r.newScore, 0);
  assert.equal(r.pointAward, 0);
});
