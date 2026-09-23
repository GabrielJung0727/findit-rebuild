import 'dart:async';

import 'package:flutter/material.dart';

import 'core/config.dart';
import 'domain/match_state.dart';
import 'features/battle/battle_page.dart';
import 'features/battle/battle_scene.dart';
import 'features/result/result_page.dart';
import 'net/socket.dart';
import 'net/ws_client.dart';

class FindItApp extends StatefulWidget {
  final Future<String> Function() guestToken;
  final SocketFactory connect;
  final ImageLoader loadImage;

  const FindItApp({
    super.key,
    required this.guestToken,
    required this.connect,
    required this.loadImage,
  });

  @override
  State<FindItApp> createState() => _FindItAppState();
}

class _FindItAppState extends State<FindItApp> {
  WsClient? _ws;
  MatchState _state = MatchState.initial();

  @override
  void initState() {
    super.initState();
    unawaited(_start());
  }

  Future<void> _start() async {
    final token = await widget.guestToken();
    final ws = WsClient(
      url: Uri.parse('${AppConfig.wsBase}/'),
      token: token,
      connect: widget.connect,
    );
    _ws = ws;
    ws.states.listen(_onState);
    await ws.connect();
    // Plan 6 이 로비를 넣기 전까지는 곧장 큐로 간다.
    ws.joinQueue();
  }

  void _onState(MatchState next) {
    final before = _state;
    setState(() => _state = next);

    // 매칭되면 바로 준비한다. 대기실 화면은 Plan 6 이다.
    if (before.phase != MatchPhase.matched &&
        next.phase == MatchPhase.matched) {
      _ws?.ready();
    }

    // 재연결로 idle 에 돌아오면 다시 큐에 들어간다. 소켓이 끊기면 서버가
    // 그 매치를 끝내므로 클라도 로비로 돌아오는데, 이 슬라이스에는 로비가
    // 없어서 그대로 두면 스피너에 갇힌다. Plan 6 이 로비를 넣으면 그 화면의
    // "매칭 시작" 이 이 자리를 대신한다.
    if (before.phase != MatchPhase.idle && next.phase == MatchPhase.idle) {
      _ws?.joinQueue();
    }
  }

  @override
  void dispose() {
    unawaited(_ws?.dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'FindIt',
        theme: ThemeData(useMaterial3: true, brightness: Brightness.dark),
        home: switch (_state.phase) {
          MatchPhase.ended => ResultPage(
              result: _state.result!,
              onAgain: () => _ws?.joinQueue(),
            ),
          MatchPhase.playing || MatchPhase.countdown => BattlePage(
              state: _state,
              loadImage: widget.loadImage,
              onTap: (x, y) => _ws?.tap(x, y),
            ),
          _ => const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            ),
        },
      );
}
