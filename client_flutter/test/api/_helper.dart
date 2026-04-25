import 'package:dio/dio.dart';
import 'package:findit/api/api_client.dart';
import 'package:findit/util/property.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

/// In-memory secure storage stub — 실 Keychain/Keystore 없이 토큰 저장 흉내.
class _InMemoryStorage extends FlutterSecureStorage {
  _InMemoryStorage() : super();
  final Map<String, String> _store = <String, String>{};

  @override
  Future<String?> read({
    required String key,
    IOSOptions? iOptions,
    AndroidOptions? aOptions,
    LinuxOptions? lOptions,
    WebOptions? webOptions,
    MacOsOptions? mOptions,
    WindowsOptions? wOptions,
  }) async => _store[key];

  @override
  Future<void> write({
    required String key,
    required String? value,
    IOSOptions? iOptions,
    AndroidOptions? aOptions,
    LinuxOptions? lOptions,
    WebOptions? webOptions,
    MacOsOptions? mOptions,
    WindowsOptions? wOptions,
  }) async {
    if (value == null) {
      _store.remove(key);
    } else {
      _store[key] = value;
    }
  }

  @override
  Future<void> delete({
    required String key,
    IOSOptions? iOptions,
    AndroidOptions? aOptions,
    LinuxOptions? lOptions,
    WebOptions? webOptions,
    MacOsOptions? mOptions,
    WindowsOptions? wOptions,
  }) async {
    _store.remove(key);
  }
}

/// 테스트 fixture — Dio + DioAdapter + ApiClient 한 번에 셋업.
class TestApi {
  TestApi._(this.client, this.adapter);

  final ApiClient client;
  final DioAdapter adapter;

  factory TestApi.create() {
    final dio = Dio(BaseOptions(baseUrl: Property.serverDomain));
    // UrlRequestMatcher: 경로 + 메서드 만으로 매칭. body/headers 비교 생략 →
    // wrapper 테스트는 "서버에 어떤 URL 을 호출하는가" 만 검증하면 충분.
    // body 검증이 필요한 시점이 오면 DioAdapter() 기본(FullHttpRequestMatcher) 으로 전환.
    final adapter = DioAdapter(
      dio: dio,
      matcher: const UrlRequestMatcher(matchMethod: true),
    );
    final client = ApiClient(dio: dio, storage: _InMemoryStorage());
    return TestApi._(client, adapter);
  }

  /// http_mock_adapter 는 baseUrl 을 stripping 한 상대 경로로 매칭 — 그대로 반환.
  String url(String path) => path.startsWith('/') ? path.substring(1) : path;
}
