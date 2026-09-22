import 'dart:async';
import 'dart:io' show Platform;

import 'package:flutter/foundation.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

import 'iap_api.dart';

/// 인앱 결제 — 코인팩 4 SKU.
///
/// 흐름:
/// 1. `init()` — 스토어 가용성 확인 + `purchaseStream` 구독.
/// 2. `loadProducts()` — 4 SKU 의 상점 메타(가격 표시 등) 조회.
/// 3. `buy(productId)` — 결제 시작. 비동기 콜백은 `purchaseStream` 으로 도착.
/// 4. 결제 완료 시 [IapApi.verifyIap] 로 서버 검증 → 재화 지급 → `completePurchase()`.
///
/// SKU 정책 (서버 [routes/iap.js](../../../../server/src/routes/iap.js) 의 PRODUCT_CATALOG 와 일치):
/// - Google Play, Apple App Store: 같은 ID — `coin_100` / `coin_250` / `coin_500` / `coin_650`.
/// - Samsung 은 구 SKU (`000001005358~61`) — Samsung 결제는 별도 `flutter_samsung_iap` 같은 패키지 필요 (후속).

/// 결제 결과 broadcast — ShopScreen 등이 listen 해서 잔액 갱신.
@immutable
class PurchaseEvent {
  const PurchaseEvent({
    required this.ok,
    required this.productId,
    this.coin,
    this.gem,
    this.error,
  });

  final bool ok;
  final String productId;
  final int? coin;
  final int? gem;
  final String? error;
}

class IapService {
  IapService(this._api, {InAppPurchase? iap})
      : _iap = iap ?? InAppPurchase.instance;

  final _events = StreamController<PurchaseEvent>.broadcast();
  Stream<PurchaseEvent> get events => _events.stream;

  final IapApi _api;
  final InAppPurchase _iap;
  StreamSubscription<List<PurchaseDetails>>? _sub;

  static const Set<String> coinSkus = <String>{
    'coin_100',
    'coin_250',
    'coin_500',
    'coin_650',
  };

  /// 서버 verifyIap 호출 시 사용할 store 식별자. 빌드 플랫폼 기반.
  /// Samsung 구 단말은 별도 분기 — 후속.
  String get currentStore {
    if (Platform.isIOS) return 'apple';
    if (Platform.isAndroid) return 'google';
    return 'unknown';
  }

  bool _ready = false;
  bool get ready => _ready;
  String? _userId; // 결제 시 서버에 보낼 식별자
  String? _lastReceipt; // 마지막 검증 결과 디버그용

  /// 상점 가용성 확인 + purchaseStream 구독. 앱 시작 시 1회.
  Future<bool> init({required String userId}) async {
    _userId = userId;
    _ready = await _iap.isAvailable();
    if (!_ready) return false;
    _sub?.cancel();
    _sub = _iap.purchaseStream.listen(_onUpdates, onError: (Object e) {
      if (kDebugMode) debugPrint('[iap] stream error: $e');
    },);
    return true;
  }

  /// SKU 메타데이터 — 가격 표시 (\$0.99 등) 용. 등록되지 않은 SKU 는 notFoundIDs.
  Future<ProductDetailsResponse> loadProducts() {
    return _iap.queryProductDetails(coinSkus);
  }

  /// 결제 시작. 결제 완료/취소/실패는 `purchaseStream` 콜백으로.
  Future<bool> buy(ProductDetails product) {
    final purchaseParam = PurchaseParam(productDetails: product);
    return _iap.buyConsumable(purchaseParam: purchaseParam);
  }

  /// 결제 흐름 종료. logout / 화면 dispose 시.
  Future<void> dispose() async {
    await _sub?.cancel();
    _sub = null;
    await _events.close();
  }

  // ===========================================================
  // 내부
  // ===========================================================

  Future<void> _onUpdates(List<PurchaseDetails> updates) async {
    for (final pd in updates) {
      switch (pd.status) {
        case PurchaseStatus.pending:
          // 클라 UI 가 spinner 표시
          break;
        case PurchaseStatus.purchased:
        case PurchaseStatus.restored:
          await _handleVerified(pd);
          break;
        case PurchaseStatus.error:
          if (kDebugMode) debugPrint('[iap] error: ${pd.error}');
          if (pd.pendingCompletePurchase) await _iap.completePurchase(pd);
          break;
        case PurchaseStatus.canceled:
          if (pd.pendingCompletePurchase) await _iap.completePurchase(pd);
          break;
      }
    }
  }

  Future<void> _handleVerified(PurchaseDetails pd) async {
    final user = _userId;
    if (user == null) {
      // 로그인 전 결제 — 비정상. 영수증만 finalize.
      if (pd.pendingCompletePurchase) await _iap.completePurchase(pd);
      return;
    }
    final receipt = pd.verificationData.serverVerificationData;
    _lastReceipt = receipt;
    try {
      final body = await _api.verifyIap(
        userId: user,
        store: currentStore,
        productId: pd.productID,
        purchaseToken: receipt,
      );
      _events.add(PurchaseEvent(
        ok: true,
        productId: pd.productID,
        coin: (body['coin'] as num?)?.toInt(),
        gem: (body['gem'] as num?)?.toInt(),
      ),);
    } catch (e) {
      if (kDebugMode) debugPrint('[iap] server verify failed: $e');
      _events.add(PurchaseEvent(
        ok: false,
        productId: pd.productID,
        error: e.toString(),
      ),);
    } finally {
      // consumable 은 반드시 completePurchase 호출 (Apple 은 finishTransaction).
      if (pd.pendingCompletePurchase) await _iap.completePurchase(pd);
    }
  }

  @visibleForTesting
  String? get debugLastReceipt => _lastReceipt;
}
