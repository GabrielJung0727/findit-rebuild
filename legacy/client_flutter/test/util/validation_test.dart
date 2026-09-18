import 'package:findit/util/validation.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('validateEmail', () {
    test('null/empty → email_required', () {
      expect(validateEmail(null), 'email_required');
      expect(validateEmail(''), 'email_required');
    });
    test('plain text → email_invalid', () {
      expect(validateEmail('not-an-email'), 'email_invalid');
      expect(validateEmail('a@b'), 'email_invalid');
    });
    test('over 128 chars → email_too_long', () {
      final long = '${'a' * 120}@example.com'; // 132
      expect(validateEmail(long), 'email_too_long');
    });
    test('valid email → null', () {
      expect(validateEmail('user@findit.com'), isNull);
    });
  });

  group('validatePassword', () {
    test('null/empty → required', () {
      expect(validatePassword(null), 'password_required');
      expect(validatePassword(''), 'password_required');
    });
    test('< 4 chars → length', () {
      expect(validatePassword('abc'), 'password_length');
    });
    test('> 12 chars → length', () {
      expect(validatePassword('abcdefghijklm'), 'password_length');
    });
    test('4..12 chars → null', () {
      expect(validatePassword('abcd'), isNull);
      expect(validatePassword('abcdefghijkl'), isNull);
    });
  });

  group('validateNickname', () {
    test('null/whitespace → required', () {
      expect(validateNickname(null), 'nickname_required');
      expect(validateNickname('   '), 'nickname_required');
    });
    test('> 20 chars (after trim) → length', () {
      expect(validateNickname('a' * 21), 'nickname_length');
    });
    test('1..20 chars → null', () {
      expect(validateNickname('a'), isNull);
      expect(validateNickname('a' * 20), isNull);
      expect(validateNickname('  alice  '), isNull); // trim ok
    });
  });

  group('validateCharacter', () {
    test('null/<0/>2 → invalid', () {
      expect(validateCharacter(null), 'character_invalid');
      expect(validateCharacter(-1), 'character_invalid');
      expect(validateCharacter(3), 'character_invalid');
    });
    test('0/1/2 → null', () {
      expect(validateCharacter(0), isNull);
      expect(validateCharacter(1), isNull);
      expect(validateCharacter(2), isNull);
    });
  });
}
