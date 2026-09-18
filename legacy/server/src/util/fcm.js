// Firebase Cloud Messaging (FCM) 전송 유틸
//
// 실제 전송은 Firebase 프로젝트 + 서비스 계정이 필요.
// 환경변수 `FIREBASE_SERVICE_ACCOUNT_JSON` 가 설정되면 firebase-admin SDK 로 전송,
// 없으면 로그만 남기고 "sent" 로 간주 (개발 환경용).
//
// 배포 시:
//   npm install firebase-admin
//   export FIREBASE_SERVICE_ACCOUNT_JSON='{"type":"service_account", ...}'

const { query } = require('../db');

let adminApp = null;
let adminSdkAvailable = null; // null=미확인, true/false=캐싱

function tryInitFirebase() {
  if (adminSdkAvailable !== null) return adminSdkAvailable;
  const jsonStr = process.env.FIREBASE_SERVICE_ACCOUNT_JSON;
  if (!jsonStr) {
    adminSdkAvailable = false;
    return false;
  }
  try {
    // lazy require — firebase-admin 미설치 환경에서도 서버 기동
    // eslint-disable-next-line global-require
    const admin = require('firebase-admin');
    const creds = JSON.parse(jsonStr);
    adminApp = admin.initializeApp({
      credential: admin.credential.cert(creds),
    });
    adminSdkAvailable = true;
    console.log('[fcm] firebase-admin initialized');
  } catch (e) {
    console.warn('[fcm] firebase-admin not available:', e.message);
    adminSdkAvailable = false;
  }
  return adminSdkAvailable;
}

/**
 * 특정 userId 에게 푸시 전송.
 * @returns {Promise<{status, error?}>}
 */
async function sendToUser(userId, { type = 'custom', title, body, data = {} }) {
  const rows = await query(`SELECT fcm_token FROM members WHERE user_id = ?`, [userId]);
  const token = rows[0]?.fcm_token;
  if (!token) {
    await logPush(userId, type, title, body, data, 'no_token');
    return { status: 'no_token' };
  }

  if (!tryInitFirebase()) {
    // Dev: 실제 발송 없이 로그만
    console.log(`[fcm-dev] → ${userId} [${type}] ${title}: ${body}`);
    await logPush(userId, type, title, body, data, 'sent');
    return { status: 'sent', dryRun: true };
  }

  try {
    // eslint-disable-next-line global-require
    const admin = require('firebase-admin');
    const msg = {
      token,
      notification: { title, body },
      data: Object.fromEntries(Object.entries(data).map(([k, v]) => [k, String(v)])),
    };
    const r = await admin.messaging().send(msg);
    await logPush(userId, type, title, body, data, 'sent');
    return { status: 'sent', fcmId: r };
  } catch (e) {
    console.warn('[fcm] send failed:', e.message);
    await logPush(userId, type, title, body, data, 'failed', e.message.slice(0, 250));
    return { status: 'failed', error: e.message };
  }
}

async function logPush(userId, type, title, body, data, status, error = null) {
  try {
    await query(
      `INSERT INTO push_log(user_id, type, title, body, data, status, error)
       VALUES(?, ?, ?, ?, ?, ?, ?)`,
      [userId, type, title, body.slice(0, 500), JSON.stringify(data || {}), status, error]
    );
  } catch (_) {
    // DB 기록 실패는 비치명적 — 로그만 남김
  }
}

async function registerToken(userId, fcmToken) {
  if (!userId || !fcmToken) return;
  await query(`UPDATE members SET fcm_token = ? WHERE user_id = ?`, [fcmToken, userId]);
}

module.exports = { sendToUser, registerToken, tryInitFirebase };
