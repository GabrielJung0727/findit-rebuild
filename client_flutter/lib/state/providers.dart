import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../api/analytics_api.dart';
import '../api/api_client.dart';
import '../api/catalog_api.dart';
import '../api/content_api.dart';
import '../api/game_api.dart';
import '../api/iap_api.dart';
import '../api/member_api.dart';
import '../api/push_api.dart';
import '../api/shop_api.dart';

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
final iapApiProvider = Provider<IapApi>(
  (ref) => IapApi(ref.watch(apiClientProvider)),
);
final pushApiProvider = Provider<PushApi>(
  (ref) => PushApi(ref.watch(apiClientProvider)),
);
