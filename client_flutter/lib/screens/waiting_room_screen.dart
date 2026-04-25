import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../l10n/app_localizations.dart';
import '../state/auth.dart';
import '../state/lobby.dart';
import '../state/providers.dart';

/// 대기실 — 접속 유저 목록 + 방 만들기 + 친구 초대.
///
/// 안드 원본: `WaitingRoom.java` (415줄). UX 핵심:
/// - 유저 리스트 (닉네임 + 캐릭터)
/// - "대전방 만들기" 버튼 → 소켓 101
/// - 새로고침 버튼 → 소켓 100
/// - 친구 ID 직접 입력 → 소켓 107 (현 룸 보유 시)
/// - 다른 유저로부터 초대 받으면 다이얼로그 (수락/거절 → 소켓 103 / 무시)
class WaitingRoomScreen extends ConsumerStatefulWidget {
  const WaitingRoomScreen({super.key});

  @override
  ConsumerState<WaitingRoomScreen> createState() => _WaitingRoomScreenState();
}

class _WaitingRoomScreenState extends ConsumerState<WaitingRoomScreen>
    with WidgetsBindingObserver {
  bool _inviteSheetShown = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    Future<void>.microtask(
      () => ref.read(lobbyControllerProvider.notifier).connect(),
    );
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // 앱 lifecycle → WsClient 로 전달 (paused 시 close, resumed 시 reconnect)
    ref.read(wsClientProvider).onLifecycleChange(state);
    if (state == AppLifecycleState.resumed) {
      ref.read(lobbyControllerProvider.notifier).refreshUserList();
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  void _showInvite(BuildContext context, String fromUser, String roomName) {
    if (_inviteSheetShown) return;
    _inviteSheetShown = true;
    final l = AppLocalizations.of(context);
    showDialog<void>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l.notice),
        content: Text('$fromUser ${l.noticeMsgInvite}'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.pop(ctx);
              _inviteSheetShown = false;
              ref.read(lobbyControllerProvider.notifier).declineInvite();
            },
            child: Text(l.refuse),
          ),
          FilledButton(
            onPressed: () {
              Navigator.pop(ctx);
              _inviteSheetShown = false;
              ref.read(lobbyControllerProvider.notifier).acceptInvite();
            },
            child: Text(l.consent),
          ),
        ],
      ),
    );
  }

  Future<void> _inviteByIdDialog() async {
    final l = AppLocalizations.of(context);
    final controller = TextEditingController();
    final id = await showDialog<String>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l.invite),
        content: TextField(
          controller: controller,
          decoration: InputDecoration(labelText: l.friendid),
          autofocus: true,
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: Text(l.cancel),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(ctx, controller.text.trim()),
            child: Text(l.invite),
          ),
        ],
      ),
    );
    if (id != null && id.isNotEmpty) {
      // 우선 방을 만든 뒤 초대 — 안드 원본은 BattleRoom 진입 후에만 invite 가능
      ref.read(lobbyControllerProvider.notifier).createRoom();
      // createRoom 응답 도착 후 invite — 100ms 정도면 충분, 후속에서 await 패턴으로 개선
      await Future<void>.delayed(const Duration(milliseconds: 200));
      ref.read(lobbyControllerProvider.notifier).invite(id);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final lobby = ref.watch(lobbyControllerProvider);
    final auth = ref.watch(authControllerProvider);

    // 초대 도착 시 자동으로 다이얼로그
    ref.listen<LobbyState>(lobbyControllerProvider, (prev, next) {
      final p = prev?.waiting.invitedRoom;
      final n = next.waiting.invitedRoom;
      if (n != null && n != p) {
        final from = next.waiting.invitedBy ?? '';
        _showInvite(context, from, n);
      }
    });

    // battleRoom 진입 시 라우터 이동
    ref.listen<LobbyState>(lobbyControllerProvider, (prev, next) {
      if (prev?.battleRoom == null && next.battleRoom != null) {
        context.go('/battle');
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(l.waitingroom),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.refresh),
            tooltip: l.identifyOverlap,
            onPressed: () =>
                ref.read(lobbyControllerProvider.notifier).refreshUserList(),
          ),
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              await ref.read(lobbyControllerProvider.notifier).disconnect();
              await ref.read(authControllerProvider.notifier).logout();
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            _Header(
              myNick: auth.user?.userNick ?? '',
              connected: lobby.waiting.connected,
            ),
            Expanded(child: _UserList(users: lobby.waiting.users)),
            const Divider(height: 1),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: OutlinedButton.icon(
                      icon: const Icon(Icons.person_add_alt_1),
                      onPressed: _inviteByIdDialog,
                      label: Text(l.invite),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: FilledButton.icon(
                      icon: const Icon(Icons.add),
                      onPressed: () => ref
                          .read(lobbyControllerProvider.notifier)
                          .createRoom(),
                      label: Text(l.makebattleroom.replaceAll('\n', ' ')),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({required this.myNick, required this.connected});

  final String myNick;
  final bool connected;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    return Container(
      padding: const EdgeInsets.all(12),
      color: Theme.of(context).colorScheme.surfaceContainerLow,
      child: Row(
        children: <Widget>[
          Icon(
            connected ? Icons.wifi : Icons.wifi_off,
            color: connected
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.error,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              myNick,
              style: Theme.of(context).textTheme.titleMedium,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Text(
            connected ? '' : l.noticeMsgNetworkfail,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}

class _UserList extends ConsumerWidget {
  const _UserList({required this.users});

  final List<WaitingUser> users;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = AppLocalizations.of(context);
    if (users.isEmpty) {
      return Center(
        child: Text(
          l.noticeMsgNotUsers,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      );
    }
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (ctx, i) {
        final u = users[i];
        return ListTile(
          leading: CircleAvatar(child: Text('${u.character + 1}')),
          title: Text(u.userId),
          subtitle: Text('${l.id}: ${u.userId}'),
          trailing: FilledButton.tonal(
            onPressed: () {
              // 친구가 만든 방 이름은 userId 자체로 가정 (안드 원본 정책: enterBattleRoom(userId)).
              // 실제 방 이름은 createRoom 후 서버가 발급 → 친구가 invite 보내야 정확한 roomName 확보.
              // 직접 입장 시도 (이름 = userId) 는 다음 단계에서 정식 invite 플로우로 교체.
              ref.read(lobbyControllerProvider.notifier).enterRoom(u.userId);
            },
            child: Text(l.startgame),
          ),
        );
      },
    );
  }
}

