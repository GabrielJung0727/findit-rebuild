import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../api/api_client.dart';
import '../api/member_api.dart';

final apiClientProvider = Provider<ApiClient>((ref) => ApiClient());

final memberApiProvider = Provider<MemberApi>(
  (ref) => MemberApi(ref.watch(apiClientProvider)),
);
