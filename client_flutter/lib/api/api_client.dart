import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../util/property.dart';

/// 단일 [`Dio`] 인스턴스 보유자.
///
/// 인터셉터:
/// - 세션 토큰 자동 첨부 (`Authorization: Bearer <token>`) — flutter_secure_storage 에서 로드
/// - 401 시 토큰 폐기 (호출자가 로그인 화면으로 라우팅)
class ApiClient {
  ApiClient({Dio? dio, FlutterSecureStorage? storage})
      : _dio = dio ?? Dio(),
        _storage = storage ?? const FlutterSecureStorage() {
    _dio.options
      ..baseUrl = Property.serverDomain
      ..connectTimeout = const Duration(seconds: 10)
      ..receiveTimeout = const Duration(seconds: 15)
      ..contentType = 'application/json'
      ..responseType = ResponseType.json;

    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final token = await _storage.read(key: _kSessionToken);
          if (token != null && token.isNotEmpty) {
            options.headers['Authorization'] = 'Bearer $token';
          }
          handler.next(options);
        },
        onError: (err, handler) async {
          if (err.response?.statusCode == 401) {
            await _storage.delete(key: _kSessionToken);
          }
          handler.next(err);
        },
      ),
    );
  }

  static const String _kSessionToken = 'session_token';

  final Dio _dio;
  final FlutterSecureStorage _storage;

  Dio get dio => _dio;

  Future<void> setSessionToken(String token) =>
      _storage.write(key: _kSessionToken, value: token);

  Future<void> clearSessionToken() => _storage.delete(key: _kSessionToken);

  Future<String?> readSessionToken() => _storage.read(key: _kSessionToken);
}
