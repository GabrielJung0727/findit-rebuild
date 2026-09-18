import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../api/api_client.dart';
import '../l10n/app_localizations.dart';
import '../state/auth.dart';
import '../state/providers.dart';
import '../util/asset_paths.dart';
import '../util/legacy_theme.dart';
import '../util/legacy_widgets.dart';
import 'login_messages.dart';

/// 회원가입 폼 — 이메일·비번·비번확인·닉네임·캐릭터(0~2) + 중복확인.
///
/// 서버 `join.json` 의 검증 규칙과 동일한 클라 측 1차 검증 후 호출.
/// recaptchaToken 미설정 시 서버 미들웨어가 no-op (개발).
class JoinScreen extends ConsumerStatefulWidget {
  const JoinScreen({super.key});

  @override
  ConsumerState<JoinScreen> createState() => _JoinScreenState();
}

class _JoinScreenState extends ConsumerState<JoinScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailCtrl = TextEditingController();
  final _passCtrl = TextEditingController();
  final _passConfirmCtrl = TextEditingController();
  final _nickCtrl = TextEditingController();
  int _character = 0;
  bool _submitting = false;
  String? _emailDupeStatus; // 'available' / 'taken' / null
  String? _nickDupeStatus;

  @override
  void dispose() {
    _emailCtrl.dispose();
    _passCtrl.dispose();
    _passConfirmCtrl.dispose();
    _nickCtrl.dispose();
    super.dispose();
  }

  Future<void> _checkUserId() async {
    final l = AppLocalizations.of(context);
    final email = _emailCtrl.text.trim();
    final nick = _nickCtrl.text.trim();
    if (email.isEmpty && nick.isEmpty) return;
    setState(() => _submitting = true);
    try {
      final api = ref.read(memberApiProvider);
      final body = await api.checkUserId(
        userId: email.isEmpty ? null : email,
        userNick: nick.isEmpty ? null : nick,
      );
      final emailRes = body['userId'] as Map<String, dynamic>?;
      final nickRes = body['userNick'] as Map<String, dynamic>?;
      setState(() {
        _emailDupeStatus = _statusOf(emailRes);
        _nickDupeStatus = _statusOf(nickRes);
      });
      if (!mounted) return;
      if (_emailDupeStatus == 'available' && _nickDupeStatus != 'taken') {
        _showNotice(l.noticeMsgUseableid);
      } else if (_emailDupeStatus == 'taken' || _nickDupeStatus == 'taken') {
        _showNotice(l.noticeMsgAlreadyid);
      }
    } catch (_) {
      if (!mounted) return;
      _showNotice(l.noticeMsgNetworkfail);
    } finally {
      if (mounted) setState(() => _submitting = false);
    }
  }

  String? _statusOf(Map<String, dynamic>? entry) {
    if (entry == null) return null;
    if (entry['valid'] != true) return 'invalid';
    return entry['taken'] == true ? 'taken' : 'available';
  }

  Future<void> _submit() async {
    if (!(_formKey.currentState?.validate() ?? false)) return;
    final l = AppLocalizations.of(context);
    setState(() => _submitting = true);
    try {
      final api = ref.read(memberApiProvider);
      await api.join(
        userId: _emailCtrl.text.trim(),
        userPass: _passCtrl.text,
        userNick: _nickCtrl.text.trim(),
        userCharacter: _character,
        // recaptchaToken: TODO §5.recaptcha — 실 site key 발급 후 enterprise.execute() 토큰 첨부
      );
      // 가입 성공 → 자동 로그인 (서버 join.json 은 token 발급 안 함, 별도 login.json 호출)
      await ref.read(authControllerProvider.notifier).login(
            userId: _emailCtrl.text.trim(),
            userPass: _passCtrl.text,
            autoLogin: true,
          );
      if (!mounted) return;
      // 라우터 redirect 가 lobby 로 이동시킴 — 명시적 pop 으로 join 스택 정리
      while (context.canPop()) {
        context.pop();
      }
    } on ApiResultException catch (e) {
      if (!mounted) return;
      _showNotice(joinErrorMessage(l, e.code, field: e.body['field'] as String?));
    } catch (_) {
      if (!mounted) return;
      _showNotice(l.noticeMsgNetworkerrorJoin);
    } finally {
      if (mounted) setState(() => _submitting = false);
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
              Text(l.notice,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: LegacyColors.textBrown)),
              const SizedBox(height: 12),
              Text(message, style: LegacyTextStyles.body),
              const SizedBox(height: 16),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () => Navigator.pop(ctx),
                  child: Text(l.ok,
                      style: const TextStyle(
                          color: LegacyColors.orangeBottom,
                          fontWeight: FontWeight.w900)),
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
    return Scaffold(
      body: LegacyBackground(
        child: AbsorbPointer(
          absorbing: _submitting,
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      IconButton(
                        icon: const Icon(Icons.arrow_back_ios_new,
                            color: LegacyColors.textBrown),
                        onPressed: () => Navigator.maybePop(context),
                      ),
                      const Spacer(),
                      Image.asset('assets/legacy/join_title.png', height: 32),
                      const Spacer(),
                      const SizedBox(width: 48),
                    ],
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _emailCtrl,
                    keyboardType: TextInputType.emailAddress,
                    autocorrect: false,
                    style: LegacyTextStyles.body,
                    decoration: LegacyInputDecoration(hintText: l.email),
                    validator: (v) => emailValidator(l, v),
                    onChanged: (_) => setState(() => _emailDupeStatus = null),
                  ),
                  if (_dupeHelper(_emailDupeStatus) != null)
                    Padding(
                      padding: const EdgeInsets.only(top: 4, left: 4),
                      child: Text(_dupeHelper(_emailDupeStatus)!,
                          style: LegacyTextStyles.body.copyWith(
                              fontSize: 12,
                              color: _emailDupeStatus == 'taken'
                                  ? Colors.red.shade700
                                  : Colors.green.shade700)),
                    ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _nickCtrl,
                    style: LegacyTextStyles.body,
                    decoration: LegacyInputDecoration(hintText: l.nickname),
                    validator: (v) => nicknameValidator(l, v),
                    onChanged: (_) => setState(() => _nickDupeStatus = null),
                  ),
                  if (_dupeHelper(_nickDupeStatus) != null)
                    Padding(
                      padding: const EdgeInsets.only(top: 4, left: 4),
                      child: Text(_dupeHelper(_nickDupeStatus)!,
                          style: LegacyTextStyles.body.copyWith(
                              fontSize: 12,
                              color: _nickDupeStatus == 'taken'
                                  ? Colors.red.shade700
                                  : Colors.green.shade700)),
                    ),
                  const SizedBox(height: 6),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton.icon(
                      icon: const Icon(Icons.search,
                          color: LegacyColors.orangeBottom),
                      onPressed: _submitting ? null : _checkUserId,
                      label: Text(l.identifyOverlap,
                          style: const TextStyle(
                              color: LegacyColors.orangeBottom,
                              fontWeight: FontWeight.w700)),
                    ),
                  ),
                  TextFormField(
                    controller: _passCtrl,
                    obscureText: true,
                    style: LegacyTextStyles.body,
                    decoration: LegacyInputDecoration(hintText: l.password),
                    validator: (v) => passwordValidator(l, v),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _passConfirmCtrl,
                    obscureText: true,
                    style: LegacyTextStyles.body,
                    decoration:
                        LegacyInputDecoration(hintText: l.identifyPassword),
                    validator: (v) =>
                        confirmPasswordValidator(l, v, _passCtrl.text),
                  ),
                  const SizedBox(height: 16),
                  _CharacterPicker(
                    selected: _character,
                    onSelected: (i) => setState(() => _character = i),
                  ),
                  const SizedBox(height: 20),
                  LegacyImageButton(
                    asset: 'assets/legacy/join_btn_join.png',
                    onPressed: _submitting ? null : _submit,
                    height: 60,
                  ),
                  if (_submitting) ...<Widget>[
                    const SizedBox(height: 12),
                    const Center(
                      child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                              LegacyColors.orangeBottom)),
                    ),
                  ],
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  String? _dupeHelper(String? status) {
    final l = AppLocalizations.of(context);
    switch (status) {
      case 'available':
        return l.noticeMsgUseableid;
      case 'taken':
        return l.noticeMsgAlreadyid;
    }
    return null;
  }
}

/// 캐릭터 0~2 선택 — 서버 `validateCharacter` 와 일치. 실 캐릭터 이미지는 §13 자산 입수 후.
class _CharacterPicker extends StatelessWidget {
  const _CharacterPicker({required this.selected, required this.onSelected});

  final int selected;
  final ValueChanged<int> onSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        for (var i = 0; i < 3; i++)
          GestureDetector(
            onTap: () => onSelected(i),
            child: Container(
              width: 72,
              height: 72,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withValues(alpha: 0.9),
                border: Border.all(
                  color: selected == i
                      ? LegacyColors.orangeBottom
                      : LegacyColors.border.withValues(alpha: 0.4),
                  width: selected == i ? 3 : 1.5,
                ),
              ),
              clipBehavior: Clip.antiAlias,
              child: Image.asset(
                AssetPaths.characterHead(i),
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => Center(
                  child: Text(
                    '${i + 1}',
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w900,
                      color: LegacyColors.textBrown,
                    ),
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
