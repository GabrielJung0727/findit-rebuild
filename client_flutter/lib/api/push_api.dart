import 'package:dio/dio.dart';

import 'api_client.dart';

/// FCM (Firebase Cloud Messaging) 토큰 등록.
///
/// 서버 [routes/fcm.js](../../../../server/src/routes/fcm.js) `registerFcmToken`.
/// Firebase Messaging 으로 토큰 획득 후 1회 호출 → `members.fcm_token` 저장.
/// 토큰이 갱신될 때마다 (`onTokenRefresh`) 재호출 권장.
class PushApi {
  PushApi(this._client);

  final ApiClient _client;
  Dio get _dio => _client.dio;

  Future<void> registerFcmToken({
    required String userId,
    required String fcmToken,
  }) async {
    await _dio.post<Map<String, dynamic>>(
      'app/member/registerFcmToken.json',
      data: <String, dynamic>{'userId': userId, 'fcmToken': fcmToken},
    );
  }
}
