import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../api/api_client.dart';
import '../l10n/app_localizations.dart';
import '../state/auth.dart';
import '../util/property.dart';
import 'login_messages.dart';

/// 이메일 + 비밀번호 + 자동로그인 토글 — 로그인 / 회원가입 / Guest 진입의 허브.
class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();
  bool _autoLogin = false;
  bool _obscure = true;

  @override
  void dispose() {
    _emailCtrl.dispose();
    _passwordCtrl.dispose();
    super.dispose();
  }

  Future<void> _login() async {
    if (!(_formKey.currentState?.validate() ?? false)) return;
    final l = AppLocalizations.of(context);
    try {
      await ref.read(authControllerProvider.notifier).login(
            userId: _emailCtrl.text.trim(),
            userPass: _passwordCtrl.text,
            autoLogin: _autoLogin,
          );
    } on ApiResultException catch (e) {
      if (!mounted) return;
      _showNotice(loginErrorMessage(l, e.code));
    } catch (_) {
      if (!mounted) return;
      _showNotice(l.noticeMsgNetworkfail);
    }
  }

  void _showNotice(String message) {
    final l = AppLocalizations.of(context);
    showDialog<void>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l.notice),
        content: Text(message),
        actions: <Widget>[
          TextButton(onPressed: () => Navigator.pop(ctx), child: Text(l.ok)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final auth = ref.watch(authControllerProvider);
    final fbEnabled = Property.facebookAppId.isNotEmpty;

    return Scaffold(
      appBar: AppBar(title: Text(l.loginTitle)),
      body: SafeArea(
        child: AbsorbPointer(
          absorbing: auth.loading,
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    l.appName,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 24),
                  TextFormField(
                    controller: _emailCtrl,
                    keyboardType: TextInputType.emailAddress,
                    autocorrect: false,
                    autofillHints: const <String>[AutofillHints.email],
                    decoration: InputDecoration(
                      labelText: l.email,
                      prefixIcon: const Icon(Icons.alternate_email),
                    ),
                    validator: (v) => emailValidator(l, v),
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    controller: _passwordCtrl,
                    obscureText: _obscure,
                    autofillHints: const <String>[AutofillHints.password],
                    decoration: InputDecoration(
                      labelText: l.password,
                      prefixIcon: const Icon(Icons.lock_outline),
                      suffixIcon: IconButton(
                        icon: Icon(_obscure ? Icons.visibility : Icons.visibility_off),
                        onPressed: () => setState(() => _obscure = !_obscure),
                      ),
                    ),
                    validator: (v) => passwordValidator(l, v),
                    onFieldSubmitted: (_) => _login(),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: <Widget>[
                      Checkbox(
                        value: _autoLogin,
                        onChanged: (v) => setState(() => _autoLogin = v ?? false),
                      ),
                      Text(l.autologin),
                    ],
                  ),
                  const SizedBox(height: 8),
                  FilledButton(
                    onPressed: auth.loading ? null : _login,
                    child: auth.loading
                        ? const SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                        : Text(l.login),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () => context.push('/join'),
                          child: Text(l.join),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () => context.push('/guest'),
                          child: Text(l.guestAdmission),
                        ),
                      ),
                    ],
                  ),
                  if (fbEnabled) ...<Widget>[
                    const SizedBox(height: 16),
                    OutlinedButton.icon(
                      onPressed: null,
                      icon: const Icon(Icons.facebook),
                      label: const Text('Facebook'),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
