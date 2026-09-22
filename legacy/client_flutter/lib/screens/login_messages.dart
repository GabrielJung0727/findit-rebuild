import '../l10n/app_localizations.dart';
import '../util/validation.dart' as v;

/// 검증 실패 코드 → 번역 메시지 매퍼.
/// 서버 `validation.js` / `member.js` 가 반환하는 에러 코드와 키 일치.

String? emailValidator(AppLocalizations l, String? value) {
  final code = v.validateEmail(value);
  return code == null ? null : _emailMessage(l, code);
}

String? passwordValidator(AppLocalizations l, String? value) {
  final code = v.validatePassword(value);
  return code == null ? null : _passwordMessage(l, code);
}

String? nicknameValidator(AppLocalizations l, String? value) {
  final code = v.validateNickname(value);
  return code == null ? null : l.noticeMsgNicknamelength;
}

String? confirmPasswordValidator(
  AppLocalizations l,
  String? value,
  String original,
) {
  if (value == null || value.isEmpty) return _passwordMessage(l, 'password_required');
  if (value != original) return l.noticeMsgNomatchpasswd;
  return null;
}

String _emailMessage(AppLocalizations l, String code) {
  switch (code) {
    case 'email_required':
      return l.noticeMsgNotid;
    case 'email_invalid':
    case 'email_too_long':
      return l.noticeMsgNoemailtype;
  }
  return l.noticeMsgNoemailtype;
}

String _passwordMessage(AppLocalizations l, String code) {
  switch (code) {
    case 'password_required':
      return l.noticeMsgNotpasswd;
    case 'password_length':
      return l.noticeMsgRewirtepasswd;
  }
  return l.noticeMsgRewirtepasswd;
}

/// 로그인 result code → notice 다이얼로그 메시지.
String loginErrorMessage(AppLocalizations l, String code) {
  switch (code) {
    case '101': // RESULT_NOID
      return l.noticeMsgNoid;
    case '102': // RESULT_NOPASSWORD
      return l.noticeMsgNopasswd;
    case '103': // RESULT_ALREADYJOINED — 로그인 화면에서는 발생 X
      return l.noticeMsgAlreadyid;
  }
  return l.noticeMsgNetworkfail;
}

/// 가입 result code → notice 다이얼로그 메시지.
String joinErrorMessage(AppLocalizations l, String code, {String? field}) {
  switch (code) {
    case '101':
      switch (field) {
        case 'email':
          return l.noticeMsgNoemailtype;
        case 'password':
          return l.noticeMsgRewirtepasswd;
        case 'nickname':
          return l.noticeMsgNicknamelength;
        case 'character':
          return l.noticeMsgNocharacters;
      }
      return l.noticeMsgNetworkerrorJoin;
    case '103':
      return l.noticeMsgAlreadyid;
  }
  return l.noticeMsgNetworkerrorJoin;
}
