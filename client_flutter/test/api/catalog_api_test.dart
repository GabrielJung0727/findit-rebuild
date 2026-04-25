import 'package:findit/api/catalog_api.dart';
import 'package:flutter_test/flutter_test.dart';

import '_helper.dart';

void main() {
  group('CatalogApi', () {
    late TestApi t;
    late CatalogApi api;

    setUp(() {
      t = TestApi.create();
      api = CatalogApi(t.client);
    });

    test('skillCatalog parses list', () async {
      t.adapter.onGet(
        t.url('app/member/skillCatalog.json'),
        (s) => s.reply(200, <String, dynamic>{
          'result': '000',
          'list': <dynamic>[
            <String, dynamic>{
              'skillId': 14,
              'code': 'cats_claw_1',
              'nameKo': '고양이 발톱',
              'unlockLevel': 1,
              'pointCost': 0,
              'requiredSkillIds': <int>[],
              'attackDuration': 1.0,
            },
          ],
        }),
      );
      final list = await api.skillCatalog();
      expect(list, hasLength(1));
      expect(list.first['skillId'], 14);
      expect(list.first['nameKo'], '고양이 발톱');
    });

    test('levelTable returns 101 entries (0..100)', () async {
      final fakeList = <dynamic>[
        for (var lv = 0; lv <= 100; lv++)
          <String, dynamic>{
            'level': lv,
            'cumScore': lv * 5000,
            'attack': 0.5,
            'defense': 0.5,
            'hp': 110,
            'grade': 'A',
          },
      ];
      t.adapter.onGet(
        t.url('app/member/levelTable.json'),
        (s) => s.reply(200, <String, dynamic>{
          'result': '000',
          'list': fakeList,
        }),
      );
      final list = await api.levelTable();
      expect(list, hasLength(101));
      expect(list[100]['level'], 100);
    });
  });
}
