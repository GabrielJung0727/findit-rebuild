import 'package:dio/dio.dart';

import 'api_client.dart';

/// 이벤트 보고 + 광고 클릭/보상 추적.
///
/// 서버 [routes/analytics.js](../../../../server/src/routes/analytics.js) `event` +
/// [routes/ads.js](../../../../server/src/routes/ads.js) `adClick`, `adReward` +
/// [routes/member.js](../../../../server/src/routes/member.js) `hitViewCount`.
///
/// `result` 코드는 `'000'` 정상 / `'999'` missing_event_name 등 — 호출 측에서 try/catch.
class AnalyticsApi {
  AnalyticsApi(this._client);

  final ApiClient _client;
  Dio get _dio => _client.dio;

  /// 클라이언트 이벤트 — `game_start` / `game_end` / `purchase` / `skill_learn` 등.
  /// [payload] 는 4000자 초과 시 서버에서 자른다.
  Future<void> event({
    String? userId,
    required String eventName,
    Map<String, dynamic>? payload,
    String? sessionId,
  }) async {
    await _dio.post<Map<String, dynamic>>(
      'app/member/event.json',
      data: <String, dynamic>{
        if (userId != null) 'userId': userId,
        'eventName': eventName,
        if (payload != null) 'payload': payload,
        if (sessionId != null) 'sessionId': sessionId,
      },
    );
    // 서버 응답 result 와 무관하게 fire-and-forget.
  }

  /// 광고 클릭 추적 — view_count 와 별도. 보상 없음.
  Future<void> adClick({String? userId, required int adId}) async {
    await _dio.post<Map<String, dynamic>>(
      'app/member/adClick.json',
      data: <String, dynamic>{
        if (userId != null) 'userId': userId,
        'adId': adId,
      },
    );
  }

  /// 광고 시청 보상. 24h 일일 상한 (`balance.AD_REWARD_DAILY_CAP=20`),
  /// 회당 5 코인 (`balance.AD_REWARD_COIN_PER_VIEW`).
  ///
  /// 응답: `{coinReward, coin}` (성공 시) / 상한 초과 시 [ApiResultException].
  Future<Map<String, dynamic>> adReward({
    required String userId,
    required int adId,
  }) async {
    final res = await _dio.post<Map<String, dynamic>>(
      'app/member/adReward.json',
      data: <String, dynamic>{'userId': userId, 'adId': adId},
    );
    return unwrapResult(res.data);
  }

  /// 광고 노출 카운트만 증가 (보상 없음). 화면에 광고 띄울 때 1회.
  Future<void> hitViewCount({required int adId}) async {
    await _dio.post<Map<String, dynamic>>(
      'app/member/hitViewCount.json',
      data: <String, dynamic>{'adId': adId},
    );
  }
}
