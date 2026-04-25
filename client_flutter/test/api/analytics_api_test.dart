import 'package:findit/api/analytics_api.dart';
import 'package:findit/api/api_client.dart';
import 'package:flutter_test/flutter_test.dart';

import '_helper.dart';

void main() {
  group('AnalyticsApi', () {
    late TestApi t;
    late AnalyticsApi api;

    setUp(() {
      t = TestApi.create();
      api = AnalyticsApi(t.client);
    });

    test('event fire-and-forget', () async {
      t.adapter.onPost(
        t.url('app/member/event.json'),
        (s) => s.reply(200, <String, dynamic>{'result': '000'}),
      );
      await api.event(
        userId: 'u',
        eventName: 'game_start',
        payload: <String, dynamic>{'level': 5},
      );
    });

    test('adReward returns coinReward + new coin', () async {
      t.adapter.onPost(
        t.url('app/member/adReward.json'),
        (s) => s.reply(200, <String, dynamic>{
          'result': '000',
          'coinReward': 5,
          'coin': 1005,
        }),
      );
      final body = await api.adReward(userId: 'u', adId: 1);
      expect(body['coinReward'], 5);
      expect(body['coin'], 1005);
    });

    test('adReward throws when daily cap reached', () async {
      t.adapter.onPost(
        t.url('app/member/adReward.json'),
        (s) => s.reply(200, <String, dynamic>{
          'result': '101',
          'reason': 'daily_cap_reached',
          'cap': 20,
        }),
      );
      await expectLater(
        api.adReward(userId: 'u', adId: 1),
        throwsA(isA<ApiResultException>()
            .having((e) => e.reason, 'reason', 'daily_cap_reached'),),
      );
    });

    test('adClick / hitViewCount fire-and-forget', () async {
      t.adapter
        ..onPost(
          t.url('app/member/adClick.json'),
          (s) => s.reply(200, <String, dynamic>{'result': '000'}),
        )
        ..onPost(
          t.url('app/member/hitViewCount.json'),
          (s) => s.reply(200, <String, dynamic>{'result': '000'}),
        );
      await api.adClick(adId: 1);
      await api.hitViewCount(adId: 1);
    });
  });
}
