import 'package:findit/api/content_api.dart';
import 'package:flutter_test/flutter_test.dart';

import '_helper.dart';

void main() {
  group('ContentApi', () {
    late TestApi t;
    late ContentApi api;

    setUp(() {
      t = TestApi.create();
      api = ContentApi(t.client);
    });

    test('newImageList parses image rows with imageCut', () async {
      t.adapter.onGet(
        t.url('app/member/newImageList.json'),
        (s) => s.reply(200, <String, dynamic>{
          'result': '000',
          'list': <dynamic>[
            <String, dynamic>{
              'imgId': 1,
              'img': 'market001.png',
              'xSize': 640,
              'ySize': 720,
              'imageCut': '[{"x":195,"y":66,"w":100,"h":100}]',
              'adCaption': '위급상황시 동영상촬영',
            },
          ],
        }),
      );
      final list = await api.newImageList();
      expect(list, hasLength(1));
      expect(list.first['xSize'], 640);
      expect(list.first['adCaption'], '위급상황시 동영상촬영');
    });

    test('newAdImageList parses ad rows', () async {
      t.adapter.onGet(
        t.url('app/member/newAdImageList.json'),
        (s) => s.reply(200, <String, dynamic>{
          'result': '000',
          'list': <dynamic>[
            <String, dynamic>{
              'adId': 1,
              'adImage': 'https://cdn/ad.png',
              'adName': '테스트 광고',
              'adUrl': 'https://example.com',
            },
          ],
        }),
      );
      final list = await api.newAdImageList();
      expect(list.first['adName'], '테스트 광고');
    });

    test('noticeHtml returns raw HTML string', () async {
      t.adapter.onGet(
        t.url('app/member/notice.json'),
        (s) => s.reply(
          200,
          '<html><body><h1>공지사항</h1></body></html>',
          headers: <String, List<String>>{
            'content-type': <String>['text/html; charset=utf-8'],
          },
        ),
      );
      final html = await api.noticeHtml();
      expect(html, contains('공지사항'));
    });
  });
}
