import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../api/api_client.dart';
import '../game/item_catalog.dart';
import '../l10n/app_localizations.dart';
import '../state/auth.dart';
import '../state/providers.dart';

/// 보유 아이템 화면 — 6 카테고리 탭, 그리드 표시, 사용/강화/버리기.
///
/// `expandInventory` 단계 (3..30) 로 표시 칸 수 결정. 빈 칸은 회색 placeholder.
class InventoryScreen extends ConsumerStatefulWidget {
  const InventoryScreen({super.key});

  @override
  ConsumerState<InventoryScreen> createState() => _InventoryScreenState();
}

class _InventoryScreenState extends ConsumerState<InventoryScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tab;

  @override
  void initState() {
    super.initState();
    _tab = TabController(length: ItemType.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tab.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final auth = ref.watch(authControllerProvider);
    final user = auth.user;
    if (user == null) return const SizedBox.shrink();

    return Scaffold(
      appBar: AppBar(
        title: Text(l.item),
        bottom: TabBar(
          controller: _tab,
          isScrollable: true,
          tabs: ItemType.values
              .map((t) => Tab(text: t.serverName))
              .toList(growable: false),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            _WalletBar(user: user, deck: auth.skillDeckCount),
            Expanded(
              child: TabBarView(
                controller: _tab,
                children: ItemType.values
                    .map((t) => _CategoryGrid(
                          type: t,
                          items: auth.items,
                          inventorySize: auth.inventorySize,
                          onUse: _useItem,
                          onUpgrade: _upgradeItem,
                        ),)
                    .toList(growable: false),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: OutlinedButton.icon(
                      icon: const Icon(Icons.add_box_outlined),
                      onPressed: auth.inventorySize >= 30 ? null : _expandInventory,
                      label: Text(
                        '${l.identifyOverlap} (${auth.inventorySize}/30)',
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: OutlinedButton.icon(
                      icon: const Icon(Icons.style),
                      onPressed: auth.skillDeckCount >= 4 ? null : _expandSkillDeck,
                      label: Text('Deck (${auth.skillDeckCount}/4)'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _useItem(InventoryItem it) async {
    final user = ref.read(authControllerProvider).user;
    if (user == null) return;
    final fail = AppLocalizations.of(context).noticeMsgNetworkfail;
    try {
      final body = await ref.read(shopApiProvider).spendMyItem(
            userId: user.userId,
            itemNo: it.itemNo,
          );
      ref.read(authControllerProvider.notifier).applyInventoryDelta(
            itemNo: it.itemNo,
            newQuantity: (body['quantity'] as num?)?.toInt() ?? 0,
            itemType: it.itemType,
          );
    } on ApiResultException catch (_) {
      _toast(fail);
    } catch (_) {
      _toast(fail);
    }
  }

  Future<void> _upgradeItem(InventoryItem it) async {
    final flux = await showDialog<String>(
      context: context,
      builder: (ctx) => const _FluxPickerDialog(),
    );
    if (flux == null) return;
    final user = ref.read(authControllerProvider).user;
    if (user == null || !mounted) return;
    final fail = AppLocalizations.of(context).noticeMsgNetworkfail;
    try {
      final body = await ref.read(shopApiProvider).upgradeItem(
            userId: user.userId,
            itemNo: it.itemNo,
            fluxUsed: flux,
          );
      final success = body['success'] == true;
      final cost = (body['cost'] as num?)?.toInt() ?? 0;
      final newLv = (body['newLevel'] as num?)?.toInt() ?? it.upgradeLevel;
      ref
          .read(authControllerProvider.notifier)
          .applyWalletDelta(coin: user.coin - cost);
      ref.read(authControllerProvider.notifier).applyInventoryDelta(
            itemNo: it.itemNo,
            newQuantity: it.quantity,
            itemType: it.itemType,
            upgradeLevel: newLv,
          );
      _toast(success ? '+1' : 'X');
    } on ApiResultException catch (e) {
      _toast(e.reason ?? fail);
    } catch (_) {
      _toast(fail);
    }
  }

  Future<void> _expandInventory() async {
    final user = ref.read(authControllerProvider).user;
    if (user == null) return;
    final fail = AppLocalizations.of(context).noticeMsgNetworkfail;
    try {
      final body = await ref.read(shopApiProvider).expandInventory(userId: user.userId);
      final size = (body['inventorySize'] as num?)?.toInt();
      final cost = (body['cost'] as num?)?.toInt() ?? 0;
      if (size != null) {
        ref.read(authControllerProvider.notifier).applySizeDelta(inventorySize: size);
      }
      ref.read(authControllerProvider.notifier).applyWalletDelta(coin: user.coin - cost);
    } on ApiResultException catch (e) {
      _toast(e.reason ?? fail);
    } catch (_) {
      _toast(fail);
    }
  }

  Future<void> _expandSkillDeck() async {
    final user = ref.read(authControllerProvider).user;
    if (user == null) return;
    final fail = AppLocalizations.of(context).noticeMsgNetworkfail;
    try {
      final body = await ref.read(shopApiProvider).expandSkillDeck(userId: user.userId);
      final deck = (body['skillDeckCount'] as num?)?.toInt();
      final cost = (body['cost'] as num?)?.toInt() ?? 0;
      if (deck != null) {
        ref.read(authControllerProvider.notifier).applySizeDelta(skillDeckCount: deck);
      }
      ref.read(authControllerProvider.notifier).applyWalletDelta(coin: user.coin - cost);
    } on ApiResultException catch (e) {
      _toast(e.reason ?? fail);
    } catch (_) {
      _toast(fail);
    }
  }

  void _toast(String msg) {
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }
}

class _WalletBar extends StatelessWidget {
  const _WalletBar({required this.user, required this.deck});

  final AuthUser user;
  final int deck;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surfaceContainerLow,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: <Widget>[
          _Chip(icon: Icons.monetization_on, label: '${user.coin}'),
          const SizedBox(width: 8),
          _Chip(icon: Icons.toll, label: '${user.point}'),
          const SizedBox(width: 8),
          _Chip(icon: Icons.diamond, label: '${user.gem}'),
          const Spacer(),
          Text('Lv ${user.level}'),
        ],
      ),
    );
  }
}

class _Chip extends StatelessWidget {
  const _Chip({required this.icon, required this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainer,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
        Icon(icon, size: 16),
        const SizedBox(width: 4),
        Text(label),
      ],),
    );
  }
}

class _CategoryGrid extends StatelessWidget {
  const _CategoryGrid({
    required this.type,
    required this.items,
    required this.inventorySize,
    required this.onUse,
    required this.onUpgrade,
  });

  final ItemType type;
  final List<InventoryItem> items;
  final int inventorySize;
  final Future<void> Function(InventoryItem) onUse;
  final Future<void> Function(InventoryItem) onUpgrade;

  @override
  Widget build(BuildContext context) {
    final categoryItems =
        items.where((it) => it.itemType == type.serverName).toList();
    // 빈 슬롯 채우기 — 카테고리 별로 inventorySize 만큼 펼침 (단순화: 카테고리 내에서만)
    final cells = <Widget>[
      for (final it in categoryItems) _ItemCell(item: it, onUse: onUse, onUpgrade: onUpgrade),
      for (var i = categoryItems.length; i < inventorySize; i++)
        const _EmptySlot(),
    ];
    return GridView.count(
      crossAxisCount: 4,
      padding: const EdgeInsets.all(8),
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      childAspectRatio: 0.85,
      children: cells,
    );
  }
}

class _ItemCell extends StatelessWidget {
  const _ItemCell({
    required this.item,
    required this.onUse,
    required this.onUpgrade,
  });

  final InventoryItem item;
  final Future<void> Function(InventoryItem) onUse;
  final Future<void> Function(InventoryItem) onUpgrade;

  @override
  Widget build(BuildContext context) {
    final cat = ItemCatalog.findByTypeNo(item.itemNo);
    return Material(
      color: Theme.of(context).colorScheme.surfaceContainer,
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        onTap: () => _showSheet(context),
        borderRadius: BorderRadius.circular(8),
        child: Padding(
          padding: const EdgeInsets.all(6),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(_iconFor(item.itemType), size: 28),
              const SizedBox(height: 4),
              Text('#${item.itemNo}', style: Theme.of(context).textTheme.labelSmall),
              Text(
                'x${item.quantity}',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              if (item.upgradeLevel > 0)
                Text(
                  '+${item.upgradeLevel}',
                  style: TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
              if (cat != null)
                Text(
                  '${cat.effectSeconds().toStringAsFixed(1)}s',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
            ],
          ),
        ),
      ),
    );
  }

  void _showSheet(BuildContext context) {
    final l = AppLocalizations.of(context);
    showModalBottomSheet<void>(
      context: context,
      builder: (ctx) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: const Icon(Icons.flash_on),
              title: Text(l.deleteitem),
              onTap: () {
                Navigator.pop(ctx);
                onUse(item);
              },
            ),
            ListTile(
              leading: const Icon(Icons.upgrade),
              title: Text('${item.upgradeLevel} → ${item.upgradeLevel + 1}'),
              enabled: item.upgradeLevel < 9,
              onTap: () {
                Navigator.pop(ctx);
                onUpgrade(item);
              },
            ),
          ],
        ),
      ),
    );
  }

  IconData _iconFor(String type) {
    switch (type) {
      case 'PEN': return Icons.edit;
      case 'RING': return Icons.circle_outlined;
      case 'BERRY': return Icons.bubble_chart;
      case 'POTION': return Icons.local_drink;
      case 'GOLD': return Icons.monetization_on;
      default: return Icons.inventory_2;
    }
  }
}

class _EmptySlot extends StatelessWidget {
  const _EmptySlot();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.outlineVariant,
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}

class _FluxPickerDialog extends StatelessWidget {
  const _FluxPickerDialog();

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: const Text('Flux'),
      children: <Widget>[
        SimpleDialogOption(
          onPressed: () => Navigator.pop(context, 'none'),
          child: const Text('None (base rate)'),
        ),
        SimpleDialogOption(
          onPressed: () => Navigator.pop(context, 'flux'),
          child: const Text('Flux (+5%)'),
        ),
        SimpleDialogOption(
          onPressed: () => Navigator.pop(context, 'advanced_flux'),
          child: const Text('Advanced flux (+10%)'),
        ),
      ],
    );
  }
}
