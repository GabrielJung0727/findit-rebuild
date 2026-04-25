import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../api/ws_client.dart';
import '../util/constants.dart';
import 'auth.dart';
import 'providers.dart';

/// 대기실 한 줄 — userId + character 인덱스.
@immutable
class WaitingUser {
  const WaitingUser({required this.userId, required this.character});
  final String userId;
  final int character;
}

@immutable
class WaitingState {
  const WaitingState({
    this.users = const <WaitingUser>[],
    this.connected = false,
    this.invitedBy,
    this.invitedRoom,
  });

  final List<WaitingUser> users;
  final bool connected;
  final String? invitedBy; // 초대 받은 발신자 userId
  final String? invitedRoom;

  WaitingState copyWith({
    List<WaitingUser>? users,
    bool? connected,
    String? invitedBy,
    String? invitedRoom,
    bool clearInvite = false,
  }) =>
      WaitingState(
        users: users ?? this.users,
        connected: connected ?? this.connected,
        invitedBy: clearInvite ? null : (invitedBy ?? this.invitedBy),
        invitedRoom: clearInvite ? null : (invitedRoom ?? this.invitedRoom),
      );
}

@immutable
class BattleRoomState {
  const BattleRoomState({
    required this.roomName,
    required this.isCreator,
    this.opponentCharacter,
    this.opponentReady = false,
    this.selfReady = false,
    this.skillDeck = const <int>{},
  });

  /// 매칭 채널이 알려준 방 이름 (e.g. `@room_3`).
  final String roomName;

  /// true = 내가 방을 만든 쪽 (왼쪽), false = 초대로 들어온 쪽 (오른쪽).
  final bool isCreator;
  final int? opponentCharacter;
  final bool opponentReady;
  final bool selfReady;

  /// 스킬덱 — 8개 슬롯 풀에서 선택된 5개의 skillId.
  final Set<int> skillDeck;

  bool get bothReady => selfReady && opponentReady;
  bool get deckValid => skillDeck.length == _kRequiredDeckSize;

  BattleRoomState copyWith({
    int? opponentCharacter,
    bool? opponentReady,
    bool? selfReady,
    Set<int>? skillDeck,
  }) =>
      BattleRoomState(
        roomName: roomName,
        isCreator: isCreator,
        opponentCharacter: opponentCharacter ?? this.opponentCharacter,
        opponentReady: opponentReady ?? this.opponentReady,
        selfReady: selfReady ?? this.selfReady,
        skillDeck: skillDeck ?? this.skillDeck,
      );
}

const int _kRequiredDeckSize = 5;
const int kSkillDeckSize = _kRequiredDeckSize;

/// 매칭/대전방 상태 + WebSocket 액션.
class LobbyController extends StateNotifier<LobbyState> {
  LobbyController(this._ws, this._authRef) : super(const LobbyState()) {
    _sub = _ws.messages.listen(_onFrame);
  }

  final WsClient _ws;
  final Ref _authRef;
  StreamSubscription<WsFrame>? _sub;

  Future<void> connect() async {
    if (_ws.isConnected) {
      _refreshUserList();
      return;
    }
    await _ws.connect();
    if (_ws.isConnected) {
      state = state.copyWith(
        waiting: state.waiting.copyWith(connected: true),
      );
      _refreshUserList();
    }
  }

  Future<void> disconnect() async {
    await _ws.disconnect();
    state = state.copyWith(
      waiting: state.waiting.copyWith(connected: false, users: <WaitingUser>[]),
      battleRoom: null,
    );
  }

  void _refreshUserList() {
    final user = _authRef.read(authControllerProvider).user;
    if (user == null) return;
    _ws.send(SocketCode.userList.toString(), <String>[user.userId]);
  }

  /// 100 — 명시적 새로고침.
  void refreshUserList() => _refreshUserList();

  /// 101 — 빈 방 만들기 후 응답으로 roomName 받음.
  void createRoom() {
    _ws.send(SocketCode.createRoom.toString());
  }

  /// 102 — 방 나가기. 게임 화면 종료 / 뒤로가기 시.
  void leaveRoom() {
    final br = state.battleRoom;
    if (br == null) return;
    _ws.send(SocketCode.leaveRoom.toString(), <String>[br.roomName]);
    state = state.copyWith(clearBattleRoom: true);
  }

  /// 103 — 친구가 만든 방에 입장. 초대를 수락하거나 리스트에서 클릭한 경우.
  void enterRoom(String roomName) {
    _ws.send(SocketCode.enterRoom.toString(), <String>[roomName]);
    // 응답을 받기 전 잠정 상태. 응답 수신 후 isCreator/opponent 업데이트.
    state = state.copyWith(
      battleRoom: BattleRoomState(roomName: roomName, isCreator: false),
      waiting: state.waiting.copyWith(clearInvite: true),
    );
  }

  /// 104 — 준비 토글 (캐릭터 번호 송신).
  void setReady(bool ready) {
    final auth = _authRef.read(authControllerProvider);
    final br = state.battleRoom;
    if (br == null || auth.user == null) return;
    state = state.copyWith(
      battleRoom: br.copyWith(selfReady: ready),
    );
    _ws.send(
      SocketCode.ready.toString(),
      <String>[ready ? '${auth.user!.userCharacter}' : ''],
    );
  }

  /// 107 — 친구 초대.
  void invite(String targetUserId) {
    final br = state.battleRoom;
    if (br == null) return;
    _ws.send(
      SocketCode.invite.toString(),
      <String>[targetUserId, br.roomName],
    );
  }

  /// 스킬덱 토글 — 5개 제한.
  void toggleSkill(int skillId) {
    final br = state.battleRoom;
    if (br == null) return;
    final next = Set<int>.from(br.skillDeck);
    if (next.contains(skillId)) {
      next.remove(skillId);
    } else if (next.length < _kRequiredDeckSize) {
      next.add(skillId);
    }
    state = state.copyWith(battleRoom: br.copyWith(skillDeck: next));
  }

  /// 초대 수락 — 보관된 invitedRoom 으로 enter.
  void acceptInvite() {
    final room = state.waiting.invitedRoom;
    if (room == null) return;
    enterRoom(room);
  }

  void declineInvite() {
    state = state.copyWith(
      waiting: state.waiting.copyWith(clearInvite: true),
    );
  }

  // ===========================================================
  // 수신 프레임 라우팅
  // ===========================================================

  void _onFrame(WsFrame f) {
    final code = int.tryParse(f.code) ?? -1;
    if (code == SocketCode.userList) {
      _onUserList(f);
    } else if (code == SocketCode.createRoom) {
      _onCreateRoom(f);
    } else if (code == SocketCode.leaveRoom) {
      _onLeaveRoom(f);
    } else if (code == SocketCode.enterRoom) {
      _onEnterRoom(f);
    } else if (code == SocketCode.ready) {
      _onReady(f);
    } else if (code == SocketCode.invite) {
      _onInvite(f);
    }
  }

  void _onUserList(WsFrame f) {
    if (!f.ok) return;
    // payload = [count, csv, count, csv]  (서버 onUserList 가 두 번 보냄 — 안드 호환)
    final p = f.payload;
    if (p.length < 2) return;
    final csv = p[1];
    final users = csv.isEmpty
        ? const <WaitingUser>[]
        : csv.split(';').where((s) => s.isNotEmpty).map((entry) {
            final parts = entry.split(',');
            return WaitingUser(
              userId: parts[0],
              character: parts.length > 1 ? int.tryParse(parts[1]) ?? 0 : 0,
            );
          }).toList(growable: false);
    state = state.copyWith(
      waiting: state.waiting.copyWith(users: users, connected: true),
    );
  }

  void _onCreateRoom(WsFrame f) {
    if (!f.ok) return;
    final room = f.payload.isNotEmpty ? f.payload.first : null;
    if (room == null) return;
    state = state.copyWith(
      battleRoom: BattleRoomState(roomName: room, isCreator: true),
    );
  }

  void _onLeaveRoom(WsFrame _) {
    state = state.copyWith(clearBattleRoom: true);
    _refreshUserList();
  }

  void _onEnterRoom(WsFrame f) {
    final br = state.battleRoom;
    if (br == null) return;
    if (!f.ok) {
      state = state.copyWith(clearBattleRoom: true);
      return;
    }
    final oppChar = f.payload.isNotEmpty ? int.tryParse(f.payload.first) : null;
    state = state.copyWith(
      battleRoom: br.copyWith(opponentCharacter: oppChar),
    );
  }

  void _onReady(WsFrame f) {
    final br = state.battleRoom;
    if (br == null) return;
    final empty = f.payload.isEmpty || f.payload.first.isEmpty;
    state = state.copyWith(
      battleRoom: br.copyWith(opponentReady: !empty),
    );
  }

  void _onInvite(WsFrame f) {
    if (!f.ok) return;
    final from = f.payload.isNotEmpty ? f.payload[0] : null;
    final room = f.payload.length > 1 ? f.payload[1] : null;
    if (from == null || room == null) return;
    state = state.copyWith(
      waiting: state.waiting.copyWith(invitedBy: from, invitedRoom: room),
    );
  }

  @override
  void dispose() {
    _sub?.cancel();
    super.dispose();
  }
}

@immutable
class LobbyState {
  const LobbyState({
    this.waiting = const WaitingState(),
    this.battleRoom,
  });

  final WaitingState waiting;
  final BattleRoomState? battleRoom;

  LobbyState copyWith({
    WaitingState? waiting,
    BattleRoomState? battleRoom,
    bool clearBattleRoom = false,
  }) =>
      LobbyState(
        waiting: waiting ?? this.waiting,
        battleRoom: clearBattleRoom ? null : (battleRoom ?? this.battleRoom),
      );
}

final lobbyControllerProvider =
    StateNotifierProvider<LobbyController, LobbyState>((ref) {
  return LobbyController(ref.watch(wsClientProvider), ref);
});
