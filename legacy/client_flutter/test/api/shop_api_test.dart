import 'package:findit/api/shop_api.dart';
import 'package:flutter_test/flutter_test.dart';

import '_helper.dart';

void main() {
  group('ShopApi', () {
    late TestApi t;
    late ShopApi api;

    setUp(() {
      t = TestApi.create();
      api = ShopApi(t.client);
    });

    test('buyItemAndSpendCoin returns coin/itemNo/quantity', () async {
      t.adapter.onPost(
        t.url('app/member/buyItemAndSpendCoin.json'),
        (s) => s.reply(200, <String, dynamic>{
          'result': '000',
          'coin': 850,
          'itemNo': 38,
          'quantity': 1,
        }),
      );
      final body = await api.buyItemAndSpendCoin(
        userId: 'u', itemNo: 38, coin: 50,
      );
      expect(body['coin'], 850);
      expect(body['quantity'], 1);
    });

    test('spendMyItem returns remaining quantity', () async {
      t.adapter.onPost(
        t.url('app/member/spendMyItem.json'),
        (s) => s.reply(200, <String, dynamic>{
          'result': '000',
          'itemNo': 41,
          'quantity': 0,
        }),
      );
      final body = await api.spendMyItem(userId: 'u', itemNo: 41);
      expect(body['quantity'], 0);
    });

    test('learnSkill validates prerequisites server-side', () async {
      t.adapter.onPost(
        t.url('app/member/learnSkill.json'),
        (s) => s.reply(200, <String, dynamic>{
          'result': '000',
          'skill': <dynamic>[
            <String, dynamic>{'skillId': 14},
            <String, dynamic>{'skillId': 15},
          ],
        }),
      );
      final body = await api.learnSkill(userId: 'u', skillId: 15);
      expect(body['skill'], hasLength(2));
    });

    test('upgradeItem returns success/cost/rate/newLevel', () async {
      t.adapter.onPost(
        t.url('app/member/upgradeItem.json'),
        (s) => s.reply(200, <String, dynamic>{
          'result': '000',
          'success': true,
          'cost': 200,
          'rate': 0.4,
          'newLevel': 3,
        }),
      );
      final body = await api.upgradeItem(
        userId: 'u', itemNo: 38, fluxUsed: 'flux',
      );
      expect(body['success'], true);
      expect(body['newLevel'], 3);
    });

    test('expandInventory returns size/cost', () async {
      t.adapter.onPost(
        t.url('app/member/expandInventory.json'),
        (s) => s.reply(200, <String, dynamic>{
          'result': '000',
          'inventorySize': 6,
          'cost': 50,
        }),
      );
      final body = await api.expandInventory(userId: 'u');
      expect(body['inventorySize'], 6);
    });

    test('expandSkillDeck returns deck count/cost', () async {
      t.adapter.onPost(
        t.url('app/member/expandSkillDeck.json'),
        (s) => s.reply(200, <String, dynamic>{
          'result': '000',
          'skillDeckCount': 2,
          'cost': 100,
        }),
      );
      final body = await api.expandSkillDeck(userId: 'u');
      expect(body['skillDeckCount'], 2);
    });
  });
}
