// 세션 토큰 발급 + 중복 로그인 감지
//
// 설계: 토큰은 서버 측 login_logs 에 저장되는 opaque 값.
// 클라는 토큰을 쿠키/헤더 대신 "userId" 로만 식별 (원본 APK 호환).
// 중복 로그인은 login_logs 에서 active session 조회로 감지 → 기존 세션 logout 처리.

const crypto = require('crypto');
const { query } = require('../db');

function generateToken() {
  return crypto.randomBytes(24).toString('hex');
}

/**
 * 로그인 성공 시 호출.
 * - 기존 active 세션 모두 logged_out_at 처리
 * - 새 세션 row 생성
 * - 토큰 반환
 */
async function createSession(userId, { ip = null, userAgent = null } = {}) {
  const token = generateToken();
  // 기존 세션 강제 로그아웃
  await query(
    `UPDATE login_logs SET logged_out_at = NOW()
      WHERE user_id = ? AND logged_out_at IS NULL`,
    [userId]
  );
  await query(
    `INSERT INTO login_logs(user_id, session_token, ip, user_agent) VALUES(?, ?, ?, ?)`,
    [userId, token, ip, userAgent]
  );
  return token;
}

/**
 * 활성 세션 존재 여부 조회. 다른 디바이스에서 현재 로그인 중인지 판단.
 */
async function hasActiveSession(userId) {
  const rows = await query(
    `SELECT id FROM login_logs WHERE user_id = ? AND logged_out_at IS NULL LIMIT 1`,
    [userId]
  );
  return rows.length > 0;
}

async function invalidateSession(token) {
  await query(
    `UPDATE login_logs SET logged_out_at = NOW() WHERE session_token = ? AND logged_out_at IS NULL`,
    [token]
  );
}

/**
 * 세션 토큰 → userId 검증. 활성(미로그아웃) 세션이면 userId, 아니면 null.
 * WebSocket 게이트웨이(ws_server.js)에서 connection 인증에 사용.
 */
async function verifyToken(token) {
  if (!token) return null;
  const rows = await query(
    `SELECT user_id FROM login_logs
      WHERE session_token = ? AND logged_out_at IS NULL
      ORDER BY id DESC LIMIT 1`,
    [token]
  );
  return rows.length ? rows[0].user_id : null;
}

module.exports = { generateToken, createSession, hasActiveSession, invalidateSession, verifyToken };
