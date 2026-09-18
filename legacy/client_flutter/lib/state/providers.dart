import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../api/analytics_api.dart';
import '../api/analytics_helper.dart';
import '../api/api_client.dart';
import '../api/catalog_api.dart';
import '../api/content_api.dart';
import '../api/game_api.dart';
import '../api/iap_api.dart';
import '../api/iap_service.dart';
import '../api/member_api.dart';
import '../api/push_api.dart';
import '../api/push_service.dart';
import '../api/shop_api.dart';
import '../api/ws_client.dart';

/// 단일 [`Dio`] 인스턴스 — 모든 wrapper 가 공유. ProviderScope 단위로 1개.
final apiClientProvider = Provider<ApiClient>((ref) => ApiClient());

final memberApiProvider = Provider<MemberApi>(
  (ref) => MemberApi(ref.watch(apiClientProvider)),
);
final shopApiProvider = Provider<ShopApi>(
  (ref) => ShopApi(ref.watch(apiClientProvider)),
);
final catalogApiProvider = Provider<CatalogApi>(
  (ref) => CatalogApi(ref.watch(apiClientProvider)),
);
final contentApiProvider = Provider<ContentApi>(
  (ref) => ContentApi(ref.watch(apiClientProvider)),
);
final gameApiProvider = Provider<GameApi>(
  (ref) => GameApi(ref.watch(apiClientProvider)),
);
final analyticsApiProvider = Provider<AnalyticsApi>(
  (ref) => AnalyticsApi(ref.watch(apiClientProvider)),
);

/// 도메인 이벤트 헬퍼 — 화면/컨트롤러가 `loginSuccess` / `gameStart` 등 named 메서드 호출.
final analyticsProvider = Provider<AnalyticsHelper>(
  (ref) => AnalyticsHelper(ref.watch(analyticsApiProvider)),
);
final iapApiProvider = Provider<IapApi>(
  (ref) => IapApi(ref.watch(apiClientProvider)),
);

/// 인앱 결제 서비스 — 단일 인스턴스. 앱 시작 시 init() 호출 (로그인 후 userId 전달).
final iapServiceProvider = Provider<IapService>((ref) {
  final svc = IapService(ref.watch(iapApiProvider));
  ref.onDispose(svc.dispose);
  return svc;
});
final pushApiProvider = Provider<PushApi>(
  (ref) => PushApi(ref.watch(apiClientProvider)),
);

/// FCM 푸시 서비스 — 단일 인스턴스. 로그인 후 init(userId) 호출.
final pushServiceProvider = Provider<PushService>((ref) {
  final svc = PushService(ref.watch(pushApiProvider));
  ref.onDispose(svc.dispose);
  return svc;
});

/// 멀티플레이 WebSocket — 단일 인스턴스. 인증 필요 시점에 `connect()` 호출.
final wsClientProvider = Provider<WsClient>((ref) {
  final client = WsClient();
  ref.onDispose(() => client.dispose());
  return client;
});
