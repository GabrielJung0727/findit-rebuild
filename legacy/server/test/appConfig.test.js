const { test } = require('node:test');
const assert = require('node:assert');
const { buildAppConfig } = require('../src/util/appConfig');

test('buildAppConfig: 기본값(env 없음) → minBuild 1', () => {
  const c = buildAppConfig({});
  assert.equal(c.minBuild, 1);
  assert.equal(c.latestBuild, 1);
  assert.deepEqual(c.storeUrl, { ios: '', android: '' });
  assert.equal(c.message, '');
});

test('buildAppConfig: env 반영', () => {
  const c = buildAppConfig({
    MIN_APP_BUILD: '5',
    LATEST_APP_BUILD: '8',
    APP_STORE_URL: 'https://apps.apple.com/x',
    PLAY_STORE_URL: 'https://play.google.com/x',
    APP_UPDATE_MESSAGE: '업데이트 필요',
  });
  assert.equal(c.minBuild, 5);
  assert.equal(c.latestBuild, 8);
  assert.equal(c.storeUrl.ios, 'https://apps.apple.com/x');
  assert.equal(c.message, '업데이트 필요');
});

test('buildAppConfig: latestBuild 는 minBuild 보다 작을 수 없음', () => {
  const c = buildAppConfig({ MIN_APP_BUILD: '10', LATEST_APP_BUILD: '3' });
  assert.equal(c.latestBuild, 10);
});
