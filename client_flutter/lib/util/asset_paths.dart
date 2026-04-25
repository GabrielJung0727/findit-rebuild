/// 로컬 자산 경로 헬퍼 — `assets/images/{items,characters,ui}/` 의 PNG 매핑.
///
/// 안드 원본 `Items.java` 의 `R.drawable.slot_item_*` 와 1:1 (디컴파일 추출).
/// 디자이너 신규 에셋 입수 후 같은 경로로 교체하면 코드 수정 불필요.
class AssetPaths {
  AssetPaths._();

  static const String _itemsBase = 'assets/images/items/';
  static const String _charsBase = 'assets/images/characters/';
  static const String _uiBase = 'assets/images/ui/';

  /// 아이템 typeNo (Items.java 와 동일) → 자산 경로. 매핑 없으면 null.
  static String? itemIcon(int typeNo) {
    switch (typeNo) {
      // PEN 38..40
      case 38: return '${_itemsBase}slot_item_pen_01.png';
      case 39: return '${_itemsBase}slot_item_pen_02.png';
      case 40: return '${_itemsBase}slot_item_pen_03.png';
      // RING 41..42
      case 41: return '${_itemsBase}slot_item_ring_01.png';
      case 42: return '${_itemsBase}slot_item_ring_02.png';
      // BERRY 43..48
      case 43: return '${_itemsBase}slot_item_berry_01.png';
      case 44: return '${_itemsBase}slot_item_berry_02.png';
      case 45: return '${_itemsBase}slot_item_berry_03.png';
      case 46: return '${_itemsBase}slot_item_berry_21.png';
      case 47: return '${_itemsBase}slot_item_berry_22.png';
      case 48: return '${_itemsBase}slot_item_berry_23.png';
      // POTION 49..53
      case 49: return '${_itemsBase}slot_item_posion_01.png';
      case 50: return '${_itemsBase}slot_item_posion_02.png';
      case 51: return '${_itemsBase}slot_item_posion_03.png';
      case 52: return '${_itemsBase}slot_item_posion_21.png';
      case 53: return '${_itemsBase}slot_item_posion_22.png';
      // GOLD 55..58
      case 55: return '${_itemsBase}slot_item_coin_1000.png';
      case 56: return '${_itemsBase}slot_item_coin_2500.png';
      case 57: return '${_itemsBase}slot_item_coin_5500.png';
      case 58: return '${_itemsBase}slot_item_coin_8500.png';
    }
    return null;
  }

  /// 캐릭터 0..2 헤드 — JoinScreen / ProfileScreen / BattleRoom 미리보기.
  static String characterHead(int characterIndex) {
    final i = characterIndex.clamp(0, 2);
    return '${_charsBase}charac2_${i}_head_0.png';
  }

  /// UI 공용.
  static const String coin = '${_uiBase}coin.png';
  static const String btnReady = '${_uiBase}btn_ready.png';
  static const String btnStart = '${_uiBase}btn_start.png';
}
