import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../util/property.dart';

/// 단일 [`Dio`] 인스턴스 보유자.
///
/// 인터셉터:
/// - 세션 토큰 자동 첨부 (`Authorization: Bearer <token>`) — flutter_secure_storage 에서 로드
/// - 401 시 토큰 폐기 + 등록된 [onUnauthorized] 콜백 호출 (라우터가 로그인 화면으로 이동)
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
            _onUnauthorized?.call();
          }
          handler.next(err);
        },
      ),
    );
  }

  static const String _kSessionToken = 'session_token';

  final Dio _dio;
  final FlutterSecureStorage _storage;
  void Function()? _onUnauthorized;

  Dio get dio => _dio;

  /// 401 발생 시 호출될 콜백 등록 (예: GoRouter `go('/login')`).
  void registerUnauthorizedHandler(void Function() handler) {
    _onUnauthorized = handler;
  }

  Future<void> setSessionToken(String token) =>
      _storage.write(key: _kSessionToken, value: token);

  Future<void> clearSessionToken() => _storage.delete(key: _kSessionToken);

  Future<String?> readSessionToken() => _storage.read(key: _kSessionToken);
}

/// 서버 공통 응답 result code — `server/src/util/codes.js` 와 일치.
class ResultCode {
  ResultCode._();
  static const String pass = '000';
  static const String noId = '101';
  static const String noPassword = '102';
  static const String alreadyJoined = '103';
}

/// 서버가 `result != '000'` 으로 응답할 때 던지는 예외.
class ApiResultException implements Exception {
  ApiResultException(this.code, this.body);
  final String code;
  final Map<String, dynamic> body;

  String? get reason => body['reason']?.toString();
  String? get error => body['error']?.toString();

  @override
  String toString() => 'ApiResultException(code=$code, reason=$reason, error=$error)';
}

/// 모든 wrapper 가 공유하는 공통 헬퍼.
///
/// JSON 응답을 [Map] 으로 캐스팅하고 `result` 필드를 검증.
/// `result == '000'` 이면 body 반환, 아니면 [ApiResultException] throw.
Map<String, dynamic> unwrapResult(Object? raw) {
  final body = _asMap(raw);
  final code = body['result']?.toString() ?? '';
  if (code == ResultCode.pass) return body;
  throw ApiResultException(code, body);
}

/// `result` 검사 없이 raw JSON 을 [Map] 으로 캐스팅.
/// (서버가 `result` 없이 `{list: [...]}` 만 돌려주는 일부 GET 용)
Map<String, dynamic> asMap(Object? raw) => _asMap(raw);

Map<String, dynamic> _asMap(Object? data) {
  if (data is Map<String, dynamic>) return data;
  if (data is Map) return data.cast<String, dynamic>();
  throw const FormatException('expected JSON object');
}
