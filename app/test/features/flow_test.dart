import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:findit/app.dart';
import 'package:findit/net/socket.dart';

class ScriptedSocket implements Socket {
  final _in = StreamController<String>.broadcast();
  final List<String> sent = [];
  @override
  Stream<String> get incoming => _in.stream;
  @override
  void send(String raw) => sent.add(raw);
  @override
  Future<void> close() async => _in.close();
  void push(String t, Map<String, dynamic> d) =>
      _in.add(jsonEncode({'t': t, 'seq': 1, 'd': d}));
  List<String> get types =>
      [for (final s in sent) (jsonDecode(s) as Map<String, dynamic>)['t'] as String];
}

void main() {
  testWidgets('앱이 뜨면 게스트 토큰을 받아 곧장 큐에 들어간다', (tester) async {
    final socket = ScriptedSocket();
    await tester.pumpWidget(FindItApp(
      guestToken: () async => 'g-1',
      connect: (_) async => socket,
      loadImage: (_) async => throw UnimplementedError(),
    ));
    await tester.pump();
    await tester.pump();

    expect(socket.types, ['AUTH', 'QUEUE_JOIN']);
  });

  testWidgets('MATCH_FOUND 를 받으면 READY 를 보낸다', (tester) async {
    final socket = ScriptedSocket();
    await tester.pumpWidget(FindItApp(
      guestToken: () async => 'g-1',
      connect: (_) async => socket,
      loadImage: (_) async => throw UnimplementedError(),
    ));
    await tester.pump();
    await tester.pump();

    socket.push('MATCH_FOUND', {
      'matchId': 'm1', 'opponentName': 'AI', 'opponentLevel': 1, 'isAi': true,
    });
    await tester.pump();
    await tester.pump();

    expect(socket.types.last, 'READY');
  });

  testWidgets('END 를 받으면 결과 화면이 서버 값을 그대로 보여준다', (tester) async {
    final socket = ScriptedSocket();
    await tester.pumpWidget(FindItApp(
      guestToken: () async => 'g-1',
      connect: (_) async => socket,
      loadImage: (_) async => throw UnimplementedError(),
    ));
    await tester.pump();
    await tester.pump();

    socket.push('END', {
      'result': 'win', 'myFound': 3, 'opponentFound': 2,
      'score': 700, 'coinDelta': 5, 'expDelta': 30,
    });
    await tester.pump();
    await tester.pump();

    // 클라가 다시 계산하면 여기가 어긋난다.
    expect(find.text('700'), findsOneWidget);
    expect(find.text('5'), findsOneWidget);
  });

  testWidgets('결과에서 다시 하기를 누르면 큐에 다시 들어간다', (tester) async {
    final socket = ScriptedSocket();
    await tester.pumpWidget(FindItApp(
      guestToken: () async => 'g-1',
      connect: (_) async => socket,
      loadImage: (_) async => throw UnimplementedError(),
    ));
    await tester.pump();
    await tester.pump();
    socket.push('END', {
      'result': 'lose', 'myFound': 0, 'opponentFound': 5,
      'score': 0, 'coinDelta': 0, 'expDelta': 0,
    });
    await tester.pump();
    await tester.pump();

    await tester.tap(find.byKey(const Key('again')));
    await tester.pump();

    expect(socket.types.last, 'QUEUE_JOIN');
  });
}
