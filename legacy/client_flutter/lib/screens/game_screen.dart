import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../game/game_controller.dart';
import '../game/game_state.dart';
import '../game/game_view.dart';
import '../l10n/app_localizations.dart';
import '../state/auth.dart';
import '../state/lobby.dart';
import '../state/providers.dart';

/// 게임 화면 — HUD + GameView. `gameArgsProvider` 가 미리 채워져 있어야 함.
///
/// 진입: WaitingRoom 의 single-play 또는 BattleRoom 의 양측 ready 후.
/// 진출: 게임 종료 시 [_ResultDialog] 노출 → 결과 확인 후 `/lobby` 로.
class GameScreen extends ConsumerStatefulWidget {
  const GameScreen({super.key});

  @override
  ConsumerState<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends ConsumerState<GameScreen> {
  bool _resultShown = false;

  @override
  void initState() {
    super.initState();
    // 첫 프레임 후 시작 (provider 가 빌드된 후)
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) ref.read(gameControllerProvider.notifier).start();
    });
  }

  Future<void> _onEnd(GameResult result) async {
    if (_resultShown) return;
    _resultShown = true;
    final auth = ref.read(authControllerProvider);
    final user = auth.user;

    // 서버 결과 집계 — fire-and-forget. 응답 받기 전에도 로컬 점수로 결과 화면 노출.
    if (user != null) {
      try {
        await ref.read(gameApiProvider).mutiAddUp(
              userId: user.userId,
              level: user.level,
              score: result.selfScore,
              coin: result.coinReward,
              point: result.pointReward,
            );
      } catch (_) {/* 네트워크 실패해도 화면은 진행 */}
      // 분석 이벤트
      final state = ref.read(gameControllerProvider);
      ref.read(analyticsProvider).gameEnd(
            userId: user.userId,
            won: result.won,
            reason: result.reason.name,
            selfScore: result.selfScore,
            findNum: state.self.findNum,
            elapsedSeconds: state.elapsedSeconds,
          );
    }
    if (!mounted) return;
    context.go('/result', extra: result);
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(gameControllerProvider);
    ref.listen<GameState>(gameControllerProvider, (prev, next) {
      if (prev?.result == null && next.result != null) {
        unawaited(_onEnd(next.result!));
      }
    });
    final l = AppLocalizations.of(context);

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            _Hud(state: state),
            Expanded(
              child: GameView(
                state: state,
                onTap: (px) =>
                    ref.read(gameControllerProvider.notifier).onTap(px),
              ),
            ),
            _BottomBar(state: state, label: l.cancel, onLeave: _leave),
          ],
        ),
      ),
    );
  }

  void _leave() {
    final notifier = ref.read(gameControllerProvider.notifier);
    notifier.abort();
    // result listen 콜백이 _onEnd 를 트리거 — 별도 라우팅 불필요
    // 다만 abort 가 즉시 result 를 채우므로 _onEnd 가 한 번만 실행되도록 _resultShown 가드.
    // 멀티 모드라면 leaveRoom 도 송신
    final lobby = ref.read(lobbyControllerProvider);
    if (lobby.battleRoom != null) {
      ref.read(lobbyControllerProvider.notifier).leaveRoom();
    }
  }
}

class _Hud extends StatelessWidget {
  const _Hud({required this.state});

  final GameState state;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Container(
      color: scheme.surface,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Row(
        children: <Widget>[
          _PlayerStat(
            label: 'P1',
            findNum: state.self.findNum,
            combo: state.self.combo,
            hp: state.self.hp,
            maxHp: state.self.maxHp,
            color: Colors.green,
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Text(
                  state.timeRemaining.ceil().toString(),
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        color: state.timeRemaining < 10
                            ? scheme.error
                            : scheme.onSurface,
                        fontFeatures: const <FontFeature>[
                          FontFeature.tabularFigures(),
                        ],
                      ),
                ),
                LinearProgressIndicator(
                  value: state.timeRemaining / 40.0,
                  minHeight: 4,
                  color: scheme.primary,
                  backgroundColor: scheme.surfaceContainerHighest,
                ),
              ],
            ),
          ),
          _PlayerStat(
            label: state.opponentIsAi ? 'AI' : 'P2',
            findNum: state.opponent.findNum,
            combo: state.opponent.combo,
            hp: state.opponent.hp,
            maxHp: state.opponent.maxHp,
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}

class _PlayerStat extends StatelessWidget {
  const _PlayerStat({
    required this.label,
    required this.findNum,
    required this.combo,
    required this.hp,
    required this.maxHp,
    required this.color,
  });

  final String label;
  final int findNum;
  final int combo;
  final int hp;
  final int maxHp;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 84,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            label,
            style: TextStyle(color: color, fontWeight: FontWeight.bold),
          ),
          Text(
            '$findNum / 7',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          if (combo >= 1)
            Container(
              margin: const EdgeInsets.only(top: 2),
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 1),
              decoration: BoxDecoration(
                color: color.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'x$combo',
                style: TextStyle(color: color, fontWeight: FontWeight.bold),
              ),
            ),
          const SizedBox(height: 2),
          SizedBox(
            width: 60,
            child: LinearProgressIndicator(
              value: maxHp == 0 ? 0 : hp / maxHp,
              minHeight: 3,
              color: Colors.redAccent,
              backgroundColor: Colors.red.withValues(alpha: 0.2),
            ),
          ),
        ],
      ),
    );
  }
}

class _BottomBar extends StatelessWidget {
  const _BottomBar({
    required this.state,
    required this.label,
    required this.onLeave,
  });

  final GameState state;
  final String label;
  final VoidCallback onLeave;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surface,
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          TextButton.icon(
            onPressed: onLeave,
            icon: const Icon(Icons.exit_to_app),
            label: Text(label),
          ),
          // 공지/광고 메타가 있으면 가운데 표시 (광고문구 — adCaption)
          if ((state.image.adCaption ?? '').isNotEmpty)
            Expanded(
              child: Center(
                child: Text(
                  state.image.adCaption!,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

