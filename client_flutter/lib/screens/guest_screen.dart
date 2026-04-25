import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../api/api_client.dart';
import '../l10n/app_localizations.dart';
import '../state/auth.dart';
import 'login_messages.dart';

/// Guest 입장 — 약관/안내 + 즉시 입장 버튼.
///
/// 정책: Guest 는 자동로그인/캐릭터 저장 X, 게임 진행 + 광고/컨텐츠 노출만.
/// 가입을 유도하기 위해 안내 문구 (`guestMsg`) 노출.
class GuestScreen extends ConsumerStatefulWidget {
  const GuestScreen({super.key});

  @override
  ConsumerState<GuestScreen> createState() => _GuestScreenState();
}

class _GuestScreenState extends ConsumerState<GuestScreen> {
  bool _submitting = false;

  Future<void> _enter() async {
    final l = AppLocalizations.of(context);
    setState(() => _submitting = true);
    try {
      // deviceId 는 후속 — 현재는 random guest_<rand12> 가 서버에서 발급됨.
      await ref.read(authControllerProvider.notifier).guest();
    } on ApiResultException catch (e) {
      if (!mounted) return;
      _showNotice(loginErrorMessage(l, e.code));
    } catch (_) {
      if (!mounted) return;
      _showNotice(l.noticeMsgNetworkfail);
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
      appBar: AppBar(title: Text(l.guestTitle)),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Spacer(),
              Icon(
                Icons.person_outline,
                size: 96,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(height: 24),
              Text(
                l.guestMsg,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 8),
              Text(
                l.guestMsgLogin.trim(),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const Spacer(),
              FilledButton(
                onPressed: _submitting ? null : _enter,
                child: _submitting
                    ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : Text(l.admission),
              ),
              const SizedBox(height: 8),
              OutlinedButton(
                onPressed: _submitting ? null : () => Navigator.pop(context),
                child: Text(l.cancel),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
