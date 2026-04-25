import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

import '../api/api_client.dart';
import '../api/iap_service.dart';
import '../game/item_catalog.dart';
import '../l10n/app_localizations.dart';
import '../state/auth.dart';
import '../state/providers.dart';
import '../util/asset_paths.dart';

/// 상점 — `Items.java` 의 2013 가격 그대로. 5개 일반 카테고리(PEN/RING/BERRY/POTION/ETC)
/// + 코인팩(GOLD) 4종 IAP 분리 탭.
///
/// 일반: `buyItemAndSpendCoin.json` 으로 코인 차감 + 인벤토리 +1
/// IAP: §10 (`in_app_purchase` 패키지 + `verifyIap.json`) 으로 위임 — 현재는 placeholder.
class ShopScreen extends ConsumerStatefulWidget {
  const ShopScreen({super.key});

  @override
  ConsumerState<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends ConsumerState<ShopScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tab;
  Map<String, ProductDetails> _products = const <String, ProductDetails>{};
  bool _iapReady = false;
  StreamSubscription<PurchaseEvent>? _iapSub;

  // GOLD 는 IAP 별도 탭 — 일반 구매 탭에서 제외
  static const _generalTypes = <ItemType>[
    ItemType.pen,
    ItemType.ring,
    ItemType.berry,
    ItemType.potion,
    ItemType.etc,
  ];

  @override
  void initState() {
    super.initState();
    _tab = TabController(length: _generalTypes.length + 1, vsync: this);
    unawaited(_initIap());
  }

  Future<void> _initIap() async {
    final user = ref.read(authControllerProvider).user;
    if (user == null) return;
    final svc = ref.read(iapServiceProvider);
    final ok = await svc.init(userId: user.userId);
    _iapSub?.cancel();
    _iapSub = svc.events.listen(_onPurchaseEvent);
    if (!ok || !mounted) {
      setState(() => _iapReady = false);
      return;
    }
    final res = await svc.loadProducts();
    if (!mounted) return;
    setState(() {
      _iapReady = true;
      _products = <String, ProductDetails>{
        for (final p in res.productDetails) p.id: p,
      };
    });
  }

  void _onPurchaseEvent(PurchaseEvent e) {
    final l = AppLocalizations.of(context);
    if (e.ok) {
      ref.read(authControllerProvider.notifier).applyWalletDelta(
            coin: e.coin,
            gem: e.gem,
          );
      _toast(l.dlgMsgPaymentSuccess);
    } else {
      _toast(l.msgInvalidPurchase);
    }
  }

  @override
  void dispose() {
    _iapSub?.cancel();
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
        title: Text(l.buy),
        bottom: TabBar(
          controller: _tab,
          isScrollable: true,
          tabs: <Tab>[
            for (final t in _generalTypes) Tab(text: t.serverName),
            const Tab(text: 'COIN'),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            _Balances(user: user),
            Expanded(
              child: TabBarView(
                controller: _tab,
                children: <Widget>[
                  for (final t in _generalTypes)
                    _ItemGrid(
                      items: ItemCatalog.ofType(t),
                      onBuy: _buyCoinItem,
                      currencyIcon: Icons.monetization_on,
                    ),
                  _ItemGrid(
                    items: ItemCatalog.gold,
                    onBuy: _buyCoinPack,
                    currencyIcon: Icons.attach_money,
                    showMoney: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _buyCoinItem(CatalogItem cat) async {
    final l = AppLocalizations.of(context);
    final user = ref.read(authControllerProvider).user;
    if (user == null) return;
    if (user.coin < cat.price) {
      _toast(l.lackcoin);
      return;
    }
    final ok = await _confirm(l.buyitem);
    if (!ok) return;
    try {
      final body = await ref.read(shopApiProvider).buyItemAndSpendCoin(
            userId: user.userId,
            itemNo: cat.typeNo,
            coin: cat.price,
            quantity: 1,
          );
      ref.read(authControllerProvider.notifier).applyWalletDelta(
            coin: (body['coin'] as num?)?.toInt(),
          );
      ref.read(authControllerProvider.notifier).applyInventoryDelta(
            itemNo: cat.typeNo,
            newQuantity: (body['quantity'] as num?)?.toInt() ?? 1,
            itemType: cat.type.serverName,
          );
      _toast(l.dlgMsgPaymentSuccess);
    } on ApiResultException catch (e) {
      _toast(e.reason ?? l.noticeMsgNetworkfail);
    } catch (_) {
      _toast(l.noticeMsgNetworkfail);
    }
  }

  Future<void> _buyCoinPack(CatalogItem cat) async {
    final l = AppLocalizations.of(context);
    if (!_iapReady) {
      _toast(l.msgIapIsNotInstalled);
      return;
    }
    // CatalogItem.typeNo (55..58) → SKU 매핑
    final sku = _skuFor(cat);
    final product = _products[sku];
    if (product == null) {
      _toast(l.msgFailedToLoadListOfProduct);
      return;
    }
    try {
      await ref.read(iapServiceProvider).buy(product);
      // 결제 결과는 purchaseStream → IapService 가 서버 검증 후 wallet 갱신.
      // 사용자가 결제 완료/취소 시 OS 다이얼로그가 표시됨.
    } catch (_) {
      _toast(l.msgPaymentWasNotProcessedSuccessfully);
    }
  }

  String _skuFor(CatalogItem cat) {
    // GOLD typeNo 55/56/57/58 → coin_100/250/500/650
    switch (cat.typeNo) {
      case 55: return 'coin_100';
      case 56: return 'coin_250';
      case 57: return 'coin_500';
      case 58: return 'coin_650';
    }
    return 'coin_100';
  }

  Future<bool> _confirm(String message) async {
    final l = AppLocalizations.of(context);
    final r = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l.notice),
        content: Text(message),
        actions: <Widget>[
          TextButton(onPressed: () => Navigator.pop(ctx, false), child: Text(l.no)),
          FilledButton(onPressed: () => Navigator.pop(ctx, true), child: Text(l.yes)),
        ],
      ),
    );
    return r ?? false;
  }

  void _toast(String msg) {
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }
}

class _Balances extends StatelessWidget {
  const _Balances({required this.user});
  final AuthUser user;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surfaceContainerLow,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: <Widget>[
          _b(context, Icons.monetization_on, '${user.coin}'),
          const SizedBox(width: 12),
          _b(context, Icons.toll, '${user.point}'),
          const SizedBox(width: 12),
          _b(context, Icons.diamond, '${user.gem}'),
          const Spacer(),
          Text('Lv ${user.level}'),
        ],
      ),
    );
  }

  Widget _b(BuildContext context, IconData icon, String label) {
    return Row(children: <Widget>[Icon(icon, size: 16), const SizedBox(width: 4), Text(label)]);
  }
}

class _ItemGrid extends StatelessWidget {
  const _ItemGrid({
    required this.items,
    required this.onBuy,
    required this.currencyIcon,
    this.showMoney = false,
  });

  final List<CatalogItem> items;
  final Future<void> Function(CatalogItem) onBuy;
  final IconData currencyIcon;
  final bool showMoney;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      padding: const EdgeInsets.all(8),
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      childAspectRatio: 0.85,
      children: items.map((c) => _ShopCell(item: c, onBuy: onBuy, showMoney: showMoney)).toList(),
    );
  }
}

class _ShopCell extends StatelessWidget {
  const _ShopCell({
    required this.item,
    required this.onBuy,
    required this.showMoney,
  });

  final CatalogItem item;
  final Future<void> Function(CatalogItem) onBuy;
  final bool showMoney;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final iconPath = AssetPaths.itemIcon(item.typeNo);
    return Material(
      color: scheme.surfaceContainer,
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        onTap: () => onBuy(item),
        borderRadius: BorderRadius.circular(8),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              if (iconPath != null)
                Image.asset(iconPath, width: 40, height: 40, fit: BoxFit.contain)
              else
                Icon(_iconFor(item.type), size: 32),
              const SizedBox(height: 4),
              Text('#${item.typeNo}',
                  style: Theme.of(context).textTheme.labelSmall,),
              Text(
                _effectLabel(item),
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(height: 4),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color: scheme.primaryContainer,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  showMoney
                      ? '\$${(item.money / 1000).toStringAsFixed(2)}'
                      : '${item.price}',
                  style: TextStyle(
                    color: scheme.onPrimaryContainer,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _effectLabel(CatalogItem item) {
    switch (item.type) {
      case ItemType.gold:
        return '+${item.power} coin';
      case ItemType.etc:
        return 'Deck +1';
      default:
        final s = item.effectSeconds();
        final sign = item.type == ItemType.ring || item.type == ItemType.potion
            ? '-'
            : '+';
        return '$sign${s.toStringAsFixed(1)}s';
    }
  }

  IconData _iconFor(ItemType t) {
    switch (t) {
      case ItemType.pen: return Icons.edit;
      case ItemType.ring: return Icons.circle_outlined;
      case ItemType.berry: return Icons.bubble_chart;
      case ItemType.potion: return Icons.local_drink;
      case ItemType.gold: return Icons.monetization_on;
      case ItemType.etc: return Icons.style;
    }
  }
}
