import 'package:findit/api/game_api.dart';
import 'package:flutter_test/flutter_test.dart';

import '_helper.dart';

void main() {
  group('GameApi', () {
    late TestApi t;
    late GameApi api;

    setUp(() {
      t = TestApi.create();
      api = GameApi(t.client);
    });

    test('mutiAddUp returns updated user wallet', () async {
      t.adapter.onPost(
        t.url('app/member/mutiAddUp.json'),
        (s) => s.reply(200, <String, dynamic>{
          'result': '000',
          'user': <String, dynamic>{
            'userId': 'u',
            'level': 5,
            'score': 12345,
            'coin': 1000,
            'point': 5,
          },
        }),
      );
      final body = await api.mutiAddUp(
        userId: 'u', level: 5, score: 350, coin: 100, point: 1,
      );
      final user = body['user'] as Map<String, dynamic>;
      expect(user['score'], 12345);
    });

    test('rankList parses list (no result wrapper on this endpoint)', () async {
      t.adapter.onGet(
        t.url('app/member/rankList'),
        (s) => s.reply(200, <String, dynamic>{
          'list': <dynamic>[
            <String, dynamic>{
              'ranking': 1,
              'friendId': 'alice@findit.com',
              'sumpoint': 175710,
            },
          ],
        }),
      );
      final list = await api.rankList(userId: 'u');
      expect(list, hasLength(1));
      expect(list.first['ranking'], 1);
    });

    test('rankListFriends includes delta', () async {
      t.adapter.onGet(
        t.url('app/member/rankListFriends.json'),
        (s) => s.reply(200, <String, dynamic>{
          'result': '000',
          'list': <dynamic>[
            <String, dynamic>{
              'ranking': 1,
              'friendId': 'u',
              'userNick': 'me',
              'level': 30,
              'sumpoint': 839358,
              'delta': 2,
            },
          ],
        }),
      );
      final list = await api.rankListFriends(
        userId: 'u', fbFriends: <String>['fb1', 'fb2'],
      );
      expect(list.first['delta'], 2);
    });

    test('rankListTop returns top N', () async {
      t.adapter.onGet(
        t.url('app/member/rankListTop.json'),
        (s) => s.reply(200, <String, dynamic>{
          'result': '000',
          'list': <dynamic>[
            <String, dynamic>{'ranking': 1, 'friendId': 'top1'},
            <String, dynamic>{'ranking': 2, 'friendId': 'top2'},
          ],
        }),
      );
      final list = await api.rankListTop(limit: 2);
      expect(list, hasLength(2));
    });

    test('itemPurchaseHistList parses purchase records', () async {
      t.adapter.onGet(
        t.url('app/member/itemPurchaseHistList'),
        (s) => s.reply(200, <String, dynamic>{
          'list': <dynamic>[
            <String, dynamic>{
              'regDate': '2026-04-25 10:00',
              'itemName': 'item_38',
              'quantity': 1,
            },
          ],
        }),
      );
      final list = await api.itemPurchaseHistList(userId: 'u');
      expect(list.first['itemName'], 'item_38');
    });
  });
}
