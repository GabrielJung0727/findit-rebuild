import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../api/api_client.dart';
import '../l10n/app_localizations.dart';
import '../state/auth.dart';
import '../state/providers.dart';
import '../util/asset_paths.dart';
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
    return Scaffold(
      appBar: AppBar(title: Text(l.join)),
      body: SafeArea(
        child: AbsorbPointer(
          absorbing: _submitting,
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  TextFormField(
                    controller: _emailCtrl,
                    keyboardType: TextInputType.emailAddress,
                    autocorrect: false,
                    decoration: InputDecoration(
                      labelText: l.email,
                      prefixIcon: const Icon(Icons.alternate_email),
                      helperText: _dupeHelper(_emailDupeStatus),
                    ),
                    validator: (v) => emailValidator(l, v),
                    onChanged: (_) => setState(() => _emailDupeStatus = null),
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    controller: _nickCtrl,
                    decoration: InputDecoration(
                      labelText: l.nickname,
                      prefixIcon: const Icon(Icons.person_outline),
                      helperText: _dupeHelper(_nickDupeStatus),
                    ),
                    validator: (v) => nicknameValidator(l, v),
                    onChanged: (_) => setState(() => _nickDupeStatus = null),
                  ),
                  const SizedBox(height: 8),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton.icon(
                      icon: const Icon(Icons.search),
                      onPressed: _submitting ? null : _checkUserId,
                      label: Text(l.identifyOverlap),
                    ),
                  ),
                  const SizedBox(height: 4),
                  TextFormField(
                    controller: _passCtrl,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: l.password,
                      prefixIcon: const Icon(Icons.lock_outline),
                    ),
                    validator: (v) => passwordValidator(l, v),
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    controller: _passConfirmCtrl,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: l.identifyPassword,
                      prefixIcon: const Icon(Icons.lock_outline),
                    ),
                    validator: (v) => confirmPasswordValidator(l, v, _passCtrl.text),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    l.notice,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  const SizedBox(height: 8),
                  _CharacterPicker(
                    selected: _character,
                    onSelected: (i) => setState(() => _character = i),
                  ),
                  const SizedBox(height: 24),
                  FilledButton(
                    onPressed: _submitting ? null : _submit,
                    child: _submitting
                        ? const SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                        : Text(l.join1),
                  ),
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
                color: Theme.of(context).colorScheme.surfaceContainerHighest,
                border: Border.all(
                  color: selected == i
                      ? Theme.of(context).colorScheme.primary
                      : Colors.transparent,
                  width: 3,
                ),
              ),
              clipBehavior: Clip.antiAlias,
              child: Image.asset(
                AssetPaths.characterHead(i),
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => Center(
                  child: Text(
                    '${i + 1}',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
