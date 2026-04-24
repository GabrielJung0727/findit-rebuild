// Google reCAPTCHA v2/v3 서버 검증
//
// 환경변수:
//   RECAPTCHA_SECRET — 설정되면 검증 활성. 미설정 시 검증 pass (개발/마이그레이션용)
//   RECAPTCHA_MIN_SCORE — v3 점수 하한 (기본 0.5)
//
// 클라 전달 파라미터 키: `recaptchaToken`

const MIN_SCORE = Number(process.env.RECAPTCHA_MIN_SCORE || '0.5');
const VERIFY_URL = 'https://www.google.com/recaptcha/api/siteverify';

function isEnabled() {
  return Boolean(process.env.RECAPTCHA_SECRET);
}

/**
 * Express 미들웨어 — 요청 body/query 의 `recaptchaToken` 을 검증.
 * 실패 시 403. RECAPTCHA_SECRET 미설정 시 통과.
 */
function middleware(req, res, next) {
  if (!isEnabled()) return next();
  const token = (req.body?.recaptchaToken || req.query?.recaptchaToken || '').toString();
  if (!token) {
    return res.status(403).json({ result: '999', error: 'recaptcha_required' });
  }
  verifyToken(token, req.ip)
    .then((out) => {
      if (!out.success) {
        return res.status(403).json({ result: '999', error: 'recaptcha_failed', detail: out });
      }
      next();
    })
    .catch((e) => res.status(503).json({ result: '999', error: 'recaptcha_error', message: e.message }));
}

async function verifyToken(token, remoteip) {
  const body = new URLSearchParams({
    secret: process.env.RECAPTCHA_SECRET,
    response: token,
    ...(remoteip ? { remoteip } : {}),
  });
  const resp = await fetch(VERIFY_URL, {
    method: 'POST',
    headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
    body: body.toString(),
  });
  const data = await resp.json();
  // v3 의 경우 score 하한 적용
  if (data.success && typeof data.score === 'number' && data.score < MIN_SCORE) {
    return { success: false, reason: 'score_too_low', score: data.score, threshold: MIN_SCORE };
  }
  return data;
}

module.exports = { middleware, verifyToken, isEnabled };
