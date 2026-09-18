import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../api/api_client.dart';
import '../l10n/app_localizations.dart';
import '../state/auth.dart';
import '../util/legacy_theme.dart';
import '../util/legacy_widgets.dart';
import 'login_messages.dart';

/// Guest 입장 — 약관/안내 + 즉시 입장 버튼.
///
/// 디자인: 원본 안드 톤 — `main_bg.png` 위에 베이지 popup, 노랑 GUEST 버튼.
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
    return Scaffold(
      body: LegacyBackground(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // 상단 뒤로가기 버튼
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    color: LegacyColors.textBrown,
                    size: 22,
                  ),
                  onPressed: () => Navigator.maybePop(context),
                ),
              ),
              const SizedBox(height: 160),
              // 안내 popup
              LegacyPopup(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      l.guestTitle,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                        color: LegacyColors.textBrown,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      l.guestMsg,
                      textAlign: TextAlign.center,
                      style: LegacyTextStyles.body,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      l.guestMsgLogin.trim(),
                      textAlign: TextAlign.center,
                      style: LegacyTextStyles.body.copyWith(
                        color: LegacyColors.orangeBottom,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              // 노랑 GUEST 버튼 — 원본 login_btn_guest.png
              Center(
                child: _submitting
                    ? const SizedBox(
                        height: 60,
                        child: Center(
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              LegacyColors.yellowBottom,
                            ),
                          ),
                        ),
                      )
                    : LegacyImageButton(
                        asset: 'assets/legacy/login_btn_guest.png',
                        onPressed: _enter,
                        height: 64,
                      ),
              ),
              const SizedBox(height: 12),
              LegacyGradientButton(
                label: l.cancel,
                color: LegacyButtonColor.yellow,
                onPressed: _submitting
                    ? null
                    : () => Navigator.maybePop(context),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
