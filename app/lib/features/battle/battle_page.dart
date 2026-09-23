import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import '../../domain/match_state.dart';
import 'battle_scene.dart';

class BattlePage extends StatefulWidget {
  final MatchState state;
  final ImageLoader loadImage;
  final void Function(int x, int y) onTap;

  const BattlePage({
    super.key,
    required this.state,
    required this.loadImage,
    required this.onTap,
  });

  @override
  State<BattlePage> createState() => _BattlePageState();
}

class _BattlePageState extends State<BattlePage> {
  late final BattleScene _scene =
      BattleScene(loadImage: widget.loadImage, onTapImage: widget.onTap);

  @override
  void initState() {
    super.initState();
    _scene.apply(widget.state);
  }

  @override
  void didUpdateWidget(BattlePage old) {
    super.didUpdateWidget(old);
    _scene.apply(widget.state);
  }

  @override
  Widget build(BuildContext context) {
    final s = widget.state;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(child: GameWidget(game: _scene)),
          Positioned(
            top: 48,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // 찾은 개수는 서버가 보낸 것만 센다.
                Text('${s.myFound} / ${s.targetCount}',
                    style: const TextStyle(color: Colors.white, fontSize: 20)),
                Text('상대 ${s.opponentFound}',
                    style: const TextStyle(color: Colors.white70, fontSize: 20)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
