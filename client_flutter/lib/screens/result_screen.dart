import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../game/game_state.dart';
import '../l10n/app_localizations.dart';
import '../state/auth.dart';

/// 게임 종료 화면 — 승/패 + 획득 코인/포인트 + 레벨업 안내.
class ResultScreen extends ConsumerWidget {
  const ResultScreen({super.key, required this.result});

  final GameResult result;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = AppLocalizations.of(context);
    final auth = ref.watch(authControllerProvider);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Spacer(),
              Icon(
                result.won ? Icons.emoji_events : Icons.favorite_border,
                size: 96,
                color: result.won
                    ? Colors.amber
                    : Theme.of(context).colorScheme.outline,
              ),
              const SizedBox(height: 16),
              Text(
                result.won ? '🏆 WIN' : 'LOSE',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 4),
              Text(
                _reasonLabel(l, result.reason),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 32),
              _Row(label: 'Score', value: '${result.selfScore}'),
              _Row(label: 'Opp.', value: '${result.opponentScore}'),
              const Divider(),
              _Row(label: '+Coin', value: '${result.coinReward}'),
              _Row(label: '+Point', value: '${result.pointReward}'),
              if (result.leveledUp) ...<Widget>[
                const SizedBox(height: 12),
                _LevelUpBanner(
                  from: result.levelFrom!,
                  to: result.levelTo!,
                  pointAwarded: result.pointAwarded ?? 0,
                ),
              ],
              if (auth.user != null) ...<Widget>[
                const Divider(),
                _Row(
                  label: 'Lv ${auth.user!.level}',
                  value: auth.user!.userNick,
                ),
              ],
              const Spacer(),
              FilledButton(
                onPressed: () => context.go('/lobby'),
                child: Text(l.ok),
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

class _LevelUpBanner extends StatelessWidget {
  const _LevelUpBanner({
    required this.from,
    required this.to,
    required this.pointAwarded,
  });

  final int from;
  final int to;
  final int pointAwarded;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: scheme.tertiaryContainer,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.arrow_circle_up, color: scheme.onTertiaryContainer),
          const SizedBox(width: 8),
          Text(
            'LEVEL UP!  Lv $from → $to',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: scheme.onTertiaryContainer,
                  fontWeight: FontWeight.bold,
                ),
          ),
          if (pointAwarded > 0) ...<Widget>[
            const SizedBox(width: 8),
            Text(
              '+${pointAwarded}P',
              style: TextStyle(color: scheme.onTertiaryContainer),
            ),
          ],
        ],
      ),
    );
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
          Text(label, style: Theme.of(context).textTheme.bodyMedium),
          Text(value, style: Theme.of(context).textTheme.titleMedium),
        ],
      ),
    );
  }
}
