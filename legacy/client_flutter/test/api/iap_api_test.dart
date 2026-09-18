import 'package:findit/api/api_client.dart';
import 'package:findit/api/iap_api.dart';
import 'package:flutter_test/flutter_test.dart';

import '_helper.dart';

void main() {
  group('IapApi', () {
    late TestApi t;
    late IapApi api;

    setUp(() {
      t = TestApi.create();
      api = IapApi(t.client);
    });

    test('verifyIap returns granted entitlement on success', () async {
      t.adapter.onPost(
        t.url('app/member/verifyIap.json'),
        (s) => s.reply(200, <String, dynamic>{
          'result': '000',
          'orderId': 'GPA.1234-5678',
          'granted': <String, dynamic>{'coin': 100, 'gem': 0},
          'coin': 110,
          'gem': 0,
        }),
      );
      final body = await api.verifyIap(
        userId: 'u',
        store: 'google',
        productId: 'coin_100',
        purchaseToken: 'tok-abc',
      );
      expect(body['orderId'], 'GPA.1234-5678');
      expect(body['coin'], 110);
    });

    test('verifyIap rethrows server-side verify failure', () async {
      t.adapter.onPost(
        t.url('app/member/verifyIap.json'),
        (s) => s.reply(200, <String, dynamic>{
          'result': '999',
          'error': 'receipt_invalid',
        }),
      );
      await expectLater(
        api.verifyIap(
          userId: 'u',
          store: 'google',
          productId: 'coin_100',
          purchaseToken: 'fake',
        ),
        throwsA(isA<ApiResultException>()
            .having((e) => e.error, 'error', 'receipt_invalid'),),
      );
    });
  });
}
