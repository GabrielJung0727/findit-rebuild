import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'screens/guest_screen.dart';
import 'screens/join_screen.dart';
import 'screens/lobby_screen.dart';
import 'screens/login_screen.dart';
import 'state/auth.dart';

/// 단일 [GoRouter] 인스턴스 — Riverpod 상태 변화에 따라 redirect 재평가.
final routerProvider = Provider<GoRouter>(buildRouter);

/// 라우트 트리 + 인증 redirect.
///
/// - 비로그인: `/login`, `/login/join`, `/login/guest` 만 접근 가능
/// - 로그인: `/lobby` 로 자동 이동, 로그인 화면들은 차단
GoRouter buildRouter(Ref ref) {
  // Riverpod state 변경을 GoRouter refresh 로 전달
  final notifier = _RouterRefresh(ref);

  return GoRouter(
    initialLocation: '/login',
    refreshListenable: notifier,
    redirect: (context, state) {
      final loggedIn = ref.read(authControllerProvider).isLoggedIn;
      final atLogin = state.matchedLocation.startsWith('/login') ||
          state.matchedLocation == '/guest' ||
          state.matchedLocation == '/join';

      if (!loggedIn && !atLogin) return '/login';
      if (loggedIn && atLogin) return '/lobby';
      return null;
    },
    routes: <RouteBase>[
      GoRoute(
        path: '/login',
        builder: (_, __) => const LoginScreen(),
      ),
      GoRoute(
        path: '/join',
        builder: (_, __) => const JoinScreen(),
      ),
      GoRoute(
        path: '/guest',
        builder: (_, __) => const GuestScreen(),
      ),
      GoRoute(
        path: '/lobby',
        builder: (_, __) => const LobbyScreen(),
      ),
    ],
  );
}

/// `authControllerProvider` 변화 시 GoRouter 가 redirect 를 재실행하도록.
class _RouterRefresh extends ChangeNotifier {
  _RouterRefresh(Ref ref) {
    _sub = ref.listen<AuthState>(
      authControllerProvider,
      (_, __) => notifyListeners(),
      fireImmediately: false,
    );
  }
  late final ProviderSubscription<AuthState> _sub;

  @override
  void dispose() {
    _sub.close();
    super.dispose();
  }
}
