const { test } = require('node:test');
const assert = require('node:assert');
const cron = require('../src/util/rankingCron');

test('todayStr: YYYY-MM-DD 포맷', () => {
  assert.equal(cron.todayStr(new Date(2026, 5, 9)), '2026-06-09'); // month 5 = June
  assert.equal(cron.todayStr(new Date(2026, 0, 1)), '2026-01-01');
});

test('tick: daily 는 항상, weekly 는 월요일만', async () => {
  // 2026년 6월에서 월요일/비월요일 날짜를 실제 getDay()로 찾음 (달력 하드코딩 회피)
  let monday = null;
  let nonMonday = null;
  for (let d = 1; d <= 28; d += 1) {
    const g = new Date(2026, 5, d).getDay();
    if (g === 1 && monday === null) monday = d;
    if (g !== 1 && nonMonday === null) nonMonday = d;
  }

  const s1 = [];
  await cron.tick(new Date(2026, 5, monday), async (p) => { s1.push(p); return {}; });
  assert.ok(s1.includes('daily'));
  assert.ok(s1.includes('weekly'), '월요일엔 weekly 도 생성');

  const s2 = [];
  await cron.tick(new Date(2026, 5, nonMonday), async (p) => { s2.push(p); return {}; });
  assert.ok(s2.includes('daily'));
  assert.ok(!s2.includes('weekly'), '비월요일엔 weekly 생성 안 함');
});
