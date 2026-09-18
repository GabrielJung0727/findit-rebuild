import 'package:dio/dio.dart';
import 'package:findit/api/api_client.dart';
import 'package:findit/util/property.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

  /// prefs mock 을 isolate 당 1회만 등록하기 위한 가드.
  static bool _prefsMockInstalled = false;

  factory TestApi.create() {
    // api_client.dart 의 _usePref(=macOS 호스트)는 세션 토큰을 SharedPreferences
    // 로 읽고/쓴다. flutter test 도 macOS(flutter_tester)에서 돌므로 같은 경로를
    // 타며, mock 이 없으면 MethodChannel 무응답으로 30s 타임아웃 / "Binding has
    // not yet been initialized" 가 난다. 바인딩 초기화 + 인메모리 prefs mock 으로 해소.
    //
    // mock 등록은 isolate 당 1회만 — 매 create() 마다 재설정하면 호출자가
    // create() 직전에 심어 둔 값(예: auth_test 의 자동로그인 자격증명)을 덮어쓴다.
    TestWidgetsFlutterBinding.ensureInitialized();
    if (!_prefsMockInstalled) {
      SharedPreferences.setMockInitialValues(<String, Object>{});
      _prefsMockInstalled = true;
    }
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
