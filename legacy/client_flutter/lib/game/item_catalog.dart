import 'package:flutter/foundation.dart';

/// 아이템 카탈로그 — 안드 [`Items.java`](../../../../android_project/app/src/main/java/com/findit/battle/Items.java)
/// 의 2013-12-20 기획(`findit_shop_items_20121220.xlsx`) 그대로 이식.
///
/// 진실 자료: `Items.java`. 서버 `routes/iap.js` 의 productMap 도 같은 SKU를 사용.
/// `mPower` 스케일 = 20단위 / 0.1초. `mPrice` = 코인 가격, `mMoney` = USD × 1000 (¢).
///
/// `typeNo` 는 안드 `inventories.item_no` 컬럼과 동일 — 서버 `classifyItemType()`
/// 가 같은 범위에 매핑.

enum ItemType {
  pen('PEN'),
  ring('RING'),
  berry('BERRY'),
  potion('POTION'),
  gold('GOLD'),
  etc('ETC');

  const ItemType(this.serverName);
  final String serverName;

  static ItemType? fromTypeNo(int typeNo) {
    if (typeNo >= 38 && typeNo <= 40) return ItemType.pen;
    if (typeNo >= 41 && typeNo <= 42) return ItemType.ring;
    if (typeNo >= 43 && typeNo <= 48) return ItemType.berry;
    if (typeNo >= 49 && typeNo <= 54) return ItemType.potion;
    if (typeNo >= 55 && typeNo <= 58) return ItemType.gold;
    return ItemType.etc;
  }
}

@immutable
class CatalogItem {
  const CatalogItem({
    required this.typeNo,
    required this.type,
    required this.power,
    required this.price,
    required this.money,
    this.maxNum = 99,
  });

  /// 안드 `inventories.item_no` 와 동일 — 서버에 보내는 ID.
  final int typeNo;

  /// 카테고리 (PEN/RING/BERRY/POTION/GOLD/ETC).
  final ItemType type;

  /// 효과량 — 20 단위 = 0.1초. (ex. 20 → +1초)
  final int power;

  /// 코인 가격 (코인팩 GOLD 는 0).
  final int price;

  /// 유료결제 단위 (USD × 1000). 비-IAP 아이템은 0.
  final int money;

  /// 1회 구매 시 보유 가능한 최대 수량. 대용량 포션은 1.
  final int maxNum;

  /// `effectSeconds()` — power 를 사람이 읽기 좋은 초 단위로 변환.
  /// 예: power=10 → 0.5초, power=20 → 1.0초.
  double effectSeconds() => power / 20.0;
}

/// 6 카테고리 × 항목 — `Items.java` 의 setContent 호출 그대로.
class ItemCatalog {
  ItemCatalog._();

  /// 펜 (3종) — 자기 스킬 공격 시간 증가.
  static const List<CatalogItem> pen = <CatalogItem>[
    CatalogItem(typeNo: 38, type: ItemType.pen, power: 10, price: 50,  money: 0),
    CatalogItem(typeNo: 39, type: ItemType.pen, power: 16, price: 100, money: 0),
    CatalogItem(typeNo: 40, type: ItemType.pen, power: 20, price: 200, money: 0),
  ];

  /// 반지 (2종) — 상대 스킬 공격 시간 감소.
  static const List<CatalogItem> ring = <CatalogItem>[
    CatalogItem(typeNo: 41, type: ItemType.ring, power: 12, price: 80,  money: 0),
    CatalogItem(typeNo: 42, type: ItemType.ring, power: 18, price: 150, money: 0),
  ];

  /// 베리 (6종) — 일회성 공격 아이템.
  static const List<CatalogItem> berry = <CatalogItem>[
    CatalogItem(typeNo: 43, type: ItemType.berry, power: 24, price: 300, money: 0), // 폭발
    CatalogItem(typeNo: 44, type: ItemType.berry, power: 10, price: 100, money: 0), // 불꽃
    CatalogItem(typeNo: 45, type: ItemType.berry, power: 16, price: 200, money: 0), // 눈꽃
    CatalogItem(typeNo: 46, type: ItemType.berry, power: 44, price: 800, money: 0), // 강력폭발
    CatalogItem(typeNo: 47, type: ItemType.berry, power: 30, price: 400, money: 0), // 강력불꽃
    CatalogItem(typeNo: 48, type: ItemType.berry, power: 36, price: 600, money: 0), // 강력눈꽃
  ];

  /// 포션 (5종) — 방어 효과. 대용량(maxNum=1)은 7일 사용권.
  static const List<CatalogItem> potion = <CatalogItem>[
    CatalogItem(typeNo: 49, type: ItemType.potion, power: 6,  price: 10,  money: 0),
    CatalogItem(typeNo: 50, type: ItemType.potion, power: 12, price: 80,  money: 0),
    CatalogItem(typeNo: 51, type: ItemType.potion, power: 18, price: 150, money: 0),
    CatalogItem(typeNo: 52, type: ItemType.potion, power: 32, price: 500, money: 0, maxNum: 1),
    CatalogItem(typeNo: 53, type: ItemType.potion, power: 38, price: 700, money: 0, maxNum: 1),
  ];

  /// 골드 (코인팩 IAP 4종) — 100/250/500/650 코인, $0.99/$1.99/$3.99/$4.99.
  /// 스토어 등록 SKU 와 productMap (`server/src/routes/iap.js`) 일치 필수.
  static const List<CatalogItem> gold = <CatalogItem>[
    CatalogItem(typeNo: 55, type: ItemType.gold, power: 100, price: 0, money: 990),
    CatalogItem(typeNo: 56, type: ItemType.gold, power: 250, price: 0, money: 1990),
    CatalogItem(typeNo: 57, type: ItemType.gold, power: 500, price: 0, money: 3990),
    CatalogItem(typeNo: 58, type: ItemType.gold, power: 650, price: 0, money: 4990),
  ];

  /// ETC — 스킬덱 확장 슬롯. price 는 `server/balance.js SKILL_DECK_COST`.
  static const List<CatalogItem> etc = <CatalogItem>[
    CatalogItem(typeNo: 0, type: ItemType.etc, power: 0, price: 100, money: 0),
    CatalogItem(typeNo: 1, type: ItemType.etc, power: 1, price: 300, money: 0),
    CatalogItem(typeNo: 2, type: ItemType.etc, power: 2, price: 900, money: 0),
  ];

  /// 모든 카테고리.
  static List<CatalogItem> ofType(ItemType t) {
    switch (t) {
      case ItemType.pen: return pen;
      case ItemType.ring: return ring;
      case ItemType.berry: return berry;
      case ItemType.potion: return potion;
      case ItemType.gold: return gold;
      case ItemType.etc: return etc;
    }
  }

  static const List<List<CatalogItem>> all = <List<CatalogItem>>[
    pen, ring, berry, potion, gold, etc,
  ];

  /// typeNo 로 카탈로그 검색. 없으면 null.
  static CatalogItem? findByTypeNo(int typeNo) {
    for (final list in all) {
      for (final item in list) {
        if (item.typeNo == typeNo) return item;
      }
    }
    return null;
  }
}
