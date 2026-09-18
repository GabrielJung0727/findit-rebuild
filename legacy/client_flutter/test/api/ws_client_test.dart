import 'dart:async';
import 'dart:io';

import 'package:findit/api/ws_client.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('WsFrame.parse', () {
    test('valid pipe-delimited frame', () {
      final f = WsFrame.parse('|100|000|3|alice,0;bob,1');
      expect(f, isNotNull);
      expect(f!.code, '100');
      expect(f.args, <String>['000', '3', 'alice,0;bob,1']);
      expect(f.ok, true);
      expect(f.payload, <String>['3', 'alice,0;bob,1']);
    });

    test('non-OK result', () {
      final f = WsFrame.parse('|107|900|missing-user');
      expect(f, isNotNull);
      expect(f!.ok, false);
    });

    test('rejects empty / non-pipe input', () {
      expect(WsFrame.parse(''), isNull);
      expect(WsFrame.parse('100|000'), isNull);
    });
  });

  group('WsClient roundtrip', () {
    late HttpServer server;
    late WebSocket Function(WebSocket) onConnect;
    late int port;

    setUp(() async {
      server = await HttpServer.bind(InternetAddress.loopbackIPv4, 0);
      port = server.port;
      server.transform(WebSocketTransformer()).listen((ws) {
        onConnect(ws);
      });
    });

    tearDown(() async {
      await server.close(force: true);
    });

    test('connects, echoes frames, dispatches to messages stream', () async {
      onConnect = (ws) {
        ws.listen((msg) {
          // 100 USERLIST 요청을 받으면 csv 한 줄 회신
          if (msg is String && msg.startsWith('|100|')) {
            ws.add('|100|000|2|alice,0;bob,1|2|alice,0;bob,1');
          }
        });
        return ws;
      };

      final client = WsClient(url: Uri.parse('ws://127.0.0.1:$port/'));
      addTearDown(client.dispose);

      final received = <WsFrame>[];
      final sub = client.messages.listen(received.add);
      addTearDown(sub.cancel);

      await client.connect();
      expect(client.isConnected, true);

      client.send('100', <String>['alice@findit.com']);

      // 1초 안에 응답이 와야 함
      final done = Completer<void>();
      Timer(const Duration(milliseconds: 200), () {
        if (received.isNotEmpty) done.complete();
      });
      Timer(const Duration(seconds: 1), () {
        if (!done.isCompleted) done.complete();
      });
      await done.future;

      expect(received, isNotEmpty);
      expect(received.first.code, '100');
      expect(received.first.ok, true);
    });
  });
}
