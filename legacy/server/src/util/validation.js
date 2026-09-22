// 가입/로그인 입력 유효성 — 기획 "번역할 한국어.txt" 기준
//   "아이디가 이메일형식이 아닙니다."
//   "비밀번호는 4~12자리입니다."
//   "별칭이 없거나 글자수가 너무 깁니다"

const EMAIL_RE = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

const PASSWORD_MIN = 4;
const PASSWORD_MAX = 12;
const NICK_MIN = 1;
const NICK_MAX = 20;

function validateEmail(email) {
  if (!email || typeof email !== 'string') return 'email_required';
  if (!EMAIL_RE.test(email)) return 'email_invalid';
  if (email.length > 128) return 'email_too_long';
  return null;
}

function validatePassword(pass) {
  if (!pass || typeof pass !== 'string') return 'password_required';
  if (pass.length < PASSWORD_MIN || pass.length > PASSWORD_MAX) return 'password_length';
  return null;
}

function validateNickname(nick) {
  if (!nick || typeof nick !== 'string') return 'nickname_required';
  const trimmed = nick.trim();
  if (trimmed.length < NICK_MIN || trimmed.length > NICK_MAX) return 'nickname_length';
  return null;
}

function validateCharacter(ch) {
  const n = Number(ch);
  if (!Number.isInteger(n) || n < 0 || n > 2) return 'character_invalid';
  return null;
}

module.exports = {
  validateEmail,
  validatePassword,
  validateNickname,
  validateCharacter,
  PASSWORD_MIN,
  PASSWORD_MAX,
  NICK_MIN,
  NICK_MAX,
};
