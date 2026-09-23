import 'dart:ui';

import '../net/envelope.dart';
import 'protocol.g.dart';

enum MatchPhase { idle, queued, matched, countdown, playing, ended }

class FoundRect {
  final int index;
  final Rect rect;
  final String patchUrl;
  final bool mine;

  const FoundRect({
    required this.index,
    required this.rect,
    required this.patchUrl,
    required this.mine,
  });
}

class MatchResult {
  final String result;
  final int myFound;
  final int opponentFound;
  final int score;
  final int coinDelta;
  final int expDelta;

  const MatchResult({
    required this.result,
    required this.myFound,
    required this.opponentFound,
    required this.score,
    required this.coinDelta,
    required this.expDelta,
  });
}

class MatchState {
  final MatchPhase phase;
  final String? matchId;
  final String? opponentName;
  final int opponentLevel;
  final bool isAi;
  final String? puzzleId;
  final String? imageUrl;
  final Size? imageSize;
  final int targetCount;
  final int durationMs;
  final List<FoundRect> found;
  final int opponentFound;
  final int lockedUntilMs;
  final int blindedUntilMs;
  final String? blindEffectId;
  final MatchResult? result;

  const MatchState({
    required this.phase,
    this.matchId,
    this.opponentName,
    this.opponentLevel = 0,
    this.isAi = false,
    this.puzzleId,
    this.imageUrl,
    this.imageSize,
    this.targetCount = 0,
    this.durationMs = 0,
    this.found = const [],
    this.opponentFound = 0,
    this.lockedUntilMs = 0,
    this.blindedUntilMs = 0,
    this.blindEffectId,
    this.result,
  });

  factory MatchState.initial() => const MatchState(phase: MatchPhase.idle);

  int get myFound => found.where((f) => f.mine).length;

  MatchState _copy({
    MatchPhase? phase,
    List<FoundRect>? found,
    int? opponentFound,
    int? lockedUntilMs,
    int? blindedUntilMs,
    String? blindEffectId,
    MatchResult? result,
    String? puzzleId,
    String? imageUrl,
    Size? imageSize,
    int? targetCount,
    int? durationMs,
  }) =>
      MatchState(
        phase: phase ?? this.phase,
        matchId: matchId,
        opponentName: opponentName,
        opponentLevel: opponentLevel,
        isAi: isAi,
        puzzleId: puzzleId ?? this.puzzleId,
        imageUrl: imageUrl ?? this.imageUrl,
        imageSize: imageSize ?? this.imageSize,
        targetCount: targetCount ?? this.targetCount,
        durationMs: durationMs ?? this.durationMs,
        found: found ?? this.found,
        opponentFound: opponentFound ?? this.opponentFound,
        lockedUntilMs: lockedUntilMs ?? this.lockedUntilMs,
        blindedUntilMs: blindedUntilMs ?? this.blindedUntilMs,
        blindEffectId: blindEffectId ?? this.blindEffectId,
        result: result ?? this.result,
      );
}

/// 서버 프레임 하나를 접는다. **순수 함수다** — 소켓도 위젯도 모른다.
MatchState applyFrame(MatchState prev, Envelope frame) {
  final d = frame.data;

  switch (frame.type) {
    case MessageType.queued:
      return prev._copy(phase: MatchPhase.queued);

    case MessageType.matchFound:
      // **어느 단계에서 받든 새 매치로 간다.** 난입에서 서버는 이전 AI 판을
      // 정산 없이 버리고 이것을 보낸다 (스펙 §3.6). 프로토콜에 "중단"
      // 메시지가 없다. 오류로 처리하거나 무시하면 난입당한 쪽이 멈춘다.
      //
      // 이전 판의 흔적을 남기지 않는 것도 중요하다 — found 가 남으면 새 판에
      // 남의 rect 가 그려진다.
      final m = MatchFoundMessage.fromJson(d);
      return MatchState(
        phase: MatchPhase.matched,
        matchId: m.matchId,
        opponentName: m.opponentName,
        opponentLevel: m.opponentLevel,
        isAi: m.isAi,
      );

    case MessageType.countdown:
      return prev._copy(phase: MatchPhase.countdown);

    case MessageType.start:
      final s = StartMessage.fromJson(d);
      return prev._copy(
        phase: MatchPhase.playing,
        puzzleId: s.puzzleId,
        imageUrl: s.imageUrl,
        imageSize: Size(s.width.toDouble(), s.height.toDouble()),
        targetCount: s.targetCount,
        durationMs: s.durationMs,
        found: const [],
      );

    case MessageType.reveal:
      final r = RevealMessage.fromJson(d);
      return prev._copy(found: [
        ...prev.found,
        FoundRect(
          index: r.index,
          rect: Rect.fromLTWH(
              r.x.toDouble(), r.y.toDouble(), r.w.toDouble(), r.h.toDouble()),
          patchUrl: r.patchUrl,
          mine: r.by == 'me',
        ),
      ]);

    case MessageType.opponentProgress:
      return prev._copy(
          opponentFound: OpponentProgressMessage.fromJson(d).found);

    case MessageType.lock:
      return prev._copy(
          lockedUntilMs: prev.lockedUntilMs + LockMessage.fromJson(d).durationMs);

    case MessageType.blind:
      final b = BlindMessage.fromJson(d);
      return prev._copy(
        blindedUntilMs: prev.blindedUntilMs + b.durationMs,
        blindEffectId: b.effectId,
      );

    case MessageType.end:
      final e = EndMessage.fromJson(d);
      return prev._copy(
        phase: MatchPhase.ended,
        result: MatchResult(
          result: e.result,
          myFound: e.myFound,
          opponentFound: e.opponentFound,
          score: e.score,
          coinDelta: e.coinDelta,
          expDelta: e.expDelta,
        ),
      );

    // ERROR 는 상태를 바꾸지 않는다. 표시는 화면이 한다.
    // c2s 타입은 서버에서 오지 않는다 — 와도 무시한다.
    default:
      return prev;
  }
}
