// /app/member/*.json — 클라(Android)가 호출하는 13개 엔드포인트
// 참조 계약: docs/04-24.md + GameActivity.java, JoinActivity.java, InventoryActivity_Google.java
//
// 특징:
// - 모든 엔드포인트 HTTP GET (application/x-www-form-urlencoded, 쿼리스트링)
// - 응답은 JSON 객체, "result" 필드 == 상태코드(000=성공)
// - userId 는 이메일 문자열 (회원 PK)

const express = require('express');
const bcrypt = require('bcryptjs');
const { query, tx } = require('../db');
const C = require('../util/codes');
const V = require('../util/validation');
const session = require('../util/session');
const recaptcha = require('../util/recaptcha');
const balance = require('../util/balance');
const { buildAppConfig } = require('../util/appConfig');

const router = express.Router();

function clientIp(req) {
  return (req.headers['x-forwarded-for'] || req.ip || '').toString().split(',')[0].trim();
}

function ok(res, extra = {}) {
  res.json({ result: C.RESULT_PASS, ...extra });
}
function fail(res, code) {
  res.json({ result: code });
}

// 공통: userId 의 아이템 배열 로드
async function loadItems(userId) {
  const rows = await query(
    `SELECT item_no AS itemNo, item_type AS itemType, quantity, upgrade_level AS upgradeLevel, seqs
       FROM inventories WHERE user_id = ?`,
    [userId]
  );
  return rows;
}
// 공통: userId 의 스킬 배열 로드
async function loadSkills(userId) {
  const rows = await query(
    `SELECT skill_id AS skillId FROM skills WHERE user_id = ? ORDER BY learned_at ASC`,
    [userId]
  );
  return rows;
}
// 공통: userId 의 지갑/상태 로드
async function loadWallet(userId) {
  const rows = await query(`SELECT * FROM wallets WHERE user_id = ?`, [userId]);
  return rows[0] || null;
}

// -----------------------------------------------------
// 0. /app/member/checkUserId.json — 가입 전 아이디/닉네임 중복 확인
// 파라미터: userId 또는 userNick (둘 중 하나 이상)
// 응답: { result: '000', userId: { taken: bool, valid: bool, error?: string },
//                       userNick: { taken: bool, valid: bool, error?: string } }
//
// 클라 JoinScreen 의 "중복확인" 버튼이 호출. 가입 전 즉시 피드백 용도.
// 정식 가입 시점에는 join.json 이 다시 검증함 (race 방지).
// -----------------------------------------------------
router.all('/member/checkUserId.json', async (req, res, next) => {
  try {
    const p = { ...req.query, ...req.body };
    const { userId, userNick } = p;
    if (userId == null && userNick == null) return fail(res, C.RESULT_NOID);

    const out = { result: C.RESULT_PASS };
    if (userId != null) {
      const idErr = V.validateEmail(userId);
      if (idErr) {
        out.userId = { valid: false, taken: false, error: idErr };
      } else {
        const rows = await query(`SELECT user_id FROM members WHERE user_id = ?`, [userId]);
        out.userId = { valid: true, taken: rows.length > 0 };
      }
    }
    if (userNick != null) {
      const nickErr = V.validateNickname(userNick);
      if (nickErr) {
        out.userNick = { valid: false, taken: false, error: nickErr };
      } else {
        const rows = await query(
          `SELECT user_id FROM members WHERE user_nick = ?`,
          [userNick.trim()]
        );
        out.userNick = { valid: true, taken: rows.length > 0 };
      }
    }
    res.json(out);
  } catch (e) { next(e); }
});

// -----------------------------------------------------
// 1. POST-이나-GET /app/member/join.json
// 파라미터: userId, userPass, userCharacter, userDevice, userNick
// -----------------------------------------------------
router.all('/member/join.json', recaptcha.middleware, async (req, res, next) => {
  try {
    const p = { ...req.query, ...req.body };
    const { userId, userPass, userCharacter, userDevice = '1', userNick } = p;

    // 유효성 검증 (기획 "번역할 한국어.txt" 알림 메시지 대응)
    const errors = {
      email: V.validateEmail(userId),
      password: V.validatePassword(userPass),
      nickname: V.validateNickname(userNick),
      character: V.validateCharacter(userCharacter),
    };
    const firstError = Object.entries(errors).find(([, e]) => e !== null);
    if (firstError) {
      return res.json({ result: C.RESULT_NOID, field: firstError[0], error: firstError[1] });
    }

    const existing = await query(`SELECT user_id FROM members WHERE user_id = ?`, [userId]);
    if (existing.length > 0) return fail(res, C.RESULT_ALREADYJOINED);

    // 닉네임 중복 확인 (UNIQUE 제약이지만 선제 차단)
    const nickTaken = await query(`SELECT user_id FROM members WHERE user_nick = ?`, [userNick.trim()]);
    if (nickTaken.length > 0) {
      return res.json({ result: C.RESULT_ALREADYJOINED, field: 'nickname', error: 'nickname_taken' });
    }

    const hash = await bcrypt.hash(userPass, 10);
    await tx(async (conn) => {
      await conn.execute(
        `INSERT INTO members(user_id, user_pass_hash, user_nick, user_character, user_device, auth_type)
         VALUES(?, ?, ?, ?, ?, 'email')`,
        [userId, hash, userNick.trim(), Number(userCharacter) || 0, String(userDevice)]
      );
      await conn.execute(
        `INSERT INTO wallets(user_id, level, score, coin, point, gem, hp)
         VALUES(?, 1, 0, 10, 2, 0, 110)`,
        [userId]
      );
    });
    ok(res);
  } catch (e) { next(e); }
});

// -----------------------------------------------------
// 2. /app/member/login.json
// 파라미터: userId, userPass, userDevice
// 응답: { result, user{userId,level,score,coin,point,userNick,userCharacter}, item[], skill[] }
// -----------------------------------------------------
router.all('/member/login.json', async (req, res, next) => {
  try {
    const p = { ...req.query, ...req.body };
    const { userId, userPass } = p;
    if (!userId) return fail(res, C.RESULT_NOID);
    if (V.validateEmail(userId)) return fail(res, C.RESULT_NOID);

    const rows = await query(`SELECT * FROM members WHERE user_id = ?`, [userId]);
    if (rows.length === 0) return fail(res, C.RESULT_NOID);
    const m = rows[0];

    // Guest/Facebook 은 pass 비교 생략 (auth_type 별 처리)
    if (m.auth_type === 'email') {
      const matched = await bcrypt.compare(userPass || '', m.user_pass_hash);
      if (!matched) return fail(res, C.RESULT_NOPASSWORD);
    }

    // 중복 로그인 감지 — 기존 세션 강제 로그아웃 후 새 세션 생성
    const token = await session.createSession(userId, {
      ip: clientIp(req),
      userAgent: req.headers['user-agent'],
    });

    const wallet = await loadWallet(userId);
    const items = await loadItems(userId);
    const skills = await loadSkills(userId);

    ok(res, {
      token,  // 원본 클라는 무시하지만 신규 클라/어드민용
      user: {
        userId: m.user_id,
        level: wallet?.level ?? 1,
        score: Number(wallet?.score ?? 0),
        coin: Number(wallet?.coin ?? 0),
        point: wallet?.point ?? 0,
        gem: wallet?.gem ?? 0,
        hp: wallet?.hp ?? 110,
        userNick: m.user_nick,
        userCharacter: m.user_character,
        authType: m.auth_type,
      },
      item: items,
      skill: skills,
    });
  } catch (e) { next(e); }
});

// -----------------------------------------------------
// /app/member/guest.json — Guest 입장
// 용어정리.docx: "Guest: 회원가입 없이 게임 진행, 상대방만 정보 저장"
// 파라미터: deviceId (선택, 동일 디바이스 재로그인용)
// 응답: result, user{...}
// -----------------------------------------------------
router.all('/member/guest.json', recaptcha.middleware, async (req, res, next) => {
  try {
    const p = { ...req.query, ...req.body };
    const deviceId = p.deviceId || p.userDevice || '';
    // Guest ID: "guest_<랜덤12>" 또는 deviceId 기반 고정 ID
    const { randomBytes } = require('crypto');
    const guestUserId = deviceId
      ? `guest_dev_${deviceId}`
      : `guest_${randomBytes(6).toString('hex')}`;

    const existing = await query(`SELECT * FROM members WHERE user_id = ?`, [guestUserId]);
    if (existing.length === 0) {
      await tx(async (conn) => {
        await conn.execute(
          `INSERT INTO members(user_id, user_pass_hash, user_nick, user_character, user_device, auth_type)
           VALUES(?, '!', ?, 0, ?, 'guest')`,
          [guestUserId, `guest_${guestUserId.slice(-6)}`, String(deviceId || '1')]
        );
        await conn.execute(
          `INSERT INTO wallets(user_id, level, score, coin, point, gem, hp)
           VALUES(?, 1, 0, 10, 2, 0, 110)`,
          [guestUserId]
        );
      });
    }

    const token = await session.createSession(guestUserId, { ip: clientIp(req) });
    const wallet = await loadWallet(guestUserId);
    const m = (await query(`SELECT * FROM members WHERE user_id = ?`, [guestUserId]))[0];

    ok(res, {
      token,
      user: {
        userId: guestUserId,
        level: wallet.level,
        score: Number(wallet.score),
        coin: Number(wallet.coin),
        point: wallet.point,
        gem: wallet.gem,
        hp: wallet.hp,
        userNick: m.user_nick,
        userCharacter: m.user_character,
        authType: 'guest',
      },
      item: [],
      skill: [],
    });
  } catch (e) { next(e); }
});

// -----------------------------------------------------
// /app/member/facebook.json — Facebook 로그인
// 용어정리.docx: "페이스북 로그인", JoinActivity.java:32 FACEBOOKID_PASSWORD="facebook"
//
// 클라에서 Facebook SDK 로 얻은 fbUserId 를 전달.
// (SDK 통합은 별도 작업, 현재는 서버 접수부만 구현)
// 파라미터: fbUserId, fbToken (선택, 서버측 Facebook Graph API 검증용),
//          userNick (최초 가입 시), userCharacter
// -----------------------------------------------------
router.all('/member/facebook.json', async (req, res, next) => {
  try {
    const p = { ...req.query, ...req.body };
    const { fbUserId, userNick, userCharacter } = p;
    if (!fbUserId) return fail(res, C.RESULT_NOID);

    // TODO: fbToken 을 Facebook Graph API 로 검증 (/me?access_token=...)
    // 현재는 클라 신뢰. 프로덕션에서는 반드시 서버 검증 필요.

    const userId = `fb_${fbUserId}`;
    const existing = await query(`SELECT * FROM members WHERE user_id = ?`, [userId]);

    if (existing.length === 0) {
      // 최초 가입
      if (!userNick || V.validateNickname(userNick)) {
        return res.json({ result: C.RESULT_NOID, needsSignup: true });
      }
      await tx(async (conn) => {
        await conn.execute(
          `INSERT INTO members(user_id, user_pass_hash, user_nick, user_character, user_device, auth_type)
           VALUES(?, '!', ?, ?, '1', 'facebook')`,
          [userId, userNick.trim(), Number(userCharacter) || 0]
        );
        await conn.execute(
          `INSERT INTO wallets(user_id, level, score, coin, point, gem, hp)
           VALUES(?, 1, 0, 10, 2, 0, 110)`,
          [userId]
        );
      });
    }

    const token = await session.createSession(userId, { ip: clientIp(req) });
    const m = (await query(`SELECT * FROM members WHERE user_id = ?`, [userId]))[0];
    const wallet = await loadWallet(userId);
    const items = await loadItems(userId);
    const skills = await loadSkills(userId);

    ok(res, {
      token,
      user: {
        userId: m.user_id,
        level: wallet.level,
        score: Number(wallet.score),
        coin: Number(wallet.coin),
        point: wallet.point,
        gem: wallet.gem,
        hp: wallet.hp,
        userNick: m.user_nick,
        userCharacter: m.user_character,
        authType: 'facebook',
      },
      item: items,
      skill: skills,
    });
  } catch (e) { next(e); }
});

// -----------------------------------------------------
// /app/member/logout.json — 로그아웃 (세션 무효화)
// -----------------------------------------------------
router.all('/member/logout.json', async (req, res, next) => {
  try {
    const { token } = { ...req.query, ...req.body };
    if (token) await session.invalidateSession(token);
    ok(res);
  } catch (e) { next(e); }
});

// -----------------------------------------------------
// 3. /app/member/addCoin.json — 광고 보상 등으로 코인 적립
// 파라미터: userId, coin (증가량)
// -----------------------------------------------------
router.all('/member/addCoin.json', async (req, res, next) => {
  try {
    const { userId, coin } = { ...req.query, ...req.body };
    if (!userId) return fail(res, C.RESULT_NOID);
    const add = Math.max(0, Number(coin) || 0);
    await query(`UPDATE wallets SET coin = coin + ? WHERE user_id = ?`, [add, userId]);
    const w = await loadWallet(userId);
    ok(res, { coin: Number(w?.coin ?? 0) });
  } catch (e) { next(e); }
});

// -----------------------------------------------------
// 4. /app/member/spendCoin.json — 코인 차감
// -----------------------------------------------------
router.all('/member/spendCoin.json', async (req, res, next) => {
  try {
    const { userId, coin } = { ...req.query, ...req.body };
    if (!userId) return fail(res, C.RESULT_NOID);
    const spend = Math.max(0, Number(coin) || 0);
    const result = await tx(async (conn) => {
      const [rows] = await conn.execute(`SELECT coin FROM wallets WHERE user_id = ? FOR UPDATE`, [userId]);
      if (rows.length === 0) return { err: C.RESULT_NOID };
      const current = Number(rows[0].coin);
      if (current < spend) return { err: C.RESULT_NOID }; // 코인 부족
      await conn.execute(`UPDATE wallets SET coin = coin - ? WHERE user_id = ?`, [spend, userId]);
      return { coin: current - spend };
    });
    if (result.err) return fail(res, result.err);
    ok(res, { coin: result.coin });
  } catch (e) { next(e); }
});

// -----------------------------------------------------
// 5. /app/member/buyItemAndSpendCoin.json
// 파라미터: userId, itemNo, coin, quantity
// 동작: 코인 차감 + 인벤토리 추가 (원자적)
// -----------------------------------------------------
router.all('/member/buyItemAndSpendCoin.json', async (req, res, next) => {
  try {
    const p = { ...req.query, ...req.body };
    const { userId, itemNo, coin, quantity = 1 } = p;
    if (!userId || itemNo == null) return fail(res, C.RESULT_NOID);
    const price = Math.max(0, Number(coin) || 0);
    const qty = Math.max(1, Number(quantity) || 1);
    const typeNo = Number(itemNo);
    const itemType = classifyItemType(typeNo);

    const result = await tx(async (conn) => {
      const [[wallet]] = await conn.execute(`SELECT coin FROM wallets WHERE user_id = ? FOR UPDATE`, [userId]);
      if (!wallet) return { err: C.RESULT_NOID };
      if (Number(wallet.coin) < price) return { err: C.RESULT_NOID };
      await conn.execute(`UPDATE wallets SET coin = coin - ? WHERE user_id = ?`, [price, userId]);
      await conn.execute(
        `INSERT INTO inventories(user_id, item_no, item_type, quantity)
         VALUES(?, ?, ?, ?)
         ON DUPLICATE KEY UPDATE quantity = quantity + VALUES(quantity)`,
        [userId, typeNo, itemType, qty]
      );
      const [[w]] = await conn.execute(`SELECT coin FROM wallets WHERE user_id = ?`, [userId]);
      const [[inv]] = await conn.execute(
        `SELECT quantity FROM inventories WHERE user_id = ? AND item_no = ?`, [userId, typeNo]);
      return { coin: Number(w.coin), itemNo: typeNo, quantity: inv.quantity };
    });
    if (result.err) return fail(res, result.err);
    ok(res, result);
  } catch (e) { next(e); }
});

// -----------------------------------------------------
// 6. /app/member/spendMyItem.json — 보유 아이템 사용 (수량 -1)
// 파라미터: userId, itemNo, quantity
// -----------------------------------------------------
router.all('/member/spendMyItem.json', async (req, res, next) => {
  try {
    const p = { ...req.query, ...req.body };
    const { userId, itemNo, quantity = 1 } = p;
    if (!userId || itemNo == null) return fail(res, C.RESULT_NOID);
    const qty = Math.max(1, Number(quantity) || 1);
    const typeNo = Number(itemNo);

    const result = await tx(async (conn) => {
      const [[inv]] = await conn.execute(
        `SELECT quantity FROM inventories WHERE user_id = ? AND item_no = ? FOR UPDATE`,
        [userId, typeNo]
      );
      if (!inv) return { err: C.RESULT_NOID };
      if (inv.quantity < qty) return { err: C.RESULT_NOID };
      const remaining = inv.quantity - qty;
      if (remaining === 0) {
        await conn.execute(`DELETE FROM inventories WHERE user_id = ? AND item_no = ?`, [userId, typeNo]);
      } else {
        await conn.execute(
          `UPDATE inventories SET quantity = ? WHERE user_id = ? AND item_no = ?`,
          [remaining, userId, typeNo]
        );
      }
      return { itemNo: typeNo, quantity: remaining };
    });
    if (result.err) return fail(res, result.err);
    ok(res, result);
  } catch (e) { next(e); }
});

// -----------------------------------------------------
// 7. /app/member/buySkillAndSpendPoint.json
// 파라미터: userId, skillId, point, quantity
// -----------------------------------------------------
router.all('/member/buySkillAndSpendPoint.json', async (req, res, next) => {
  try {
    const p = { ...req.query, ...req.body };
    const { userId, skillId, point } = p;
    if (!userId || skillId == null) return fail(res, C.RESULT_NOID);
    const cost = Math.max(0, Number(point) || 0);
    const sid = Number(skillId);

    const result = await tx(async (conn) => {
      const [[wallet]] = await conn.execute(`SELECT point FROM wallets WHERE user_id = ? FOR UPDATE`, [userId]);
      if (!wallet) return { err: C.RESULT_NOID };
      if (wallet.point < cost) return { err: C.RESULT_NOID };

      const [existed] = await conn.execute(
        `SELECT id FROM skills WHERE user_id = ? AND skill_id = ?`, [userId, sid]);
      if (existed.length > 0) return { err: C.RESULT_ALREADYJOINED }; // "이미 배우셨습니다"

      await conn.execute(`UPDATE wallets SET point = point - ? WHERE user_id = ?`, [cost, userId]);
      await conn.execute(`INSERT INTO skills(user_id, skill_id) VALUES(?, ?)`, [userId, sid]);
      return { skillId: sid };
    });
    if (result.err) return fail(res, result.err);

    const skills = await loadSkills(userId);
    ok(res, { skill: skills, skillId: result.skillId });
  } catch (e) { next(e); }
});

// -----------------------------------------------------
// 8. /app/member/hitViewCount.json — 광고 조회 카운트 증가
// 파라미터: adId
// -----------------------------------------------------
router.all('/member/hitViewCount.json', async (req, res, next) => {
  try {
    const { adId } = { ...req.query, ...req.body };
    if (adId == null) return fail(res, C.RESULT_NOID);
    await query(`UPDATE ad_images SET view_count = view_count + 1 WHERE ad_id = ?`, [Number(adId)]);
    ok(res);
  } catch (e) { next(e); }
});

// -----------------------------------------------------
// 9. /app/member/newImageList.json — 스테이지 이미지 목록
// 파라미터: imgId (클라가 마지막으로 받은 imgId, 이후 것만 반환)
// 응답: { result, list: [{imgId, img, xSize, ySize, x, y, imgType, imageCut, urlDownload, urlDetail, urlVideo, adCaption, view, viewCount, regDate}] }
// -----------------------------------------------------
router.all('/member/newImageList.json', async (req, res, next) => {
  try {
    const { imgId = 0 } = { ...req.query, ...req.body };
    const since = Math.max(0, Number(imgId) || 0);
    const rows = await query(
      `SELECT img_id AS imgId, img, x_size AS xSize, y_size AS ySize, x, y,
              img_type AS imgType, image_cut AS imageCut,
              url_download AS urlDownload, url_detail AS urlDetail, url_video AS urlVideo,
              ad_caption AS adCaption,
              view, view_count AS viewCount, reg_date AS regDate
         FROM images
        WHERE img_id > ? AND view = 1
        ORDER BY img_id ASC
        LIMIT 200`,
      [since]
    );
    ok(res, { list: rows });
  } catch (e) { next(e); }
});

// -----------------------------------------------------
// 10. /app/member/newAdImageList.json — 광고 이미지 목록
// 파라미터: adId (마지막 받은 adId)
// -----------------------------------------------------
router.all('/member/newAdImageList.json', async (req, res, next) => {
  try {
    const { adId = 0 } = { ...req.query, ...req.body };
    const since = Math.max(0, Number(adId) || 0);
    const rows = await query(
      `SELECT ad_id AS adId, ad_image AS adImage, ad_name AS adName,
              ad_url AS adUrl, expire_date AS expireDate
         FROM ad_images
        WHERE ad_id > ? AND expire_date > NOW()
        ORDER BY ad_id ASC
        LIMIT 50`,
      [since]
    );
    ok(res, { list: rows });
  } catch (e) { next(e); }
});

// -----------------------------------------------------
// 11. /app/member/mutiAddUp.json — 멀티플레이 결과 집계
// 파라미터: userId, score, coin   (level/point 는 무시 — 서버가 score 로 재계산)
// 동작:
//   - score/coin 은 증분 누적
//   - level 은 누적 score 로 서버가 재계산(권위) → 클라가 보낸 level 신뢰 안 함
//   - 레벨이 오른 만큼 스킬 포인트(point)를 1레벨당 1 자동 지급
// 응답에 levelUp{from,to,pointAwarded} 포함.
// -----------------------------------------------------
router.all('/member/mutiAddUp.json', async (req, res, next) => {
  try {
    const p = { ...req.query, ...req.body };
    const { userId } = p;
    if (!userId) return fail(res, C.RESULT_NOID);
    const score = Math.max(0, Number(p.score) || 0);
    const coin = Math.max(0, Number(p.coin) || 0);

    const out = await tx(async (conn) => {
      const [[w]] = await conn.execute(
        `SELECT score, level, point, coin FROM wallets WHERE user_id = ? FOR UPDATE`,
        [userId]
      );
      if (!w) return { err: C.RESULT_NOID };
      const { newScore, oldLevel, newLevel, pointAward } = balance.levelUpResult(w.score, score);
      await conn.execute(
        `UPDATE wallets
            SET level = ?,
                score = ?,
                coin  = coin + ?,
                point = point + ?
          WHERE user_id = ?`,
        [newLevel, newScore, coin, pointAward, userId]
      );
      return { oldLevel, newLevel, pointAward };
    });
    if (out.err) return fail(res, out.err);

    const w = await loadWallet(userId);
    if (!w) return fail(res, C.RESULT_NOID);
    ok(res, {
      user: {
        userId,
        level: w.level,
        score: Number(w.score),
        coin: Number(w.coin),
        point: w.point,
      },
      levelUp: { from: out.oldLevel, to: out.newLevel, pointAwarded: out.pointAward },
    });
  } catch (e) { next(e); }
});

// -----------------------------------------------------
// 12. /app/member/rankList — 랭킹 (GET, query string)
// 파라미터: userId
// 응답: JSON { list: [{ranking, friendId, sumpoint}] }
// -----------------------------------------------------
router.get('/member/rankList', async (req, res, next) => {
  try {
    const { userId } = req.query;
    if (!userId) return fail(res, C.RESULT_NOID);
    const rows = await query(
      `SELECT RANK() OVER (ORDER BY score DESC) AS ranking,
              user_id AS friendId, score AS sumpoint
         FROM wallets
        ORDER BY score DESC
        LIMIT 100`
    );
    res.json({ list: rows });
  } catch (e) { next(e); }
});

// -----------------------------------------------------
// 13. /app/member/notice.json — 공지사항 (WebView 로딩)
// HTML 로 렌더.
// -----------------------------------------------------
router.get('/member/notice.json', async (req, res, next) => {
  try {
    const rows = await query(
      `SELECT id, title, body, created_at FROM notices
        WHERE is_visible = TRUE
          AND (starts_at IS NULL OR starts_at <= NOW())
          AND (ends_at IS NULL OR ends_at >= NOW())
        ORDER BY id DESC LIMIT 20`
    );
    // 클라는 WebView.loadUrl 로 로딩 → HTML 반환
    const html = renderNoticeHtml(rows);
    res.type('html').send(html);
  } catch (e) { next(e); }
});

// -----------------------------------------------------
// 13.5 /app/member/appConfig.json — 강제 업데이트 게이트 + 운영 플래그
// 응답: { result, minBuild, latestBuild, storeUrl:{ios,android}, message }
// 클라가 자신의 빌드번호 < minBuild 이면 강제 업데이트 다이얼로그. env 로 운영 조정(DB 불필요).
// -----------------------------------------------------
router.get('/member/appConfig.json', (req, res) => {
  res.json({ result: C.RESULT_PASS, ...buildAppConfig() });
});

// -----------------------------------------------------
// 14. /app/member/itemPurchaseHistList — 구매 내역 (GET)
// 파라미터: userId
// 응답: { list: [{regDate, itemName, quantity}] }
// -----------------------------------------------------
router.get('/member/itemPurchaseHistList', async (req, res, next) => {
  try {
    const { userId } = req.query;
    if (!userId) return fail(res, C.RESULT_NOID);
    const rows = await query(
      `SELECT DATE_FORMAT(created_at, '%Y-%m-%d %H:%i') AS regDate,
              CONCAT('item_', item_no) AS itemName,
              quantity
         FROM inventories
        WHERE user_id = ?
        ORDER BY created_at DESC
        LIMIT 100`,
      [userId]
    );
    res.json({ list: rows });
  } catch (e) { next(e); }
});

// -----------------------------------------------------
// 헬퍼
// -----------------------------------------------------
function classifyItemType(typeNo) {
  // Items.java 기반: pen=38~40, ring=41~42, berry=43~48, potion=49~54, gold=55~58, etc=0~2
  if (typeNo >= 38 && typeNo <= 40) return 'PEN';
  if (typeNo >= 41 && typeNo <= 42) return 'RING';
  if (typeNo >= 43 && typeNo <= 48) return 'BERRY';
  if (typeNo >= 49 && typeNo <= 54) return 'POTION';
  if (typeNo >= 55 && typeNo <= 58) return 'GOLD';
  return 'ETC';
}

function renderNoticeHtml(rows) {
  const items = rows
    .map(
      (n) => `
        <div class="notice">
          <h3>${escapeHtml(n.title)}</h3>
          <div class="meta">${n.created_at}</div>
          <div class="body">${escapeHtml(n.body).replace(/\n/g, '<br>')}</div>
        </div>`
    )
    .join('');
  return `<!doctype html>
<html lang="ko"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1">
<title>공지사항</title>
<style>
  body{font-family:sans-serif;margin:0;padding:12px;background:#fff;color:#222}
  .notice{border-bottom:1px solid #ddd;padding:12px 0}
  .notice h3{margin:0 0 6px;font-size:16px}
  .meta{color:#888;font-size:12px;margin-bottom:8px}
  .body{font-size:14px;line-height:1.5}
</style></head>
<body><h1 style="font-size:18px">공지사항</h1>${items || '<p>등록된 공지가 없습니다.</p>'}</body></html>`;
}

function escapeHtml(s) {
  return String(s).replace(/[&<>"']/g, (c) => ({
    '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;',
  })[c]);
}

module.exports = router;
