import 'dart:async';
import 'dart:math';
import 'dart:ui' show Offset;

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../api/ws_client.dart';
import '../state/auth.dart';
import '../state/providers.dart';
import '../util/constants.dart';
import 'game_state.dart';
import 'image_set.dart';

/// 게임 루프 — 16ms periodic timer 로 [GameState] 를 갱신.
///
/// 책임:
/// - 시간 카운트다운 (`GAMETIME=40`초)
/// - AI 자동 발견 (싱글플레이 모드, `7 - level × 0.03` 초 ±15% 랜덤)
/// - 멀티플레이: WS 106 송수신으로 상대 액션 동기화
/// - 정답/오답 터치 처리 + 콤보 갱신
/// - 종료 조건 (시간 만료 / 누가 7개 다 찾음 / 상대 이탈) → [GameResult]
///
/// 점수/콤보 보너스 공식은 [GameConstants] 에 위치 (서버 `balance.js` 와 동일).
class GameController extends StateNotifier<GameState> {
  GameController(super.initial, this._ref) : _random = Random() {
    _subscribeWs();
  }

  final Ref _ref;
  final Random _random;
  Timer? _ticker;
  StreamSubscription<WsFrame>? _wsSub;
  DateTime? _lastTick;

  static const Duration _tickInterval = Duration(milliseconds: 16);

  // ===========================================================
  // 외부 액션
  // ===========================================================

  /// 게임 시작. 호출 후 매 16ms 마다 [_onTick] 으로 진행.
  void start() {
    if (state.running || state.ended) return;
    state = state.copyWith(running: true);
    _lastTick = DateTime.now();
    _ticker?.cancel();
    _ticker = Timer.periodic(_tickInterval, (_) => _onTick());
  }

  /// 사용자 일시정지 (Pause). 멀티플레이는 즉시 동기화 안되므로 주로 싱글에 사용.
  void pause() {
    if (!state.running) return;
    _ticker?.cancel();
    _ticker = null;
    state = state.copyWith(running: false);
  }

  /// 화면을 떠날 때 호출. 진행 중이면 GameEndReason.opponentLeft 로 마무리.
  void abort() {
    if (state.ended) return;
    _stop();
    final res = _buildResult(reason: GameEndReason.opponentLeft, won: false);
    state = state.copyWith(running: false, result: res);
  }

  /// 사용자 터치. [pixel] 은 원본 이미지 픽셀 좌표계 (painter 에서 변환).
  void onTap(Offset pixel) {
    if (!state.running || state.ended) return;

    int? hit;
    for (var i = 0; i < state.image.cuts.length; i++) {
      if (state.self.found[i]) continue; // 이미 찾은 영역 패스
      if (state.image.cuts[i].contains(pixel.dx, pixel.dy)) {
        hit = i;
        break;
      }
    }

    if (hit != null) {
      _onSelfFound(hit);
    } else {
      _onWrong(pixel);
    }
  }

  // ===========================================================
  // 내부
  // ===========================================================

  void _onTick() {
    if (state.ended) {
      _stop();
      return;
    }
    final now = DateTime.now();
    final dt =
        _lastTick == null ? 0.016 : now.difference(_lastTick!).inMicroseconds / 1e6;
    _lastTick = now;

    var s = state;
    final newTime = (s.timeRemaining - dt).clamp(0.0, double.infinity);
    final elapsed = s.elapsedSeconds + dt;
    s = s.copyWith(timeRemaining: newTime, elapsedSeconds: elapsed);

    // AI 진행 (싱글플레이만)
    if (s.opponentIsAi && !s.opponent.cleared) {
      final ai = s.aiNextFind - dt;
      if (ai <= 0) {
        s = _aiPickAndFind(s);
      } else {
        s = s.copyWith(aiNextFind: ai);
      }
    }

    // 종료 검사
    if (s.timeRemaining <= 0) {
      state = _finalize(s, GameEndReason.timeUp);
      return;
    }
    if (s.self.cleared) {
      state = _finalize(s, GameEndReason.selfCleared);
      return;
    }
    if (s.opponent.cleared) {
      state = _finalize(s, GameEndReason.opponentCleared);
      return;
    }
    state = s;
  }

  GameState _aiPickAndFind(GameState s) {
    // AI 가 아직 발견 안 한 인덱스 중 랜덤 선택. (실제 AI 는 마지막 한 개에 가까울수록 느려짐 등 정교화 가능)
    final remaining = <int>[];
    for (var i = 0; i < s.opponent.found.length; i++) {
      if (!s.opponent.found[i]) remaining.add(i);
    }
    if (remaining.isEmpty) return s.copyWith(aiNextFind: 999);
    final idx = remaining[_random.nextInt(remaining.length)];
    return _opponentFoundIndex(s, idx).copyWith(
      aiNextFind: _nextAiFindTime(s.opponentLevel),
    );
  }

  GameState _opponentFoundIndex(GameState s, int idx) {
    final found = List<bool>.from(s.opponent.found);
    if (found[idx]) return s;
    found[idx] = true;
    final opp = s.opponent.copyWith(found: found, combo: s.opponent.combo + 1);
    // 상대가 발견하면 자기 콤보 리셋 (기획)
    final mySelf = s.self.copyWith(combo: 0);
    return s.copyWith(
      opponent: opp,
      self: mySelf,
      lastCorrectByOpponent: idx,
    );
  }

  /// `7 - level × 0.03` 초, ±15% 랜덤. AI 가 너무 빠르지/느리지 않도록 [1.0, 7.0] 클램프.
  double _nextAiFindTime(int level) {
    final base = GameConstants.aiFindTimeSeconds(level);
    final jitter = (_random.nextDouble() * 0.30) - 0.15; // -15% .. +15%
    final t = base * (1 + jitter);
    return t.clamp(1.0, 7.0);
  }

  void _onSelfFound(int idx) {
    var s = state;
    final found = List<bool>.from(s.self.found)..[idx] = true;
    final newCombo = s.self.combo + 1;
    final timeBonus = GameConstants.comboTime(newCombo).toDouble();
    final self = s.self.copyWith(found: found, combo: newCombo);
    s = s.copyWith(
      self: self,
      lastCorrectIndex: idx,
      // 콤보 시간 보너스
      timeRemaining: s.timeRemaining + timeBonus,
      clearLastWrong: true,
    );

    // 멀티 모드: 상대에게 알림 (소켓 106)
    if (!s.opponentIsAi) {
      final ws = _ref.read(wsClientProvider);
      ws.send(SocketCode.touch.toString(), <String>[
        // characterName 자리 — 안드 원본은 무의미한 첫 인자, 우리는 빈 문자열
        '',
        'found,$idx',
      ]);
    }

    if (s.self.cleared) {
      state = _finalize(s, GameEndReason.selfCleared);
    } else {
      state = s;
    }
  }

  void _onWrong(Offset pixel) {
    state = state.copyWith(
      self: state.self.copyWith(combo: 0),
      lastWrongTouch: pixel,
      clearLastCorrect: true,
    );
  }

  // ===========================================================
  // WebSocket: 멀티플레이 코드 106 동기화 + 상대 이탈
  // ===========================================================

  void _subscribeWs() {
    final ws = _ref.read(wsClientProvider);
    _wsSub = ws.messages.listen((frame) {
      if (state.opponentIsAi || state.ended) return;
      // 106 GAME — 상대 액션 중계
      if (frame.code == SocketCode.touch.toString() && frame.ok) {
        // payload: ['', '<characterName>', '<info>']
        final p = frame.payload;
        if (p.isEmpty) return;
        final info = p.last;
        if (info.startsWith('found,')) {
          final idx = int.tryParse(info.substring('found,'.length));
          if (idx != null && idx >= 0 && idx < GameConstants.findRectTotalNum) {
            state = _opponentFoundIndex(state, idx);
            if (state.opponent.cleared) {
              state = _finalize(state, GameEndReason.opponentCleared);
            }
          }
        }
      }
      // 102 EXITBATTLEROOM — 상대 이탈
      if (frame.code == SocketCode.leaveRoom.toString()) {
        if (state.running) {
          state = _finalize(state, GameEndReason.opponentLeft);
        }
      }
    });
  }

  // ===========================================================
  // 종료 처리
  // ===========================================================

  GameState _finalize(GameState s, GameEndReason reason) {
    _stop();
    final selfFind = s.self.findNum;
    final oppFind = s.opponent.findNum;
    final won = switch (reason) {
      GameEndReason.selfCleared => true,
      GameEndReason.opponentCleared => false,
      GameEndReason.opponentLeft => true,
      GameEndReason.hpZero => false,
      GameEndReason.timeUp => selfFind > oppFind,
    };
    final selfScore = GameConstants.calculateScore(
      findNum: selfFind,
      isWinner: won,
      comboBonus: 0, // 콤보는 시간 보너스로 이미 반영됨
    );
    final oppScore = GameConstants.calculateScore(
      findNum: oppFind,
      isWinner: !won,
      comboBonus: 0,
    );
    return s.copyWith(
      running: false,
      result: GameResult(
        reason: reason,
        won: won,
        selfScore: selfScore,
        opponentScore: oppScore,
        coinReward: won ? 10 : 1, // 임시 — `mutiAddUp` 응답이 정식 보상
        pointReward: won ? 1 : 0,
      ),
    );
  }

  GameResult _buildResult({required GameEndReason reason, required bool won}) {
    final selfFind = state.self.findNum;
    final oppFind = state.opponent.findNum;
    return GameResult(
      reason: reason,
      won: won,
      selfScore: GameConstants.calculateScore(
        findNum: selfFind,
        isWinner: won,
        comboBonus: 0,
      ),
      opponentScore: GameConstants.calculateScore(
        findNum: oppFind,
        isWinner: !won,
        comboBonus: 0,
      ),
      coinReward: won ? 10 : 1,
      pointReward: won ? 1 : 0,
    );
  }

  void _stop() {
    _ticker?.cancel();
    _ticker = null;
  }

  @override
  void dispose() {
    _stop();
    _wsSub?.cancel();
    super.dispose();
  }
}

// ===========================================================
// Riverpod wiring
// ===========================================================

/// 게임 시작 인자. [GameScreen] 이 라우팅 시 전달.
@immutable
class GameStartArgs {
  const GameStartArgs({
    required this.image,
    required this.opponentIsAi,
    required this.opponentLevel,
    required this.selfHp,
    required this.opponentHp,
  });

  final ImageSet image;
  final bool opponentIsAi;
  final int opponentLevel;
  final int selfHp;
  final int opponentHp;
}

GameState buildInitialGameState(GameStartArgs args, Random random) {
  final aiBase = GameConstants.aiFindTimeSeconds(args.opponentLevel);
  final jitter = (random.nextDouble() * 0.30) - 0.15;
  final aiInit = (aiBase * (1 + jitter)).clamp(1.0, 7.0);
  return GameState(
    image: args.image,
    self: PlayerState.initial(hp: args.selfHp),
    opponent: PlayerState.initial(hp: args.opponentHp),
    timeRemaining: GameConstants.gameTimeSeconds.toDouble(),
    elapsedSeconds: 0,
    running: false,
    aiNextFind: aiInit,
    opponentLevel: args.opponentLevel,
    opponentIsAi: args.opponentIsAi,
  );
}

final gameArgsProvider = StateProvider<GameStartArgs?>((_) => null);

final gameControllerProvider =
    StateNotifierProvider.autoDispose<GameController, GameState>((ref) {
  final args = ref.watch(gameArgsProvider);
  if (args == null) {
    throw StateError('gameArgsProvider must be set before reading gameControllerProvider');
  }
  final auth = ref.watch(authControllerProvider);
  // selfHp 가 args 에서 안 들어오면 auth 의 hp 사용
  final initial = buildInitialGameState(
    GameStartArgs(
      image: args.image,
      opponentIsAi: args.opponentIsAi,
      opponentLevel: args.opponentLevel,
      selfHp: args.selfHp == 0 ? (auth.user?.hp ?? 110) : args.selfHp,
      opponentHp: args.opponentHp,
    ),
    Random(),
  );
  return GameController(initial, ref);
});
