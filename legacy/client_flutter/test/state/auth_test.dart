import 'package:findit/api/api_client.dart';
import 'package:findit/api/member_api.dart';
import 'package:findit/state/auth.dart';
import 'package:findit/state/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../api/_helper.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    SharedPreferences.setMockInitialValues(<String, Object>{});
  });

  ProviderContainer makeContainer(TestApi t) {
    return ProviderContainer(
      overrides: <Override>[
        apiClientProvider.overrideWithValue(t.client),
        memberApiProvider.overrideWith((ref) => MemberApi(t.client)),
      ],
    );
  }

  test('login sets user state + persists autoLogin', () async {
    final t = TestApi.create();
    t.adapter.onPost(
      'app/member/login.json',
      (s) => s.reply(200, <String, dynamic>{
        'result': '000',
        'token': 'tok-1',
        'user': <String, dynamic>{
          'userId': 'u@test.com', 'userNick': 'alice', 'userCharacter': 1,
          'level': 5, 'score': 100, 'coin': 50, 'point': 2, 'gem': 0, 'hp': 200,
          'authType': 'email',
        },
        'item': <dynamic>[], 'skill': <dynamic>[],
      }),
    );

    final container = makeContainer(t);
    addTearDown(container.dispose);

    await container.read(authControllerProvider.notifier).login(
          userId: 'u@test.com', userPass: 'pw1234', autoLogin: true,
        );

    final state = container.read(authControllerProvider);
    expect(state.isLoggedIn, true);
    expect(state.user?.userNick, 'alice');
    expect(state.user?.level, 5);

    final prefs = await SharedPreferences.getInstance();
    expect(prefs.getBool('auto_login'), true);
    expect(prefs.getString('saved_user_id'), 'u@test.com');
    expect(prefs.getString('saved_password'), 'pw1234');
  });

  test('login with wrong password sets error code', () async {
    final t = TestApi.create();
    t.adapter.onPost(
      'app/member/login.json',
      (s) => s.reply(200, <String, dynamic>{'result': '102'}),
    );

    final container = makeContainer(t);
    addTearDown(container.dispose);

    await expectLater(
      container.read(authControllerProvider.notifier).login(
            userId: 'u@test.com', userPass: 'bad', autoLogin: false,
          ),
      throwsA(isA<ApiResultException>()),
    );
    expect(container.read(authControllerProvider).error, '102');
    expect(container.read(authControllerProvider).isLoggedIn, false);
  });

  test('guest does not persist autoLogin', () async {
    final t = TestApi.create();
    t.adapter.onPost(
      'app/member/guest.json',
      (s) => s.reply(200, <String, dynamic>{
        'result': '000',
        'token': 'guest-tok',
        'user': <String, dynamic>{
          'userId': 'guest_xxx', 'userNick': 'g',
          'level': 1, 'authType': 'guest',
        },
        'item': <dynamic>[], 'skill': <dynamic>[],
      }),
    );

    final container = makeContainer(t);
    addTearDown(container.dispose);

    await container.read(authControllerProvider.notifier).guest();
    expect(container.read(authControllerProvider).user?.authType, 'guest');

    final prefs = await SharedPreferences.getInstance();
    expect(prefs.getBool('auto_login'), isNot(true));
    expect(prefs.getString('saved_user_id'), isNull);
  });

  test('logout clears state + autoLogin pref', () async {
    SharedPreferences.setMockInitialValues(<String, Object>{
      'auto_login': true,
      'saved_user_id': 'u@test.com',
      'saved_password': 'pw1234',
    });
    final t = TestApi.create();
    t.adapter.onPost(
      'app/member/logout.json',
      (s) => s.reply(200, <String, dynamic>{'result': '000'}),
    );

    final container = makeContainer(t);
    addTearDown(container.dispose);

    await container.read(authControllerProvider.notifier).logout();
    final prefs = await SharedPreferences.getInstance();
    expect(prefs.getBool('auto_login'), isNull);
    expect(container.read(authControllerProvider).isLoggedIn, false);
  });

  test('tryAutoLogin no-op when flag absent', () async {
    final t = TestApi.create();
    final container = makeContainer(t);
    addTearDown(container.dispose);

    await container.read(authControllerProvider.notifier).tryAutoLogin();
    expect(container.read(authControllerProvider).isLoggedIn, false);
  });

  test('tryAutoLogin success when flag + creds present', () async {
    SharedPreferences.setMockInitialValues(<String, Object>{
      'auto_login': true,
      'saved_user_id': 'u@test.com',
      'saved_password': 'pw1234',
    });
    final t = TestApi.create();
    t.adapter.onPost(
      'app/member/login.json',
      (s) => s.reply(200, <String, dynamic>{
        'result': '000',
        'token': 'auto-tok',
        'user': <String, dynamic>{'userId': 'u@test.com', 'userNick': 'alice'},
        'item': <dynamic>[], 'skill': <dynamic>[],
      }),
    );

    final container = makeContainer(t);
    addTearDown(container.dispose);

    await container.read(authControllerProvider.notifier).tryAutoLogin();
    expect(container.read(authControllerProvider).isLoggedIn, true);
  });
}
