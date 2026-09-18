import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'api/push_service.dart';
import 'l10n/app_localizations.dart';
import 'router.dart';
import 'state/auth.dart';
import 'state/lobby.dart';
import 'state/providers.dart';
import 'util/legacy_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // 04-26.md §14 — 세로 고정 (안드 원본 디자인 + 게임 화면 비율 고려)
  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
  ]);
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
        // 로그인 분석 이벤트 — fire-and-forget
        ref.read(analyticsProvider).loginSuccess(
              userId: next.user!.userId,
              authType: next.user!.authType,
            );
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
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: LegacyColors.orangeBottom,
          primary: LegacyColors.orangeBottom,
          secondary: LegacyColors.yellowBottom,
          surface: LegacyColors.popupBg,
          onPrimary: Colors.white,
          onSurface: LegacyColors.textBrown,
        ),
        scaffoldBackgroundColor: LegacyColors.sky,
        appBarTheme: const AppBarTheme(
          backgroundColor: LegacyColors.popupBg,
          foregroundColor: LegacyColors.textBrown,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: LegacyColors.textBrown,
            fontWeight: FontWeight.w900,
            fontSize: 18,
          ),
          iconTheme: IconThemeData(color: LegacyColors.textBrown),
        ),
        textTheme: const TextTheme().apply(
          bodyColor: LegacyColors.textBrown,
          displayColor: LegacyColors.textBrown,
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(
            backgroundColor: LegacyColors.orangeBottom,
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontWeight: FontWeight.w900),
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(color: LegacyColors.border, width: 1.5),
            ),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            foregroundColor: LegacyColors.textBrown,
            side: const BorderSide(color: LegacyColors.border, width: 1.5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: LegacyColors.inputFill,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide:
                BorderSide(color: LegacyColors.inputBorder, width: 1.5),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide:
                BorderSide(color: LegacyColors.inputBorder, width: 1.5),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide:
                BorderSide(color: LegacyColors.orangeBottom, width: 2.0),
          ),
        ),
        dialogTheme: const DialogThemeData(
          backgroundColor: LegacyColors.popupBg,
          elevation: 6,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(14)),
            side: BorderSide(color: LegacyColors.border, width: 1.5),
          ),
          titleTextStyle: TextStyle(
            color: LegacyColors.textBrown,
            fontSize: 18,
            fontWeight: FontWeight.w900,
          ),
          contentTextStyle: TextStyle(
            color: LegacyColors.textBrown,
            fontSize: 14,
          ),
        ),
      ),
      // 04-26.md §14 — 다크모드 미지원 (게임 색상 일관성). OS 다크모드와 무관하게 light.
      themeMode: ThemeMode.light,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: router,
    );
  }
}

