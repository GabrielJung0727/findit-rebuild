import 'dart:ui' show Offset;

import 'package:flutter/foundation.dart';

import '../util/constants.dart';
import 'image_set.dart';

/// 한 플레이어의 진행 상태. 자기 자신/상대 양쪽이 동일 구조.
@immutable
class PlayerState {
  const PlayerState({
    required this.found,
    required this.combo,
    required this.hp,
    required this.maxHp,
  });

  /// 길이 = `GameConstants.findRectTotalNum (=7)`. true 면 해당 imageCut 발견.
  final List<bool> found;
  final int combo;
  final int hp;
  final int maxHp;

  int get findNum => found.where((b) => b).length;
  bool get cleared => findNum >= GameConstants.findRectTotalNum;

  PlayerState copyWith({
    List<bool>? found,
    int? combo,
    int? hp,
    int? maxHp,
  }) =>
      PlayerState(
        found: found ?? this.found,
        combo: combo ?? this.combo,
        hp: hp ?? this.hp,
        maxHp: maxHp ?? this.maxHp,
      );

  static PlayerState initial({required int hp}) => PlayerState(
        found: List<bool>.filled(GameConstants.findRectTotalNum, false),
        combo: 0,
        hp: hp,
        maxHp: hp,
      );
}

/// 게임 종료 사유.
enum GameEndReason {
  timeUp,
  selfCleared,
  opponentCleared,
  opponentLeft,
  hpZero
}

/// 게임 결과 — `GameEndReason` + 점수/보상 (서버 `mutiAddUp` 응답 반영 가능).
@immutable
class GameResult {
  const GameResult({
    required this.reason,
    required this.won,
    required this.selfScore,
    required this.opponentScore,
    required this.coinReward,
    required this.pointReward,
    this.levelFrom,
    this.levelTo,
    this.pointAwarded,
  });

  final GameEndReason reason;
  final bool won;
  final int selfScore;
  final int opponentScore;
  final int coinReward;
  final int pointReward;

  /// 서버 `mutiAddUp` 응답의 levelUp{from,to,pointAwarded} — null 이면 미수신/레벨변화 없음.
  final int? levelFrom;
  final int? levelTo;
  final int? pointAwarded;

  bool get leveledUp =>
      levelFrom != null && levelTo != null && levelTo! > levelFrom!;

  GameResult copyWith({
    int? coinReward,
    int? pointReward,
    int? levelFrom,
    int? levelTo,
    int? pointAwarded,
  }) =>
      GameResult(
        reason: reason,
        won: won,
        selfScore: selfScore,
        opponentScore: opponentScore,
        coinReward: coinReward ?? this.coinReward,
        pointReward: pointReward ?? this.pointReward,
        levelFrom: levelFrom ?? this.levelFrom,
        levelTo: levelTo ?? this.levelTo,
        pointAwarded: pointAwarded ?? this.pointAwarded,
      );
}

@immutable
class GameState {
  const GameState({
    required this.image,
    required this.self,
    required this.opponent,
    required this.timeRemaining,
    required this.elapsedSeconds,
    required this.running,
    required this.aiNextFind,
    required this.opponentLevel,
    required this.opponentIsAi,
    this.lastCorrectIndex,
    this.lastCorrectByOpponent,
    this.lastWrongTouch,
    this.result,
  });

  /// 현재 스테이지 이미지 + 7 cuts.
  final ImageSet image;
  final PlayerState self;
  final PlayerState opponent;

  /// 남은 시간(초). 0 이하가 되면 [running] = false 로 전이.
  final double timeRemaining;
  final double elapsedSeconds;
  final bool running;

  /// AI 가 다음 정답을 발견하기까지 남은 초 (single-player only).
  /// 멀티플레이는 [opponentIsAi] = false → 사용 X.
  final double aiNextFind;

  /// AI/상대 레벨 — `getAIFindTime()` 공식 입력.
  final int opponentLevel;
  final bool opponentIsAi;

  /// 최근 정답 터치 — UI 가 글로우 애니메이션 재생.
  final int? lastCorrectIndex;

  /// 상대(또는 AI)가 마지막으로 발견한 인덱스 — 시각 피드백.
  final int? lastCorrectByOpponent;

  /// 최근 오답 터치 좌표 (원본 이미지 픽셀계).
  final Offset? lastWrongTouch;

  /// null = 진행 중. non-null = 종료 (결과 화면).
  final GameResult? result;

  bool get ended => result != null;

  GameState copyWith({
    PlayerState? self,
    PlayerState? opponent,
    double? timeRemaining,
    double? elapsedSeconds,
    bool? running,
    double? aiNextFind,
    int? lastCorrectIndex,
    int? lastCorrectByOpponent,
    Offset? lastWrongTouch,
    GameResult? result,
    bool clearLastCorrect = false,
    bool clearLastCorrectByOpponent = false,
    bool clearLastWrong = false,
  }) =>
      GameState(
        image: image,
        self: self ?? this.self,
        opponent: opponent ?? this.opponent,
        timeRemaining: timeRemaining ?? this.timeRemaining,
        elapsedSeconds: elapsedSeconds ?? this.elapsedSeconds,
        running: running ?? this.running,
        aiNextFind: aiNextFind ?? this.aiNextFind,
        opponentLevel: opponentLevel,
        opponentIsAi: opponentIsAi,
        lastCorrectIndex: clearLastCorrect
            ? null
            : (lastCorrectIndex ?? this.lastCorrectIndex),
        lastCorrectByOpponent: clearLastCorrectByOpponent
            ? null
            : (lastCorrectByOpponent ?? this.lastCorrectByOpponent),
        lastWrongTouch:
            clearLastWrong ? null : (lastWrongTouch ?? this.lastWrongTouch),
        result: result ?? this.result,
      );
}
