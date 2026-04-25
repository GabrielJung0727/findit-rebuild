import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'api/push_service.dart';
import 'l10n/app_localizations.dart';
import 'router.dart';
import 'state/auth.dart';
import 'state/lobby.dart';
import 'state/providers.dart';

void main() {
  runApp(const ProviderScope(child: FinditApp()));
}

class FinditApp extends ConsumerStatefulWidget {
  const FinditApp({super.key});

  @override
  ConsumerState<FinditApp> createState() => _FinditAppState();
}

class _FinditAppState extends ConsumerState<FinditApp> {
  ProviderSubscription<AuthState>? _authSub;

  @override
  void initState() {
    super.initState();

    // 시작 시 자동 로그인 시도. 실패해도 silent — 라우터가 /login 으로 보냄.
    Future<void>.microtask(
      () => ref.read(authControllerProvider.notifier).tryAutoLogin(),
    );

    // 로그인 성공 시 푸시 서비스 init (FCM 토큰 등록 + 핸들러 부착).
    // 한 번만 init — 이후 토큰 갱신은 PushService 내부 onTokenRefresh 가 처리.
    _authSub = ref.listenManual<AuthState>(authControllerProvider, (prev, next) {
      final wasIn = prev?.isLoggedIn ?? false;
      if (!wasIn && next.isLoggedIn) {
        unawaited(_initPushAfterLogin(next.user!.userId));
      }
      if (wasIn && !next.isLoggedIn) {
        unawaited(ref.read(pushServiceProvider).dispose());
      }
    });
  }

  Future<void> _initPushAfterLogin(String userId) async {
    await ref.read(pushServiceProvider).init(userId: userId);
    if (!mounted) return;
    // 알림 이벤트 → 라우터 deep link
    ref.read(pushServiceProvider).events.listen(_handlePushEvent);
  }

  void _handlePushEvent(PushEvent ev) {
    final router = ref.read(routerProvider);
    // 초대 알림(opened) → /waiting 으로 가서 invite 정보 적용 (data.from / data.roomName)
    if (ev.type == 'invite' && (ev.opened || ev.fromTerminated)) {
      final from = ev.data['from'] ?? '';
      final room = ev.data['roomName'] ?? '';
      if (room.isNotEmpty) {
        // LobbyController 에 초대 상태 주입 → WaitingRoomScreen 의 자동 다이얼로그가 처리
        ref.read(lobbyControllerProvider.notifier).injectInviteFromPush(from, room);
      }
      router.go('/waiting');
    } else if (ev.opened || ev.fromTerminated) {
      // 일반 알림 클릭 → 공지 화면
      router.go('/notice');
    }
    // 포그라운드 (opened=false, terminated=false) 는 추후 in-app banner 표시 예정
  }

  @override
  void dispose() {
    _authSub?.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      onGenerateTitle: (ctx) => AppLocalizations.of(ctx).appName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF54443B)),
        useMaterial3: true,
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: router,
    );
  }
}

