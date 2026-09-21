import 'package:dio/dio.dart';

import 'api_client.dart';

/// 친구 선물 — 서버 [routes/gifts.js](../../../../server/src/routes/gifts.js).
///
/// `giftSend` / `giftList` / `giftClaim`. 보내는 쪽 차감 없는 소셜 무료 선물(일일 상한).
class GiftApi {
  GiftApi(this._client);

  final ApiClient _client;
  Dio get _dio => _client.dio;

  /// 친구에게 코인 선물. 실패 시 [ApiResultException] (예: daily_cap, no_recipient).
  Future<void> sendCoin({
    required String fromUser,
    required String toUser,
    int coin = 10,
  }) async {
    final res = await _dio.post<Map<String, dynamic>>(
      'app/member/giftSend.json',
      data: <String, dynamic>{
        'fromUser': fromUser,
        'toUser': toUser,
        'kind': 'coin',
        'amount': coin,
      },
    );
    unwrapResult(res.data);
  }

  /// 받은(미수령) 선물 목록 — `[{id, fromUser, kind, amount, itemNo, regDate}]`.
  Future<List<Map<String, dynamic>>> list({required String userId}) async {
    final res = await _dio.get<Map<String, dynamic>>(
      'app/member/giftList.json',
      queryParameters: <String, dynamic>{'userId': userId},
    );
    final body = unwrapResult(res.data);
    final raw = body['list'];
    if (raw is! List) return <Map<String, dynamic>>[];
    return raw
        .whereType<Map<dynamic, dynamic>>()
        .map((e) => e.cast<String, dynamic>())
        .toList(growable: false);
  }

  /// 선물 수령 → 서버가 지갑/인벤토리에 적립. 응답: `{kind, amount, itemNo}`.
  Future<Map<String, dynamic>> claim({
    required String userId,
    required int giftId,
  }) async {
    final res = await _dio.post<Map<String, dynamic>>(
      'app/member/giftClaim.json',
      data: <String, dynamic>{'userId': userId, 'giftId': giftId},
    );
    return unwrapResult(res.data);
  }
}
