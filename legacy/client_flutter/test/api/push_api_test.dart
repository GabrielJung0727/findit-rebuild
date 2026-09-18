import 'package:findit/api/push_api.dart';
import 'package:flutter_test/flutter_test.dart';

import '_helper.dart';

void main() {
  group('PushApi', () {
    late TestApi t;
    late PushApi api;

    setUp(() {
      t = TestApi.create();
      api = PushApi(t.client);
    });

    test('registerFcmToken posts token', () async {
      t.adapter.onPost(
        t.url('app/member/registerFcmToken.json'),
        (s) => s.reply(200, <String, dynamic>{'result': '000'}),
      );
      await api.registerFcmToken(userId: 'u', fcmToken: 'fcm-tok-xxx');
    });
  });
}
