import 'package:findit/api/api_client.dart';
import 'package:findit/api/member_api.dart';
import 'package:flutter_test/flutter_test.dart';

import '_helper.dart';

void main() {
  group('MemberApi', () {
    late TestApi t;
    late MemberApi api;

    setUp(() {
      t = TestApi.create();
      api = MemberApi(t.client);
    });

    test('login persists token + returns user/item/skill', () async {
      t.adapter.onPost(
        t.url('app/member/login.json'),
        (s) => s.reply(200, <String, dynamic>{
          'result': '000',
          'token': 'abc123',
          'user': <String, dynamic>{'userId': 'u@test.com', 'level': 5},
          'item': <dynamic>[],
          'skill': <dynamic>[],
        }),
);

      final body = await api.login(userId: 'u@test.com', userPass: 'pw');
      final user = body['user'] as Map<String, dynamic>;
      expect(user['level'], 5);
      expect(await t.client.readSessionToken(), 'abc123');
    });

    test('login throws ApiResultException on failure', () async {
      t.adapter.onPost(
        t.url('app/member/login.json'),
        (s) => s.reply(200, <String, dynamic>{'result': '102'}),
);

      await expectLater(
        api.login(userId: 'u@test.com', userPass: 'wrong'),
        throwsA(isA<ApiResultException>()
            .having((e) => e.code, 'code', '102'),),
      );
    });

    test('guest persists token', () async {
      t.adapter.onPost(
        t.url('app/member/guest.json'),
        (s) => s.reply(200, <String, dynamic>{
          'result': '000',
          'token': 'guest-tok',
          'user': <String, dynamic>{'userId': 'guest_xxx'},
          'item': <dynamic>[],
          'skill': <dynamic>[],
        }),
);

      await api.guest(deviceId: 'd1');
      expect(await t.client.readSessionToken(), 'guest-tok');
    });

    test('logout clears token even when server fails', () async {
      await t.client.setSessionToken('to-clear');
      t.adapter.onPost(
        t.url('app/member/logout.json'),
        (s) => s.reply(500, <String, dynamic>{'result': '999'}),
);
      try {
        await api.logout();
      } catch (_) {/* swallow — finally clears anyway */}
      expect(await t.client.readSessionToken(), isNull);
    });

    test('addCoin returns new coin balance', () async {
      t.adapter.onPost(
        t.url('app/member/addCoin.json'),
        (s) => s.reply(200, <String, dynamic>{'result': '000', 'coin': 150}),
);
      final coin = await api.addCoin(userId: 'u', coin: 50);
      expect(coin, 150);
    });

    test('checkUserId returns valid/taken flags per side', () async {
      t.adapter.onPost(
        t.url('app/member/checkUserId.json'),
        (s) => s.reply(200, <String, dynamic>{
          'result': '000',
          'userId': <String, dynamic>{'valid': true, 'taken': false},
          'userNick': <String, dynamic>{'valid': true, 'taken': true},
        }),
      );
      final body = await api.checkUserId(
        userId: 'new@findit.com',
        userNick: 'taken_nick',
      );
      final id = body['userId'] as Map<String, dynamic>;
      final nick = body['userNick'] as Map<String, dynamic>;
      expect(id['taken'], false);
      expect(nick['taken'], true);
    });

    test('spendGem rethrows insufficient-balance error', () async {
      t.adapter.onPost(
        t.url('app/member/spendGem.json'),
        (s) => s.reply(200, <String, dynamic>{
          'result': '101',
          'reason': 'not_enough_gem',
        }),
);
      await expectLater(
        api.spendGem(userId: 'u', gem: 1000),
        throwsA(isA<ApiResultException>()
            .having((e) => e.reason, 'reason', 'not_enough_gem'),),
      );
    });
  });
}
