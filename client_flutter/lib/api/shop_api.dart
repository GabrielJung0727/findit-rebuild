import 'package:dio/dio.dart';

import 'api_client.dart';

/// 상점 / 인벤토리 / 스킬 학습 / 강화 / 확장 — 코인·포인트·보석 소비 액션.
///
/// 서버 [routes/member.js](../../../../server/src/routes/member.js)
/// `buyItemAndSpendCoin`, `spendMyItem`, `buySkillAndSpendPoint` +
/// [routes/skills.js](../../../../server/src/routes/skills.js) `learnSkill` +
/// [routes/economy.js](../../../../server/src/routes/economy.js) `upgradeItem`,
/// `expandInventory`, `expandSkillDeck`.
class ShopApi {
  ShopApi(this._client);

  final ApiClient _client;
  Dio get _dio => _client.dio;

  /// 코인 차감 + 인벤토리 추가 (원자적).
  ///
  /// 응답: `{coin, itemNo, quantity}`
  Future<Map<String, dynamic>> buyItemAndSpendCoin({
    required String userId,
    required int itemNo,
    required int coin,
    int quantity = 1,
  }) async {
    final res = await _dio.post<Map<String, dynamic>>(
      'app/member/buyItemAndSpendCoin.json',
      data: <String, dynamic>{
        'userId': userId,
        'itemNo': itemNo,
        'coin': coin,
        'quantity': quantity,
      },
    );
    return unwrapResult(res.data);
  }

  /// 보유 아이템 사용 (수량 -1).
  ///
  /// 응답: `{itemNo, quantity}` — quantity 가 0 이면 인벤토리에서 삭제됨.
  Future<Map<String, dynamic>> spendMyItem({
    required String userId,
    required int itemNo,
    int quantity = 1,
  }) async {
    final res = await _dio.post<Map<String, dynamic>>(
      'app/member/spendMyItem.json',
      data: <String, dynamic>{
        'userId': userId,
        'itemNo': itemNo,
        'quantity': quantity,
      },
    );
    return unwrapResult(res.data);
  }

  /// 스킬 구매 (포인트 차감) — 선행 검증 약함. BC 용. 신규는 [learnSkill] 권장.
  Future<Map<String, dynamic>> buySkillAndSpendPoint({
    required String userId,
    required int skillId,
    required int point,
  }) async {
    final res = await _dio.post<Map<String, dynamic>>(
      'app/member/buySkillAndSpendPoint.json',
      data: <String, dynamic>{
        'userId': userId,
        'skillId': skillId,
        'point': point,
      },
    );
    return unwrapResult(res.data);
  }

  /// 스킬 학습 — 레벨/포인트/선행 스킬 모두 검증.
  Future<Map<String, dynamic>> learnSkill({
    required String userId,
    required int skillId,
  }) async {
    final res = await _dio.post<Map<String, dynamic>>(
      'app/member/learnSkill.json',
      data: <String, dynamic>{'userId': userId, 'skillId': skillId},
    );
    return unwrapResult(res.data);
  }

  /// 아이템 강화. 확률 기반, 실패 시 코인만 소모.
  ///
  /// [fluxUsed]: `'none' | 'flux' | 'advanced_flux'` — 성공률 +5/+10%.
  /// 응답: `{success, cost, rate, newLevel}`
  Future<Map<String, dynamic>> upgradeItem({
    required String userId,
    required int itemNo,
    String fluxUsed = 'none',
  }) async {
    final res = await _dio.post<Map<String, dynamic>>(
      'app/member/upgradeItem.json',
      data: <String, dynamic>{
        'userId': userId,
        'itemNo': itemNo,
        'fluxUsed': fluxUsed,
      },
    );
    return unwrapResult(res.data);
  }

  /// 인벤토리 확장 (3 → 30 칸, 단계당 +3).
  /// 응답: `{inventorySize, cost}`
  Future<Map<String, dynamic>> expandInventory({required String userId}) async {
    final res = await _dio.post<Map<String, dynamic>>(
      'app/member/expandInventory.json',
      data: <String, dynamic>{'userId': userId},
    );
    return unwrapResult(res.data);
  }

  /// 스킬덱 확장 (1 → 4, 비용 100/300/900).
  /// 응답: `{skillDeckCount, cost}`
  Future<Map<String, dynamic>> expandSkillDeck({required String userId}) async {
    final res = await _dio.post<Map<String, dynamic>>(
      'app/member/expandSkillDeck.json',
      data: <String, dynamic>{'userId': userId},
    );
    return unwrapResult(res.data);
  }
}
