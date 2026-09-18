import 'dart:async';
import 'dart:io';

import 'package:findit/api/member_api.dart';
import 'package:findit/api/ws_client.dart';
import 'package:findit/state/auth.dart';
import 'package:findit/state/lobby.dart';
import 'package:findit/state/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import '../api/_helper.dart';

/// 작은 in-process WS echo 서버 — handlers.js 의 100/101/103 응답 흉내.
///
/// 정밀한 서버 시뮬레이션은 server/test 가 담당. 여기서는 Lobby 의
/// **수신 프레임 → state 전이** 만 검증.
class _FakeWsServer {
  late HttpServer _http;
  WebSocket? _peer;
  int _roomCounter = 0;

  Future<int> start() async {
    _http = await HttpServer.bind(InternetAddress.loopbackIPv4, 0);
    _http.transform(WebSocketTransformer()).listen((ws) {
      _peer = ws;
      ws.listen((raw) {
        if (raw is! String) return;
        final parts = raw.split('|');
        final code = parts.length > 1 ? parts[1] : '';
        switch (code) {
          case '100':
            ws.add('|100|000|2|alice,0;bob,1|2|alice,0;bob,1');
            break;
          case '101':
            _roomCounter++;
            ws.add('|101|000|@room_$_roomCounter');
            break;
          case '103':
            ws.add('|103|000|2'); // 상대 캐릭터 = 2
            break;
        }
      });
    });
    return _http.port;
  }

  void pushInvite(String fromUser, String room) {
    _peer?.add('|107|000|$fromUser|$room');
  }

  void pushOpponentReady(String character) {
    _peer?.add('|104|000|$character');
  }

  Future<void> stop() async {
    await _http.close(force: true);
  }
}

void main() {
  group('LobbyController via fake WS', () {
    late _FakeWsServer fake;
    late int port;
    late ProviderContainer container;

    setUp(() async {
      fake = _FakeWsServer();
      port = await fake.start();
      container = ProviderContainer(
        overrides: <Override>[
          wsClientProvider.overrideWith((ref) {
            final c = WsClient(url: Uri.parse('ws://127.0.0.1:$port/'));
            ref.onDispose(c.dispose);
            return c;
          }),
          authControllerProvider.overrideWith((ref) {
            final c = _StubAuthController();
            c.setUser('u@test.com');
            return c;
          }),
        ],
      );
    });

    tearDown(() async {
      container.dispose();
      await fake.stop();
    });

    Future<void> waitFor(bool Function(LobbyState) cond) async {
      final c = Completer<void>();
      final sub = container.listen<LobbyState>(
        lobbyControllerProvider,
        (_, next) {
          if (!c.isCompleted && cond(next)) c.complete();
        },
        fireImmediately: true,
      );
      await c.future.timeout(const Duration(seconds: 2));
      sub.close();
    }

    test('connect → 100 응답이 user list 로 풀림', () async {
      await container.read(lobbyControllerProvider.notifier).connect();
      await waitFor((s) => s.waiting.users.isNotEmpty);
      final users = container.read(lobbyControllerProvider).waiting.users;
      expect(users, hasLength(2));
      expect(users.map((u) => u.userId), <String>['alice', 'bob']);
    });

    test('createRoom → 101 응답으로 battleRoom 진입', () async {
      await container.read(lobbyControllerProvider.notifier).connect();
      await waitFor((s) => s.waiting.users.isNotEmpty);
      container.read(lobbyControllerProvider.notifier).createRoom();
      await waitFor((s) => s.battleRoom != null);
      expect(container.read(lobbyControllerProvider).battleRoom!.isCreator, true);
      expect(container.read(lobbyControllerProvider).battleRoom!.roomName, '@room_1');
    });

    test('초대 받으면 invitedBy/Room 업데이트, accept 시 enterRoom + 응답으로 oppChar', () async {
      await container.read(lobbyControllerProvider.notifier).connect();
      await waitFor((s) => s.waiting.users.isNotEmpty);
      fake.pushInvite('alice', '@room_42');
      await waitFor((s) => s.waiting.invitedBy == 'alice');
      container.read(lobbyControllerProvider.notifier).acceptInvite();
      await waitFor((s) => s.battleRoom?.opponentCharacter != null);
      expect(container.read(lobbyControllerProvider).battleRoom!.opponentCharacter, 2);
      expect(container.read(lobbyControllerProvider).waiting.invitedBy, isNull);
    });

    test('상대 ready 수신 시 opponentReady=true', () async {
      await container.read(lobbyControllerProvider.notifier).connect();
      container.read(lobbyControllerProvider.notifier).createRoom();
      await waitFor((s) => s.battleRoom != null);
      fake.pushOpponentReady('1');
      await waitFor((s) => s.battleRoom?.opponentReady == true);
      expect(container.read(lobbyControllerProvider).battleRoom!.opponentReady, true);
    });

    test('injectInviteFromPush 가 invitedBy/Room 을 채움 (push deep link)', () async {
      await container.read(lobbyControllerProvider.notifier).connect();
      container
          .read(lobbyControllerProvider.notifier)
          .injectInviteFromPush('alice', '@room_42');
      final s = container.read(lobbyControllerProvider).waiting;
      expect(s.invitedBy, 'alice');
      expect(s.invitedRoom, '@room_42');
    });

    test('toggleSkill: 5개 제한 + 락 시 변경 불가', () async {
      await container.read(lobbyControllerProvider.notifier).connect();
      container.read(lobbyControllerProvider.notifier).createRoom();
      await waitFor((s) => s.battleRoom != null);
      final ctrl = container.read(lobbyControllerProvider.notifier);
      for (final id in <int>[14, 13, 15, 16, 17, 18]) {
        ctrl.toggleSkill(id);
      }
      // 6번째 (18) 는 무시되어야 함 → 5개 유지
      expect(container.read(lobbyControllerProvider).battleRoom!.skillDeck.length, 5);
      expect(
        container.read(lobbyControllerProvider).battleRoom!.skillDeck.contains(18),
        false,
      );
    });
  });
}

/// auth stub — Riverpod overrides 용. 실제 서버 호출 없이 user 만 주입.
class _StubAuthController extends AuthController {
  _StubAuthController() : super(MemberApi(TestApi.create().client));

  void setUser(String userId) {
    state = AuthState(
      user: AuthUser.fromJson(<String, dynamic>{
        'userId': userId,
        'userNick': 'me',
        'userCharacter': 0,
        'level': 1,
        'authType': 'email',
      }),
    );
  }
}
