import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../l10n/app_localizations.dart';
import '../state/providers.dart';

/// 공지사항 — 서버 [`/app/member/notice.json`](../../../../server/src/routes/member.js)
/// 가 HTML 을 그대로 반환. `flutter_html` 위젯이 렌더.
class NoticeScreen extends ConsumerStatefulWidget {
  const NoticeScreen({super.key});

  @override
  ConsumerState<NoticeScreen> createState() => _NoticeScreenState();
}

class _NoticeScreenState extends ConsumerState<NoticeScreen> {
  late Future<String> _future;

  @override
  void initState() {
    super.initState();
    _future = ref.read(contentApiProvider).noticeHtml();
  }

  Future<void> _refresh() async {
    setState(() {
      _future = ref.read(contentApiProvider).noticeHtml();
    });
    await _future;
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(l.notice)),
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: _refresh,
          child: FutureBuilder<String>(
            future: _future,
            builder: (ctx, snap) {
              if (snap.connectionState != ConnectionState.done) {
                return const Center(child: CircularProgressIndicator());
              }
              if (snap.hasError) {
                return ListView(children: <Widget>[
                  const SizedBox(height: 80),
                  Center(child: Text(l.noticeMsgNetworkfail)),
                ],);
              }
              return SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Html(data: snap.data ?? ''),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
