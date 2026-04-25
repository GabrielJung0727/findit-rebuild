import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'l10n/app_localizations.dart';
import 'router.dart';
import 'state/auth.dart';

void main() {
  runApp(const ProviderScope(child: FinditApp()));
}

class FinditApp extends ConsumerStatefulWidget {
  const FinditApp({super.key});

  @override
  ConsumerState<FinditApp> createState() => _FinditAppState();
}

class _FinditAppState extends ConsumerState<FinditApp> {
  @override
  void initState() {
    super.initState();
    // 시작 시 자동 로그인 시도. 실패해도 silent — 라우터가 /login 으로 보냄.
    Future<void>.microtask(
      () => ref.read(authControllerProvider.notifier).tryAutoLogin(),
    );
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
