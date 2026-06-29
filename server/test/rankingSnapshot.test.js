const { test } = require('node:test');
const assert = require('node:assert');
const snap = require('../src/util/rankingSnapshot');

test('computeRanks: 표준 경쟁 순위(동점 처리)', () => {
  const r = snap.computeRanks([
    { user_id: 'a', score: 100 },
    { user_id: 'b', score: 100 },
    { user_id: 'c', score: 50 },
    { user_id: 'd', score: 200 },
  ]);
  const m = Object.fromEntries(r.map((x) => [x.user_id, x.rank_no]));
  assert.equal(m.d, 1);
  assert.equal(m.a, 2);
  assert.equal(m.b, 2); // 동점
  assert.equal(m.c, 4); // 3 건너뜀
});

test('withDelta: 직전 순위 대비 변동(+상승/-하락)', () => {
  const ranked = [
    { user_id: 'a', score: 1, rank_no: 1 },
    { user_id: 'b', score: 1, rank_no: 2 },
    { user_id: 'newbie', score: 1, rank_no: 3 },
  ];
  const out = snap.withDelta(ranked, { a: 3, b: 1 });
  const m = Object.fromEntries(out.map((x) => [x.user_id, x.delta]));
  assert.equal(m.a, 2); // 3 → 1
  assert.equal(m.b, -1); // 1 → 2
  assert.equal(m.newbie, 0); // 직전 기록 없음
});

test('buildSnapshot: 주입된 q 로 랭킹 행 upsert', async () => {
  const calls = [];
  const fakeQ = async (sql, params) => {
    calls.push({ sql, params });
    if (/FROM wallets/.test(sql)) {
      return [{ user_id: 'a', score: 100 }, { user_id: 'b', score: 50 }];
    }
    if (/SELECT user_id, rank_no FROM rankings/.test(sql)) {
      return [{ user_id: 'a', rank_no: 2 }]; // 직전엔 a 가 2위
    }
    return []; // INSERT
  };
  const out = await snap.buildSnapshot('daily', '2026-06-29', fakeQ);
  assert.equal(out.count, 2);

  const inserts = calls.filter((c) => /INSERT INTO rankings/.test(c.sql));
  assert.equal(inserts.length, 2);
  const aIns = inserts.find((c) => c.params[0] === 'a');
  assert.equal(aIns.params[1], 'daily'); // period
  assert.equal(aIns.params[4], 1); // rank_no (최고점 → 1위)
  assert.equal(aIns.params[5], 1); // delta = 직전2 - 현재1
});
