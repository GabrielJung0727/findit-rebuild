/// 가입/로그인 입력 유효성 — 서버 [`util/validation.js`](../../../../server/src/util/validation.js)
/// 와 동일 규칙. 사용자 즉시 피드백 + 가입 전 사전 차단용.
///
/// 정식 검증은 서버가 `join.json` 진입 시 한 번 더 수행 (방어적 중복).
library;

const int passwordMin = 4;
const int passwordMax = 12;
const int nickMin = 1;
const int nickMax = 20;

final RegExp _emailRe = RegExp(r'^[^\s@]+@[^\s@]+\.[^\s@]+$');

/// 반환값: null = 통과, 그 외 = 에러 코드 (`email_required`/`email_invalid`/`email_too_long`).
String? validateEmail(String? email) {
  if (email == null || email.isEmpty) return 'email_required';
  if (!_emailRe.hasMatch(email)) return 'email_invalid';
  if (email.length > 128) return 'email_too_long';
  return null;
}

/// 반환값: null = 통과, `password_required`/`password_length`.
String? validatePassword(String? pass) {
  if (pass == null || pass.isEmpty) return 'password_required';
  if (pass.length < passwordMin || pass.length > passwordMax) return 'password_length';
  return null;
}

/// 반환값: null = 통과, `nickname_required`/`nickname_length`.
String? validateNickname(String? nick) {
  if (nick == null) return 'nickname_required';
  final trimmed = nick.trim();
  if (trimmed.isEmpty) return 'nickname_required';
  if (trimmed.length < nickMin || trimmed.length > nickMax) return 'nickname_length';
  return null;
}

/// 반환값: null = 통과, `character_invalid`.
String? validateCharacter(int? ch) {
  if (ch == null || ch < 0 || ch > 2) return 'character_invalid';
  return null;
}
