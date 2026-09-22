import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../api/api_client.dart';
import '../l10n/app_localizations.dart';
import '../state/auth.dart';
import '../util/legacy_theme.dart';
import '../util/legacy_widgets.dart';
import '../util/property.dart';
import 'login_messages.dart';

/// 이메일 + 비밀번호 + 자동로그인 토글 — 로그인 / 회원가입 / Guest 진입의 허브.
///
/// 디자인: 원본 안드로이드 `decoded_apk/res/layout/login.xml` 의 레이아웃을
/// 그대로 모사 — `main_bg.png` 위에 인풋 + Login 버튼 + Auto-login 체크박스 +
/// JOIN / GUEST 버튼 (오른쪽 컬럼).
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
      barrierColor: Colors.black54,
      builder: (ctx) => Dialog(
        backgroundColor: Colors.transparent,
        elevation: 0,
        child: LegacyPopup(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                l.notice,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                  color: LegacyColors.textBrown,
                ),
              ),
              const SizedBox(height: 12),
              Text(message, style: LegacyTextStyles.body),
              const SizedBox(height: 16),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () => Navigator.pop(ctx),
                  child: Text(
                    l.ok,
                    style: const TextStyle(
                      color: LegacyColors.orangeBottom,
                      fontWeight: FontWeight.w900,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final auth = ref.watch(authControllerProvider);
    final fbEnabled = Property.facebookAppId.isNotEmpty;

    return Scaffold(
      body: LegacyBackground(
        child: AbsorbPointer(
          absorbing: auth.loading,
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  // 상단 타이틀 영역 — main_bg.png 의 "Find it! the Battle" 부분이
                  // 이미 배경에 있으므로 여기는 화면 상단 여백.
                  const SizedBox(height: 200),
                  // login_text_login.png — "LOG IN" 헤더
                  Center(
                    child: Image.asset(
                      'assets/legacy/login_text_login.png',
                      height: 28,
                    ),
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    controller: _emailCtrl,
                    keyboardType: TextInputType.emailAddress,
                    autocorrect: false,
                    autofillHints: const <String>[AutofillHints.email],
                    style: LegacyTextStyles.body,
                    decoration: LegacyInputDecoration(hintText: l.email),
                    validator: (v) => emailValidator(l, v),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _passwordCtrl,
                    obscureText: _obscure,
                    autofillHints: const <String>[AutofillHints.password],
                    style: LegacyTextStyles.body,
                    decoration: LegacyInputDecoration(
                      hintText: l.password,
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscure ? Icons.visibility : Icons.visibility_off,
                          color: LegacyColors.inputBorder,
                        ),
                        onPressed: () => setState(() => _obscure = !_obscure),
                      ),
                    ),
                    validator: (v) => passwordValidator(l, v),
                    onFieldSubmitted: (_) => _login(),
                  ),
                  const SizedBox(height: 6),
                  // 자동로그인 체크 — login_check_on / login_check_off + login_text_autologin
                  GestureDetector(
                    onTap: () => setState(() => _autoLogin = !_autoLogin),
                    behavior: HitTestBehavior.opaque,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Row(
                        children: <Widget>[
                          Image.asset(
                            _autoLogin
                                ? 'assets/legacy/login_check_on.png'
                                : 'assets/legacy/login_check_off.png',
                            width: 28,
                            height: 28,
                          ),
                          const SizedBox(width: 6),
                          Image.asset(
                            'assets/legacy/login_text_autologin.png',
                            height: 22,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  // 메인 LOG IN 버튼 (login_btn_login.png)
                  Center(
                    child: LegacyImageButton(
                      asset: 'assets/legacy/login_btn_login.png',
                      onPressed: auth.loading ? null : _login,
                      height: 64,
                    ),
                  ),
                  const SizedBox(height: 14),
                  // JOIN / GUEST 가로 배치
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: LegacyImageButton(
                          asset: 'assets/legacy/login_btn_join.png',
                          onPressed: () => context.push('/join'),
                          height: 56,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: LegacyImageButton(
                          asset: 'assets/legacy/login_btn_guest.png',
                          onPressed: () => context.push('/guest'),
                          height: 56,
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
                  if (auth.loading) ...<Widget>[
                    const SizedBox(height: 16),
                    const Center(
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                          LegacyColors.orangeBottom,
                        ),
                      ),
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
