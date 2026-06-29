// 앱 강제 업데이트 게이트 + 운영 플래그 — env 로 구동(DB 불필요).
//
// 클라가 자신의 빌드번호 < minBuild 이면 강제 업데이트 다이얼로그를 띄운다.
// 운영 중 스토어 심사 통과 후 MIN_APP_BUILD 를 올리면 구버전 차단.

function buildAppConfig(env = process.env) {
  const minBuild = Number(env.MIN_APP_BUILD) || 1;
  const latestBuild = Math.max(minBuild, Number(env.LATEST_APP_BUILD) || minBuild);
  return {
    minBuild,
    latestBuild,
    storeUrl: {
      ios: env.APP_STORE_URL || '',
      android: env.PLAY_STORE_URL || '',
    },
    message: env.APP_UPDATE_MESSAGE || '',
  };
}

module.exports = { buildAppConfig };
