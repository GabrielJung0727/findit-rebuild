import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../l10n/app_localizations.dart';
import '../state/auth.dart';
import '../state/providers.dart';

/// 랭킹 — 친구 / 전체 토글 + 어제 대비 delta.
///
/// - 친구: `rankListFriends.json?fbFriends=<csv>` — Facebook UID 미연동 시 본인만 표시.
/// - 전체: `rankListTop.json?limit=50`.
///
/// 일/주 토글은 안드 원본 UI 대비 placeholder. 서버는 현재 일일 snapshot 만 지원
/// (`rankings.period='daily'`); 주간은 후속 (cron 으로 weekly snapshot 생성).
class RankScreen extends ConsumerStatefulWidget {
  const RankScreen({super.key});

  @override
  ConsumerState<RankScreen> createState() => _RankScreenState();
}

class _RankScreenState extends ConsumerState<RankScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tab;
  Future<List<Map<String, dynamic>>>? _topFuture;
  Future<List<Map<String, dynamic>>>? _friendsFuture;

  @override
  void initState() {
    super.initState();
    _tab = TabController(length: 2, vsync: this);
    _topFuture = ref.read(gameApiProvider).rankListTop();
    final user = ref.read(authControllerProvider).user;
    if (user != null) {
      _friendsFuture = ref
          .read(gameApiProvider)
          .rankListFriends(userId: user.userId, fbFriends: const <String>[]);
    }
  }

  @override
  void dispose() {
    _tab.dispose();
    super.dispose();
  }

  Future<void> _refreshTop() async {
    setState(() {
      _topFuture = ref.read(gameApiProvider).rankListTop();
    });
    await _topFuture;
  }

  Future<void> _refreshFriends() async {
    final user = ref.read(authControllerProvider).user;
    if (user == null) return;
    setState(() {
      _friendsFuture = ref.read(gameApiProvider).rankListFriends(
            userId: user.userId,
            fbFriends: const <String>[],
          );
    });
    await _friendsFuture;
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final auth = ref.watch(authControllerProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(l.notice),
        bottom: TabBar(
          controller: _tab,
          tabs: <Tab>[
            Tab(text: l.list),
            Tab(text: l.friendid),
          ],
        ),
      ),
      body: SafeArea(
        child: TabBarView(
          controller: _tab,
          children: <Widget>[
            _RankList(
              future: _topFuture,
              onRefresh: _refreshTop,
              currentUserId: auth.user?.userId,
            ),
            _RankList(
              future: _friendsFuture,
              onRefresh: _refreshFriends,
              currentUserId: auth.user?.userId,
              showDelta: true,
              emptyHint: l.noticeMsgNotUsers,
            ),
          ],
        ),
      ),
    );
  }
}

class _RankList extends StatelessWidget {
  const _RankList({
    required this.future,
    required this.onRefresh,
    required this.currentUserId,
    this.showDelta = false,
    this.emptyHint,
  });

  final Future<List<Map<String, dynamic>>>? future;
  final Future<void> Function() onRefresh;
  final String? currentUserId;
  final bool showDelta;
  final String? emptyHint;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    return RefreshIndicator(
      onRefresh: onRefresh,
      child: FutureBuilder<List<Map<String, dynamic>>>(
        future: future,
        builder: (ctx, snap) {
          if (snap.connectionState != ConnectionState.done) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snap.hasError) {
            return ListView(children: <Widget>[
              const SizedBox(height: 80),
              Center(child: Text(l.noticeMsgNetworkfail)),
            ],);
          }
          final list = snap.data ?? const <Map<String, dynamic>>[];
          if (list.isEmpty) {
            return ListView(children: <Widget>[
              const SizedBox(height: 80),
              Center(child: Text(emptyHint ?? l.noticeMsgNotUsers)),
            ],);
          }
          return _Header(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(vertical: 8),
              itemCount: list.length,
              separatorBuilder: (_, __) => const Divider(height: 1),
              itemBuilder: (ctx, i) => _Row(
                row: list[i],
                isMe: list[i]['friendId'] == currentUserId,
                showDelta: showDelta,
              ),
            ),
          );
        },
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    return Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          color: Theme.of(context).colorScheme.surfaceContainerLow,
          child: Row(
            children: <Widget>[
              SizedBox(width: 40, child: Text(l.rank)),
              Expanded(child: Text(l.id)),
              Text(l.score),
            ],
          ),
        ),
        Expanded(child: child),
      ],
    );
  }
}

class _Row extends StatelessWidget {
  const _Row({
    required this.row,
    required this.isMe,
    required this.showDelta,
  });

  final Map<String, dynamic> row;
  final bool isMe;
  final bool showDelta;

  @override
  Widget build(BuildContext context) {
    final ranking = (row['ranking'] as num?)?.toInt() ?? 0;
    final friendId = row['friendId'] as String? ?? '';
    final nick = row['userNick'] as String? ?? friendId;
    final score = (row['sumpoint'] as num?)?.toInt() ?? 0;
    final delta = (row['delta'] as num?)?.toInt() ?? 0;
    final scheme = Theme.of(context).colorScheme;
    return Container(
      color: isMe ? scheme.primaryContainer.withValues(alpha: 0.3) : null,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 40,
            child: Text(
              '$ranking',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Expanded(
            child: Text(
              nick,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: isMe ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
          if (showDelta && delta != 0)
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Row(
                children: <Widget>[
                  Icon(
                    delta > 0 ? Icons.arrow_upward : Icons.arrow_downward,
                    size: 14,
                    color: delta > 0 ? Colors.green : Colors.red,
                  ),
                  Text(
                    '${delta.abs()}',
                    style: TextStyle(
                      color: delta > 0 ? Colors.green : Colors.red,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          Text('$score'),
        ],
      ),
    );
  }
}
