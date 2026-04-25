import 'package:dio/dio.dart';

import 'api_client.dart';

/// `/app/member/*` 엔드포인트 wrapper.
///
/// 서버 [routes/member.js](../../../../server/src/routes/member.js) 와 1:1 매핑.
/// W1 단계는 회원/지갑 관련만 우선 구현. 게임 결과 집계, 랭킹, IAP 등은 후속.
class MemberApi {
  MemberApi(this._client);

  final ApiClient _client;
  Dio get _dio => _client.dio;

  Future<Map<String, dynamic>> join({
    required String userId,
    required String userPass,
    required String userNick,
    required int userCharacter,
    String? recaptchaToken,
  }) async {
    final res = await _dio.post<Map<String, dynamic>>(
      'app/member/join.json',
      data: <String, dynamic>{
        'userId': userId,
        'userPass': userPass,
        'userNick': userNick,
        'userCharacter': userCharacter,
        if (recaptchaToken != null) 'recaptchaToken': recaptchaToken,
      },
    );
    return _asMap(res.data);
  }

  Future<Map<String, dynamic>> login({
    required String userId,
    required String userPass,
  }) async {
    final res = await _dio.post<Map<String, dynamic>>(
      'app/member/login.json',
      data: <String, dynamic>{
        'userId': userId,
        'userPass': userPass,
      },
    );
    final body = _asMap(res.data);
    final token = body['sessionToken'] as String?;
    if (token != null) await _client.setSessionToken(token);
    return body;
  }

  Future<Map<String, dynamic>> guest({String? deviceId}) async {
    final res = await _dio.post<Map<String, dynamic>>(
      'app/member/guest.json',
      data: <String, dynamic>{
        if (deviceId != null) 'deviceId': deviceId,
      },
    );
    final body = _asMap(res.data);
    final token = body['sessionToken'] as String?;
    if (token != null) await _client.setSessionToken(token);
    return body;
  }

  Future<void> logout() async {
    try {
      await _dio.post<void>('app/member/logout.json');
    } finally {
      await _client.clearSessionToken();
    }
  }

  Future<Map<String, dynamic>> levelTable() async {
    final res = await _dio.get<Map<String, dynamic>>('app/member/levelTable.json');
    return _asMap(res.data);
  }

  Future<Map<String, dynamic>> skillCatalog() async {
    final res = await _dio.get<Map<String, dynamic>>('app/member/skillCatalog.json');
    return _asMap(res.data);
  }

  Map<String, dynamic> _asMap(Object? data) {
    if (data is Map<String, dynamic>) return data;
    if (data is Map) return data.cast<String, dynamic>();
    throw const FormatException('expected JSON object');
  }
}
