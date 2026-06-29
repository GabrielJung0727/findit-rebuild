import 'package:dio/dio.dart';

import 'api_client.dart';

/// 게임 결과 집계 + 랭킹 + 구매 내역.
///
/// 서버 [routes/member.js](../../../../server/src/routes/member.js)
/// `mutiAddUp`, `rankList`, `itemPurchaseHistList` +
/// [routes/ranks.js](../../../../server/src/routes/ranks.js)
/// `rankListFriends`, `rankListTop`.
class GameApi {
  GameApi(this._client);

  final ApiClient _client;
  Dio get _dio => _client.dio;

  /// 멀티플레이 결과 집계 — 점수/코인/포인트 증분, 레벨은 GREATEST.
  ///
  /// 응답: `{user: {userId, level, score, coin, point}}`
  Future<Map<String, dynamic>> mutiAddUp({
    required String userId,
    int level = 0,
    int score = 0,
    int coin = 0,
    int point = 0,
  }) async {
    final res = await _dio.post<Map<String, dynamic>>(
      'app/member/mutiAddUp.json',
      data: <String, dynamic>{
        'userId': userId,
        'level': level,
        'score': score,
        'coin': coin,
        'point': point,
      },
    );
    return unwrapResult(res.data);
  }

  /// 전체 랭킹 (top 100, GET, query string). `result` 없이 list 만 반환됨.
  ///
  /// 응답 list 항목: `{ranking, friendId, sumpoint}`
  Future<List<Map<String, dynamic>>> rankList({required String userId}) async {
    final res = await _dio.get<Map<String, dynamic>>(
      'app/member/rankList',
      queryParameters: <String, dynamic>{'userId': userId},
    );
    return _list(asMap(res.data));
  }

  /// 친구 랭킹 (본인 + Facebook 친구). [fbFriends] 는 Facebook UID CSV.
  Future<List<Map<String, dynamic>>> rankListFriends({
    required String userId,
    List<String> fbFriends = const <String>[],
  }) async {
    final res = await _dio.get<Map<String, dynamic>>(
      'app/member/rankListFriends.json',
      queryParameters: <String, dynamic>{
        'userId': userId,
        if (fbFriends.isNotEmpty) 'fbFriends': fbFriends.join(','),
      },
    );
    final body = unwrapResult(res.data);
    return _list(body);
  }

  /// 전체 랭킹 top N (1 ≤ N ≤ 200, default 50).
  Future<List<Map<String, dynamic>>> rankListTop({int limit = 50}) async {
    final res = await _dio.get<Map<String, dynamic>>(
      'app/member/rankListTop.json',
      queryParameters: <String, dynamic>{'limit': limit},
    );
    final body = unwrapResult(res.data);
    return _list(body);
  }

  /// 주간 랭킹 — 최신 weekly 스냅샷 (서버 `util/rankingSnapshot.js` 가 생성).
  /// 항목: `{ranking, friendId, userNick, level, sumpoint, delta}`.
  Future<List<Map<String, dynamic>>> rankListWeekly({int limit = 50}) async {
    final res = await _dio.get<Map<String, dynamic>>(
      'app/member/rankListWeekly.json',
      queryParameters: <String, dynamic>{'limit': limit},
    );
    final body = unwrapResult(res.data);
    return _list(body);
  }

  /// 구매 내역. `result` 없이 list 만 반환됨.
  ///
  /// 응답 list 항목: `{regDate, itemName, quantity}`
  Future<List<Map<String, dynamic>>> itemPurchaseHistList(
      {required String userId}) async {
    final res = await _dio.get<Map<String, dynamic>>(
      'app/member/itemPurchaseHistList',
      queryParameters: <String, dynamic>{'userId': userId},
    );
    return _list(asMap(res.data));
  }

  List<Map<String, dynamic>> _list(Map<String, dynamic> body) {
    final raw = body['list'];
    if (raw is! List) return <Map<String, dynamic>>[];
    return raw
        .whereType<Map<dynamic, dynamic>>()
        .map((e) => e.cast<String, dynamic>())
        .toList(growable: false);
  }
}
