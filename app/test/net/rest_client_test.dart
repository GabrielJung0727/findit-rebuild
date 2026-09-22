import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:findit/net/rest_client.dart';

void main() {
  group('게스트 토큰', () {
    test('POST /auth/guest 의 토큰을 돌려준다', () async {
      late http.Request seen;
      final client = createRestClient(
        base: 'http://x',
        httpClient: MockClient((req) async {
          seen = req;
          return http.Response(jsonEncode({'token': 'g-1'}), 200);
        }),
      );

      expect(await client.guestToken(), 'g-1');
      expect(seen.method, 'POST');
      expect(seen.url.path, '/auth/guest');
    });

    test('200 이 아니면 던진다 — 조용히 빈 토큰을 쓰면 안 된다', () async {
      final client = createRestClient(
        base: 'http://x',
        httpClient: MockClient((_) async => http.Response('nope', 503)),
      );
      expect(client.guestToken(), throwsA(isA<RestException>()));
    });
  });

  group('매니페스트', () {
    test('버전과 퍼즐 메타를 읽는다', () async {
      final client = createRestClient(
        base: 'http://x',
        httpClient: MockClient((_) async => http.Response(
            jsonEncode({
              'version': 'v7',
              'puzzles': [
                {'id': 'a0001', 'width': 640, 'height': 720},
              ],
            }),
            200)),
      );

      final m = await client.manifest();
      expect(m.version, 'v7');
      expect(m.puzzles.single.id, 'a0001');
      expect(m.puzzles.single.width, 640);
    });

    test('두 번째 호출은 네트워크를 다시 때리지 않는다 — 캐시', () async {
      var calls = 0;
      final client = createRestClient(
        base: 'http://x',
        httpClient: MockClient((_) async {
          calls += 1;
          return http.Response(
              jsonEncode({'version': 'v7', 'puzzles': const []}), 200);
        }),
      );

      await client.manifest();
      await client.manifest();

      // 결과만 보면 캐시가 없어도 똑같다. 호출 수로만 잡힌다.
      expect(calls, 1);
    });

    test('좌표가 섞여 와도 모델에 들어가지 않는다 — 스펙 §6.3', () async {
      // 서버는 좌표를 싣지 않는다. 그래도 클라 모델이 그것을 받아 두면
      // 나중에 화면에 흘릴 길이 생긴다. 모델에 자리가 없어야 한다.
      final client = createRestClient(
        base: 'http://x',
        httpClient: MockClient((_) async => http.Response(
            jsonEncode({
              'version': 'v7',
              'puzzles': [
                {
                  'id': 'a0001', 'width': 640, 'height': 720,
                  'rects': [
                    {'x': 1, 'y': 2, 'w': 3, 'h': 4},
                  ],
                },
              ],
            }),
            200)),
      );

      final m = await client.manifest();
      expect(jsonEncode(m.puzzles.single.toJson()),
          jsonEncode({'id': 'a0001', 'width': 640, 'height': 720}));
    });
  });
}
