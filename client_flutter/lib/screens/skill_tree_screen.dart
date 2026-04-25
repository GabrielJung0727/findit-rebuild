import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../api/api_client.dart';
import '../l10n/app_localizations.dart';
import '../state/auth.dart';
import '../state/providers.dart';

/// 스킬트리 — 서버 `skillCatalog.json` 응답(44 entries) 을 group_code 별로 5계열 컬럼,
/// tier (1..9) 별로 행 배치. 화면 좌상단 → 우하단 흐름.
///
/// 각 셀 상태:
/// - learned: 이미 학습. 색칠 + 체크.
/// - learnable: level/point/선행 모두 만족. 강조 + 탭 가능.
/// - locked: 위 조건 미달. 회색.
class SkillTreeScreen extends ConsumerStatefulWidget {
  const SkillTreeScreen({super.key});

  @override
  ConsumerState<SkillTreeScreen> createState() => _SkillTreeScreenState();
}

class _SkillTreeScreenState extends ConsumerState<SkillTreeScreen> {
  Future<List<SkillNode>>? _future;

  @override
  void initState() {
    super.initState();
    _future = _loadCatalog();
  }

  Future<List<SkillNode>> _loadCatalog() async {
    final list = await ref.read(catalogApiProvider).skillCatalog();
    return list.map(SkillNode.fromJson).toList(growable: false);
  }

  Future<void> _learn(SkillNode n) async {
    final user = ref.read(authControllerProvider).user;
    if (user == null) return;
    final l = AppLocalizations.of(context);
    if (user.point < n.pointCost) {
      _toast(l.lackpoint);
      return;
    }
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l.learn),
        content: Text(l.learnskill),
        actions: <Widget>[
          TextButton(onPressed: () => Navigator.pop(ctx, false), child: Text(l.no)),
          FilledButton(onPressed: () => Navigator.pop(ctx, true), child: Text(l.yes)),
        ],
      ),
    );
    if (ok != true) return;
    try {
      await ref
          .read(shopApiProvider)
          .learnSkill(userId: user.userId, skillId: n.skillId);
      ref.read(authControllerProvider.notifier).applySkillLearned(n.skillId);
      ref
          .read(authControllerProvider.notifier)
          .applyWalletDelta(point: user.point - n.pointCost);
      ref.read(analyticsProvider).skillLearn(
            userId: user.userId,
            skillId: n.skillId,
          );
    } on ApiResultException catch (e) {
      _toast(e.reason ?? l.noticeMsgNetworkfail);
    } catch (_) {
      _toast(l.noticeMsgNetworkfail);
    }
  }

  void _toast(String msg) {
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final auth = ref.watch(authControllerProvider);
    return Scaffold(
      appBar: AppBar(title: Text(l.learn)),
      body: SafeArea(
        child: FutureBuilder<List<SkillNode>>(
          future: _future,
          builder: (ctx, snap) {
            if (snap.connectionState != ConnectionState.done) {
              return const Center(child: CircularProgressIndicator());
            }
            if (snap.hasError) {
              return Center(child: Text(l.noticeMsgNetworkfail));
            }
            final nodes = snap.data ?? const <SkillNode>[];
            return Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  color: Theme.of(context).colorScheme.surfaceContainerLow,
                  child: Row(children: <Widget>[
                    const Icon(Icons.toll, size: 16),
                    const SizedBox(width: 4),
                    Text('${auth.user?.point ?? 0}'),
                    const SizedBox(width: 16),
                    Text('Lv ${auth.user?.level ?? 0}'),
                  ],),
                ),
                Expanded(
                  child: _SkillGrid(
                    nodes: nodes,
                    learned: auth.skills,
                    userLevel: auth.user?.level ?? 0,
                    userPoint: auth.user?.point ?? 0,
                    onLearn: _learn,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

@immutable
class SkillNode {
  const SkillNode({
    required this.skillId,
    required this.code,
    required this.nameKo,
    required this.nameEn,
    required this.groupCode,
    required this.tier,
    required this.unlockLevel,
    required this.pointCost,
    required this.requiredSkillIds,
  });

  final int skillId;
  final String code;
  final String nameKo;
  final String nameEn;
  final String groupCode;
  final int tier;
  final int unlockLevel;
  final int pointCost;
  final List<int> requiredSkillIds;

  factory SkillNode.fromJson(Map<String, dynamic> j) {
    final raw = j['requiredSkillIds'];
    final req = raw is List
        ? raw.whereType<num>().map((n) => n.toInt()).toList(growable: false)
        : const <int>[];
    return SkillNode(
      skillId: (j['skillId'] as num).toInt(),
      code: j['code'] as String? ?? '',
      nameKo: j['nameKo'] as String? ?? '',
      nameEn: j['nameEn'] as String? ?? '',
      groupCode: j['groupCode'] as String? ?? '',
      tier: (j['tier'] as num?)?.toInt() ?? 0,
      unlockLevel: (j['unlockLevel'] as num?)?.toInt() ?? 0,
      pointCost: (j['pointCost'] as num?)?.toInt() ?? 0,
      requiredSkillIds: req,
    );
  }
}

class _SkillGrid extends StatelessWidget {
  const _SkillGrid({
    required this.nodes,
    required this.learned,
    required this.userLevel,
    required this.userPoint,
    required this.onLearn,
  });

  final List<SkillNode> nodes;
  final Set<int> learned;
  final int userLevel;
  final int userPoint;
  final Future<void> Function(SkillNode) onLearn;

  static const _groupOrder = <String>['cat', 'dog', 'exp', 'flame', 'snow'];
  static const _groupLabels = <String, String>{
    'cat': '🐱',
    'dog': '🐶',
    'exp': '💥',
    'flame': '🔥',
    'snow': '❄',
  };

  @override
  Widget build(BuildContext context) {
    // group_code 그룹핑
    final groups = <String, List<SkillNode>>{};
    for (final n in nodes) {
      groups.putIfAbsent(n.groupCode, () => <SkillNode>[]).add(n);
    }
    for (final list in groups.values) {
      list.sort((a, b) => a.tier.compareTo(b.tier));
    }
    final maxTier = groups.values
        .fold<int>(0, (acc, list) => list.isEmpty ? acc : (list.last.tier > acc ? list.last.tier : acc));

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                const SizedBox(width: 32),
                for (final g in _groupOrder)
                  Expanded(
                    child: Center(
                      child: Text(
                        _groupLabels[g] ?? g,
                        style: const TextStyle(fontSize: 24),
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 4),
            for (var t = 1; t <= maxTier; t++)
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 32,
                    child: Text('T$t', textAlign: TextAlign.center),
                  ),
                  for (final g in _groupOrder)
                    Expanded(
                      child: _cell(context, groups[g], t),
                    ),
                ],
              ),
          ],
        ),
      ),
    );
  }

  Widget _cell(BuildContext context, List<SkillNode>? list, int tier) {
    final node = list?.firstWhere((n) => n.tier == tier, orElse: _emptyNode);
    if (node == null || node.skillId == 0) return const SizedBox(height: 56);
    final isLearned = learned.contains(node.skillId);
    final levelOk = userLevel >= node.unlockLevel;
    final prereqOk = node.requiredSkillIds.every(learned.contains);
    final canLearn = !isLearned && levelOk && prereqOk;
    final scheme = Theme.of(context).colorScheme;
    final bg = isLearned
        ? scheme.primaryContainer
        : canLearn
            ? scheme.surfaceContainerHighest
            : scheme.surfaceContainer;
    final fg = isLearned ? scheme.onPrimaryContainer : scheme.onSurface;
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Material(
        color: bg,
        borderRadius: BorderRadius.circular(6),
        child: InkWell(
          onTap: canLearn ? () => onLearn(node) : null,
          borderRadius: BorderRadius.circular(6),
          child: Container(
            height: 56,
            padding: const EdgeInsets.all(4),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                if (isLearned)
                  Icon(Icons.check_circle, size: 14, color: fg)
                else if (!levelOk)
                  Icon(Icons.lock, size: 14, color: scheme.outline),
                Text(
                  '${node.tier}',
                  style: TextStyle(color: fg, fontWeight: FontWeight.bold),
                ),
                Text(
                  'L${node.unlockLevel}·${node.pointCost}p',
                  style: TextStyle(fontSize: 9, color: fg),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static SkillNode _emptyNode() => const SkillNode(
        skillId: 0,
        code: '',
        nameKo: '',
        nameEn: '',
        groupCode: '',
        tier: 0,
        unlockLevel: 0,
        pointCost: 0,
        requiredSkillIds: <int>[],
      );
}
