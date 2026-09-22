// 랭킹 스냅샷 생성 — schema.sql 의 `rankings` 테이블(일/주 집계)을 채운다.
//
// 기존에 ranks.js 의 친구 delta 계산이 `rankings` 를 읽지만, 이를 채우는 코드가 없어
// 항상 delta=0 이었다. 이 모듈이 그 빈자리를 메운다.
//
// computeRanks / withDelta 는 순수 함수 → 단위 테스트로 검증.
// buildSnapshot 은 q(query) 주입형이라 DB 없이도 fake 로 테스트 가능.

const { query } = require('../db');

/**
 * score 내림차순으로 표준 경쟁 순위(1,2,2,4) 부여.
 * @param {{user_id:string, score:number|string}[]} rows
 * @returns {{user_id:string, score:number, rank_no:number}[]}
 */
function computeRanks(rows) {
  const sorted = [...rows].sort((a, b) => Number(b.score) - Number(a.score));
  let lastScore = null;
  let lastRank = 0;
  return sorted.map((r, i) => {
    const score = Number(r.score);
    let rank;
    if (lastScore !== null && score === lastScore) {
      rank = lastRank; // 동점 → 같은 순위
    } else {
      rank = i + 1;
      lastScore = score;
      lastRank = rank;
    }
    return { user_id: r.user_id, score, rank_no: rank };
  });
}

/**
 * 직전 스냅샷의 순위맵으로 delta(전회 대비 변동, +상승) 부여.
 * @param {{user_id:string, score:number, rank_no:number}[]} ranked
 * @param {Record<string, number>} prevRankMap
 */
function withDelta(ranked, prevRankMap = {}) {
  return ranked.map((r) => {
    const prev = prevRankMap[r.user_id];
    const delta = prev == null ? 0 : prev - r.rank_no;
    return { ...r, delta };
  });
}

/**
 * wallets.score 기준 스냅샷을 만들어 rankings 에 upsert.
 * @param {'daily'|'weekly'} period
 * @param {string} periodDate 'YYYY-MM-DD'
 * @param {(sql:string, params?:any[])=>Promise<any[]>} q DB 쿼리 (테스트 주입용)
 */
async function buildSnapshot(period, periodDate, q = query) {
  const wallets = await q(`SELECT user_id, score FROM wallets ORDER BY score DESC`);
  const ranked = computeRanks(wallets);

  const prevRows = await q(
    `SELECT user_id, rank_no FROM rankings
      WHERE period = ? AND period_date = (
        SELECT MAX(period_date) FROM rankings WHERE period = ? AND period_date < ?
      )`,
    [period, period, periodDate]
  );
  const prevMap = Object.fromEntries(prevRows.map((r) => [r.user_id, r.rank_no]));

  const rows = withDelta(ranked, prevMap);
  for (const r of rows) {
    await q(
      `INSERT INTO rankings(user_id, period, period_date, score, rank_no, delta)
       VALUES(?, ?, ?, ?, ?, ?)
       ON DUPLICATE KEY UPDATE score = VALUES(score), rank_no = VALUES(rank_no), delta = VALUES(delta)`,
      [r.user_id, period, periodDate, r.score, r.rank_no, r.delta]
    );
  }
  return { period, periodDate, count: rows.length };
}

module.exports = { computeRanks, withDelta, buildSnapshot };
