import 'package:flutter/material.dart';

import '../../domain/match_state.dart';
import '../../ui/legacy/legacy_bitmap.dart';

class ResultPage extends StatelessWidget {
  final MatchResult result;
  final VoidCallback onAgain;

  const ResultPage({super.key, required this.result, required this.onAgain});

  @override
  Widget build(BuildContext context) {
    final won = result.result == 'win';
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            LegacyBitmap(won ? 'game_result_win' : 'game_result_lose'),
            const SizedBox(height: 24),
            // 서버가 계산한 값을 그대로 보여준다. 다시 세면 어긋난다.
            Text('${result.score}',
                style: const TextStyle(color: Colors.white, fontSize: 32)),
            Text('${result.coinDelta}',
                style: const TextStyle(color: Colors.amber, fontSize: 24)),
            const SizedBox(height: 32),
            TextButton(
              key: const Key('again'),
              onPressed: onAgain,
              child: const Text('다시 하기'),
            ),
          ],
        ),
      ),
    );
  }
}
