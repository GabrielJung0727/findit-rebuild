import 'dart:io' show Platform;

import 'package:findit/api/iap_service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('IapService SKU policy', () {
    test('coinSkus matches server PRODUCT_CATALOG (4 SKU)', () {
      expect(IapService.coinSkus, <String>{
        'coin_100', 'coin_250', 'coin_500', 'coin_650',
      });
    });
  });

  group('PurchaseEvent', () {
    test('ok=true carries coin/gem balances', () {
      const e = PurchaseEvent(
        ok: true,
        productId: 'coin_500',
        coin: 1500,
        gem: 0,
      );
      expect(e.ok, true);
      expect(e.coin, 1500);
      expect(e.error, isNull);
    });
    test('ok=false carries error', () {
      const e = PurchaseEvent(
        ok: false,
        productId: 'coin_500',
        error: 'receipt_invalid',
      );
      expect(e.ok, false);
      expect(e.error, 'receipt_invalid');
    });
  });
}
