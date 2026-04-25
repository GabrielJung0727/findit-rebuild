import 'package:dio/dio.dart';

import 'api_client.dart';

/// 회원 인증 + 지갑 — `/app/member/{join,login,guest,facebook,logout,addCoin,spendCoin,spendGem,addGem}.json`.
///
/// 서버 [routes/member.js](../../../../server/src/routes/member.js) +
/// [routes/economy.js](../../../../server/src/routes/economy.js) 와 1:1 매핑.
///
/// 인증 응답에 포함된 `token` 은 자동으로 [ApiClient] 에 저장되어 이후 요청에
/// `Authorization: Bearer ...` 로 첨부됨.
class MemberApi {
  MemberApi(this._client);

  final ApiClient _client;
  Dio get _dio => _client.dio;

  // ===========================================================
  // 인증
  // ===========================================================

  Future<Map<String, dynamic>> join({
    required String userId,
    required String userPass,
    required String userNick,
    required int userCharacter,
    String userDevice = '1',
    String? recaptchaToken,
  }) async {
    final res = await _dio.post<Map<String, dynamic>>(
      'app/member/join.json',
      data: <String, dynamic>{
        'userId': userId,
        'userPass': userPass,
        'userNick': userNick,
        'userCharacter': userCharacter,
        'userDevice': userDevice,
        if (recaptchaToken != null) 'recaptchaToken': recaptchaToken,
      },
    );
    return unwrapResult(res.data);
  }

  Future<Map<String, dynamic>> login({
    required String userId,
    required String userPass,
    String userDevice = '1',
  }) async {
    final res = await _dio.post<Map<String, dynamic>>(
      'app/member/login.json',
      data: <String, dynamic>{
        'userId': userId,
        'userPass': userPass,
        'userDevice': userDevice,
      },
    );
    final body = unwrapResult(res.data);
    await _persistToken(body);
    return body;
  }

  Future<Map<String, dynamic>> guest({
    String? deviceId,
    String? recaptchaToken,
  }) async {
    final res = await _dio.post<Map<String, dynamic>>(
      'app/member/guest.json',
      data: <String, dynamic>{
        if (deviceId != null) 'deviceId': deviceId,
        if (recaptchaToken != null) 'recaptchaToken': recaptchaToken,
      },
    );
    final body = unwrapResult(res.data);
    await _persistToken(body);
    return body;
  }

  /// Facebook 로그인. 최초 가입 시 [userNick]/[userCharacter] 필요 — 미지정 시
  /// 서버가 `result=101, needsSignup=true` 로 응답.
  Future<Map<String, dynamic>> facebook({
    required String fbUserId,
    String? fbToken,
    String? userNick,
    int? userCharacter,
  }) async {
    final res = await _dio.post<Map<String, dynamic>>(
      'app/member/facebook.json',
      data: <String, dynamic>{
        'fbUserId': fbUserId,
        if (fbToken != null) 'fbToken': fbToken,
        if (userNick != null) 'userNick': userNick,
        if (userCharacter != null) 'userCharacter': userCharacter,
      },
    );
    final body = unwrapResult(res.data);
    await _persistToken(body);
    return body;
  }

  Future<void> logout() async {
    final token = await _client.readSessionToken();
    try {
      await _dio.post<Map<String, dynamic>>(
        'app/member/logout.json',
        data: <String, dynamic>{
          if (token != null) 'token': token,
        },
      );
    } finally {
      await _client.clearSessionToken();
    }
  }

  Future<void> _persistToken(Map<String, dynamic> body) async {
    final token = body['token'] as String?;
    if (token != null && token.isNotEmpty) {
      await _client.setSessionToken(token);
    }
  }

  // ===========================================================
  // 지갑 — 코인 / 보석
  // ===========================================================

  /// 광고 보상 등으로 코인 적립 (서버는 음수 차단).
  Future<int> addCoin({required String userId, required int coin}) async {
    final res = await _dio.post<Map<String, dynamic>>(
      'app/member/addCoin.json',
      data: <String, dynamic>{'userId': userId, 'coin': coin},
    );
    final body = unwrapResult(res.data);
    return (body['coin'] as num?)?.toInt() ?? 0;
  }

  /// 코인 차감 — 부족 시 [ApiResultException]. 트랜잭션 + FOR UPDATE 락.
  Future<int> spendCoin({required String userId, required int coin}) async {
    final res = await _dio.post<Map<String, dynamic>>(
      'app/member/spendCoin.json',
      data: <String, dynamic>{'userId': userId, 'coin': coin},
    );
    final body = unwrapResult(res.data);
    return (body['coin'] as num?)?.toInt() ?? 0;
  }

  /// 보석 차감.
  Future<int> spendGem({required String userId, required int gem}) async {
    final res = await _dio.post<Map<String, dynamic>>(
      'app/member/spendGem.json',
      data: <String, dynamic>{'userId': userId, 'gem': gem},
    );
    final body = unwrapResult(res.data);
    return (body['gem'] as num?)?.toInt() ?? 0;
  }

  /// 보석 적립 — admin-only (서버에서 X-Admin-Token 검증). 일반 클라는 사용 안 함.
  Future<int> addGem({required String userId, required int gem}) async {
    final res = await _dio.post<Map<String, dynamic>>(
      'app/member/addGem.json',
      data: <String, dynamic>{'userId': userId, 'gem': gem},
    );
    final body = unwrapResult(res.data);
    return (body['gem'] as num?)?.toInt() ?? 0;
  }
}
