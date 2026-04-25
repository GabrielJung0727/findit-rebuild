import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../l10n/app_localizations.dart';

/// W1 부트스트랩용 placeholder. W2 에서 실제 로그인 폼/Guest/회원가입 흐름 구현.
class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(l.loginTitle)),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(l.appName, style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: 16),
              Text(l.loading),
            ],
          ),
        ),
      ),
    );
  }
}
