import 'package:findit/game/item_catalog.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ItemType.fromTypeNo', () {
    test('PEN range 38..40', () {
      expect(ItemType.fromTypeNo(38), ItemType.pen);
      expect(ItemType.fromTypeNo(40), ItemType.pen);
    });
    test('RING range 41..42', () {
      expect(ItemType.fromTypeNo(41), ItemType.ring);
      expect(ItemType.fromTypeNo(42), ItemType.ring);
    });
    test('BERRY range 43..48', () {
      expect(ItemType.fromTypeNo(43), ItemType.berry);
      expect(ItemType.fromTypeNo(48), ItemType.berry);
    });
    test('POTION range 49..54', () {
      expect(ItemType.fromTypeNo(49), ItemType.potion);
      expect(ItemType.fromTypeNo(54), ItemType.potion);
    });
    test('GOLD range 55..58', () {
      expect(ItemType.fromTypeNo(55), ItemType.gold);
      expect(ItemType.fromTypeNo(58), ItemType.gold);
    });
    test('outside ranges → ETC', () {
      expect(ItemType.fromTypeNo(0), ItemType.etc);
      expect(ItemType.fromTypeNo(99), ItemType.etc);
    });
  });

  group('Catalog 2013 spec parity', () {
    test('PEN 3종 prices 50/100/200', () {
      expect(ItemCatalog.pen.map((c) => c.price), <int>[50, 100, 200]);
    });
    test('RING 2종 prices 80/150', () {
      expect(ItemCatalog.ring.map((c) => c.price), <int>[80, 150]);
    });
    test('BERRY 6종 prices', () {
      expect(
        ItemCatalog.berry.map((c) => c.price),
        <int>[300, 100, 200, 800, 400, 600],
      );
    });
    test('POTION 5종 prices', () {
      expect(
        ItemCatalog.potion.map((c) => c.price),
        <int>[10, 80, 150, 500, 700],
      );
    });
    test('POTION 대용량 maxNum=1', () {
      expect(ItemCatalog.potion[3].maxNum, 1);
      expect(ItemCatalog.potion[4].maxNum, 1);
    });
    test('GOLD 코인팩 power=100/250/500/650', () {
      expect(
        ItemCatalog.gold.map((c) => c.power),
        <int>[100, 250, 500, 650],
      );
    });
    test('GOLD 가격 \$0.99/\$1.99/\$3.99/\$4.99 (× 1000)', () {
      expect(
        ItemCatalog.gold.map((c) => c.money),
        <int>[990, 1990, 3990, 4990],
      );
    });
    test('ETC 스킬덱 확장 비용 100/300/900', () {
      expect(ItemCatalog.etc.map((c) => c.price), <int>[100, 300, 900]);
    });
  });

  group('CatalogItem.effectSeconds', () {
    test('power=10 → 0.5s, 20 → 1.0s, 18 → 0.9s', () {
      expect(ItemCatalog.pen[0].effectSeconds(), 0.5);
      expect(ItemCatalog.pen[2].effectSeconds(), 1.0);
      expect(ItemCatalog.ring[1].effectSeconds(), 0.9);
    });
  });

  group('findByTypeNo', () {
    test('finds across all categories', () {
      expect(ItemCatalog.findByTypeNo(38)?.type, ItemType.pen);
      expect(ItemCatalog.findByTypeNo(43)?.type, ItemType.berry);
      expect(ItemCatalog.findByTypeNo(57)?.type, ItemType.gold);
      expect(ItemCatalog.findByTypeNo(999), isNull);
    });
  });
}
