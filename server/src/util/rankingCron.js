// 인프로세스 랭킹 크론 — 외부 스케줄러(Cloud Scheduler) 없이도 동작.
//
// 매시간 틱: 오늘자 daily 스냅샷 upsert, 월요일이면 weekly 도 함께.
// upsert 라 같은 날 여러 번 돌아도 안전(멱등). DB 불가 시 경고만 남기고 죽지 않음.
// RANKING_CRON=0 으로 비활성 가능 (외부 스케줄러로 /admin/rankings/snapshot 호출 시).

const { buildSnapshot } = require('./rankingSnapshot');

function todayStr(d = new Date()) {
  const y = d.getFullYear();
  const m = String(d.getMonth() + 1).padStart(2, '0');
  const day = String(d.getDate()).padStart(2, '0');
  return `${y}-${m}-${day}`;
}

/**
 * 한 번의 스냅샷 틱. build 주입형이라 테스트 가능.
 * @param {Date} now
 * @param {typeof buildSnapshot} build
 */
async function tick(now = new Date(), build = buildSnapshot) {
  const date = todayStr(now);
  const out = { daily: null, weekly: null };
  out.daily = await build('daily', date);
  if (now.getDay() === 1) out.weekly = await build('weekly', date); // 1 = Monday
  return out;
}

function start({ intervalMs = 3600000 } = {}) {
  if (process.env.RANKING_CRON === '0') {
    console.log('[rank-cron] disabled (RANKING_CRON=0)');
    return null;
  }
  const run = () =>
    tick().then(
      (o) => console.log('[rank-cron] snapshot', JSON.stringify(o)),
      (e) => console.warn('[rank-cron] skipped:', e.code || e.message)
    );
  run(); // 부팅 직후 1회
  const timer = setInterval(run, intervalMs);
  if (timer.unref) timer.unref();
  console.log(`[rank-cron] started (every ${Math.round(intervalMs / 60000)}min)`);
  return timer;
}

module.exports = { start, tick, todayStr };
