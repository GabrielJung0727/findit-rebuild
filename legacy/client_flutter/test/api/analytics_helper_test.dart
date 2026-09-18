import 'package:findit/api/analytics_api.dart';
import 'package:findit/api/analytics_helper.dart';
import 'package:flutter_test/flutter_test.dart';

import '_helper.dart';

void main() {
  group('AnalyticsHelper', () {
    late TestApi t;
    late AnalyticsHelper helper;

    setUp(() {
      t = TestApi.create();
      helper = AnalyticsHelper(AnalyticsApi(t.client));
    });

    test('sessionId is stable + non-empty', () {
      final id1 = helper.sessionId;
      final id2 = helper.sessionId;
      expect(id1, isNotEmpty);
      expect(id1, id2);
      // 다른 인스턴스면 다른 sessionId
      final h2 = AnalyticsHelper(AnalyticsApi(t.client));
      expect(h2.sessionId, isNot(id1));
    });

    test('loginSuccess fires event.json POST', () async {
      var hit = false;
      t.adapter.onPost(
        t.url('app/member/event.json'),
        (s) {
          hit = true;
          return s.reply(200, <String, dynamic>{'result': '000'});
        },
      );
      helper.loginSuccess(userId: 'u', authType: 'email');
      // fire-and-forget — wait one event-loop turn
      await Future<void>.delayed(const Duration(milliseconds: 50));
      expect(hit, true);
    });

    test('gameEnd fire-and-forget swallows server error', () async {
      t.adapter.onPost(
        t.url('app/member/event.json'),
        (s) => s.reply(500, <String, dynamic>{'result': '999'}),
      );
      // No throw — silent
      helper.gameEnd(
        userId: 'u',
        won: true,
        reason: 'selfCleared',
        selfScore: 700,
        findNum: 7,
        elapsedSeconds: 32.5,
      );
      await Future<void>.delayed(const Duration(milliseconds: 50));
    });

    test('purchaseIap + skillLearn + adReward + custom all callable', () async {
      t.adapter.onPost(
        t.url('app/member/event.json'),
        (s) => s.reply(200, <String, dynamic>{'result': '000'}),
      );
      helper.purchaseIap(
        userId: 'u', store: 'apple', productId: 'coin_500',
        coinReward: 500, gemReward: 0,
      );
      helper.skillLearn(userId: 'u', skillId: 14);
      helper.adReward(userId: 'u', adId: 1, coin: 5);
      helper.custom(userId: 'u', name: 'tutorial_done');
      await Future<void>.delayed(const Duration(milliseconds: 50));
    });
  });
}
