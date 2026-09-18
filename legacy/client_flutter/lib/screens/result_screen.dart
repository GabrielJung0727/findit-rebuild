import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../game/game_state.dart';
import '../l10n/app_localizations.dart';
import '../state/auth.dart';
import '../util/legacy_theme.dart';
import '../util/legacy_widgets.dart';

/// 게임 종료 화면 — 승/패 + 획득 코인/포인트 + 레벨업 안내.
class ResultScreen extends ConsumerWidget {
  const ResultScreen({super.key, required this.result});

  final GameResult result;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = AppLocalizations.of(context);
    final auth = ref.watch(authControllerProvider);
    return Scaffold(
      body: LegacyBackground(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Spacer(),
              LegacyPopup(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Icon(
                      result.won ? Icons.emoji_events : Icons.favorite_border,
                      size: 80,
                      color: result.won
                          ? const Color(0xFFFFC93C)
                          : LegacyColors.border,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      result.won ? '🏆 WIN' : 'LOSE',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w900,
                        color: LegacyColors.textBrown,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      _reasonLabel(l, result.reason),
                      textAlign: TextAlign.center,
                      style: LegacyTextStyles.body,
                    ),
                    const SizedBox(height: 24),
                    _Row(label: 'Score', value: '${result.selfScore}'),
                    _Row(label: 'Opp.', value: '${result.opponentScore}'),
                    const Divider(color: LegacyColors.border, thickness: 0.5),
                    _Row(label: '+Coin', value: '${result.coinReward}'),
                    _Row(label: '+Point', value: '${result.pointReward}'),
                    if (auth.user != null) ...<Widget>[
                      const Divider(
                          color: LegacyColors.border, thickness: 0.5),
                      _Row(
                        label: 'Lv ${auth.user!.level}',
                        value: auth.user!.userNick,
                      ),
                    ],
                  ],
                ),
              ),
              const Spacer(),
              LegacyGradientButton(
                label: l.ok,
                onPressed: () => context.go('/lobby'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _reasonLabel(AppLocalizations l, GameEndReason r) {
    switch (r) {
      case GameEndReason.timeUp:
        return 'Time up';
      case GameEndReason.selfCleared:
        return '7 / 7';
      case GameEndReason.opponentCleared:
        return '${l.notice} — opponent cleared';
      case GameEndReason.opponentLeft:
        return l.noticeMsgNetworkerrorRelease;
      case GameEndReason.hpZero:
        return 'HP 0';
    }
  }
}

class _Row extends StatelessWidget {
  const _Row({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(label, style: LegacyTextStyles.body),
          Text(value,
              style: const TextStyle(
                color: LegacyColors.textBrown,
                fontSize: 16,
                fontWeight: FontWeight.w900,
              ),),
        ],
      ),
    );
  }
}
