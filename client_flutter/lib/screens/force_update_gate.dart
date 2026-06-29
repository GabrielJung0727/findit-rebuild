import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../state/providers.dart';
import '../util/constants.dart';

/// 강제 업데이트 게이트 — [child] 를 그대로 렌더하되, 최초 1회 서버 `appConfig.json`
/// 을 조회해 [kAppBuildNumber] < minBuild 이면 닫을 수 없는 업데이트 다이얼로그를 띄운다.
///
/// 설정을 못 받으면(네트워크 실패 등) 게이트를 통과시킨다(앱은 계속 사용 가능).
class ForceUpdateGate extends ConsumerStatefulWidget {
  const ForceUpdateGate({super.key, required this.child});

  final Widget child;

  @override
  ConsumerState<ForceUpdateGate> createState() => _ForceUpdateGateState();
}

class _ForceUpdateGateState extends ConsumerState<ForceUpdateGate> {
  bool _checked = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _check());
  }

  Future<void> _check() async {
    if (_checked) return;
    _checked = true;
    try {
      final cfg = await ref.read(memberApiProvider).appConfig();
      final minBuild = (cfg['minBuild'] as num?)?.toInt() ?? 1;
      if (kAppBuildNumber >= minBuild || !mounted) return;
      final raw = cfg['message'] as String?;
      final msg = (raw != null && raw.isNotEmpty)
          ? raw
          : '최신 버전으로 업데이트가 필요합니다. 스토어에서 업데이트해 주세요.';
      await showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (ctx) => PopScope(
          canPop: false,
          child: AlertDialog(
            title: const Text('업데이트 필요'),
            content: Text(msg),
          ),
        ),
      );
    } catch (_) {/* 설정 조회 실패 → 게이트 통과 */}
  }

  @override
  Widget build(BuildContext context) => widget.child;
}
