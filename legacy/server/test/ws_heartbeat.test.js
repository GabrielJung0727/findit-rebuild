const { test } = require('node:test');
const assert = require('node:assert');
const { heartbeatSweep } = require('../src/socket/ws_server');

function fakeWs(isAlive) {
  return {
    isAlive,
    pinged: 0,
    terminated: false,
    ping() { this.pinged += 1; },
    terminate() { this.terminated = true; },
  };
}

test('heartbeatSweep: 죽은 연결 terminate, 산 연결 ping 후 isAlive 리셋', () => {
  const alive = fakeWs(true);
  const dead = fakeWs(false);
  const r = heartbeatSweep([alive, dead]);

  assert.equal(dead.terminated, true);
  assert.equal(alive.pinged, 1);
  assert.equal(alive.isAlive, false, '다음 주기 pong 대기 위해 false 리셋');
  assert.equal(r.pinged, 1);
  assert.equal(r.terminated, 1);
});

test('heartbeatSweep: 빈 목록은 0/0', () => {
  const r = heartbeatSweep([]);
  assert.deepEqual(r, { pinged: 0, terminated: 0 });
});
