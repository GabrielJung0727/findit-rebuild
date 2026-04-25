import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../l10n/app_localizations.dart';
import '../state/auth.dart';

/// 로그인 후 랜딩 — W2 §6 대기실 화면 들어오면 교체될 placeholder.
/// 현재는 닉네임 + 코인/포인트/보석 + 로그아웃 버튼만.
class LobbyScreen extends ConsumerWidget {
  const LobbyScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = AppLocalizations.of(context);
    final auth = ref.watch(authControllerProvider);
    final user = auth.user;

    return Scaffold(
      appBar: AppBar(
        title: Text(l.waitingroom),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: l.cancel,
            onPressed: () => ref.read(authControllerProvider.notifier).logout(),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                Icons.account_circle,
                size: 96,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(height: 16),
              Text(
                user?.userNick ?? '',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Text(
                user?.userId ?? '',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(height: 24),
              _StatRow(label: 'Lv', value: '${user?.level ?? 0}'),
              _StatRow(label: 'Score', value: '${user?.score ?? 0}'),
              _StatRow(label: 'Coin', value: '${user?.coin ?? 0}'),
              _StatRow(label: 'Point', value: '${user?.point ?? 0}'),
              _StatRow(label: 'Gem', value: '${user?.gem ?? 0}'),
              _StatRow(label: 'HP', value: '${user?.hp ?? 0}'),
              const SizedBox(height: 24),
              FilledButton.icon(
                icon: const Icon(Icons.gamepad),
                onPressed: () => context.go('/waiting'),
                label: Text(l.startgame),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _StatRow extends StatelessWidget {
  const _StatRow({required this.label, required this.value});
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
