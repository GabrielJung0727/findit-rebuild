// GENERATED — 직접 수정하지 말 것.
// 출처: packages/protocol/src/schema.ts
// 재생성: npm run protocol:dart

// ignore_for_file: type=lint

enum MessageType {
  auth,
  queueJoin,
  queueLeave,
  ready,
  tap,
  skill,
  leave,
  queued,
  matchFound,
  countdown,
  start,
  reveal,
  lock,
  blind,
  opponentProgress,
  end,
  error,
}

const Map<MessageType, String> messageTypeWire = {
  MessageType.auth: 'AUTH',
  MessageType.queueJoin: 'QUEUE_JOIN',
  MessageType.queueLeave: 'QUEUE_LEAVE',
  MessageType.ready: 'READY',
  MessageType.tap: 'TAP',
  MessageType.skill: 'SKILL',
  MessageType.leave: 'LEAVE',
  MessageType.queued: 'QUEUED',
  MessageType.matchFound: 'MATCH_FOUND',
  MessageType.countdown: 'COUNTDOWN',
  MessageType.start: 'START',
  MessageType.reveal: 'REVEAL',
  MessageType.lock: 'LOCK',
  MessageType.blind: 'BLIND',
  MessageType.opponentProgress: 'OPPONENT_PROGRESS',
  MessageType.end: 'END',
  MessageType.error: 'ERROR',
};

/// 클라 → 서버
class AuthMessage {
  final String token;

  const AuthMessage({
    required this.token,
  });

  factory AuthMessage.fromJson(Map<String, dynamic> json) => AuthMessage(
    token: json['token'] as String,
  );

  Map<String, dynamic> toJson() => {
    'token': token,
  };
}

/// 클라 → 서버
class QueueJoinMessage {
  final String mode;

  const QueueJoinMessage({
    required this.mode,
  });

  factory QueueJoinMessage.fromJson(Map<String, dynamic> json) => QueueJoinMessage(
    mode: json['mode'] as String,
  );

  Map<String, dynamic> toJson() => {
    'mode': mode,
  };
}

/// 클라 → 서버
class QueueLeaveMessage {

  const QueueLeaveMessage();

  factory QueueLeaveMessage.fromJson(Map<String, dynamic> json) => QueueLeaveMessage(
  );

  Map<String, dynamic> toJson() => {
  };
}

/// 클라 → 서버
class ReadyMessage {

  const ReadyMessage();

  factory ReadyMessage.fromJson(Map<String, dynamic> json) => ReadyMessage(
  );

  Map<String, dynamic> toJson() => {
  };
}

/// 클라 → 서버
class TapMessage {
  final int x;
  final int y;

  const TapMessage({
    required this.x,
    required this.y,
  });

  factory TapMessage.fromJson(Map<String, dynamic> json) => TapMessage(
    x: json['x'] as int,
    y: json['y'] as int,
  );

  Map<String, dynamic> toJson() => {
    'x': x,
    'y': y,
  };
}

/// 클라 → 서버
class SkillMessage {
  final String skillId;

  const SkillMessage({
    required this.skillId,
  });

  factory SkillMessage.fromJson(Map<String, dynamic> json) => SkillMessage(
    skillId: json['skillId'] as String,
  );

  Map<String, dynamic> toJson() => {
    'skillId': skillId,
  };
}

/// 클라 → 서버
class LeaveMessage {

  const LeaveMessage();

  factory LeaveMessage.fromJson(Map<String, dynamic> json) => LeaveMessage(
  );

  Map<String, dynamic> toJson() => {
  };
}

/// 서버 → 클라
class QueuedMessage {
  final int position;

  const QueuedMessage({
    required this.position,
  });

  factory QueuedMessage.fromJson(Map<String, dynamic> json) => QueuedMessage(
    position: json['position'] as int,
  );

  Map<String, dynamic> toJson() => {
    'position': position,
  };
}

/// 서버 → 클라
class MatchFoundMessage {
  final String matchId;
  final String opponentName;
  final int opponentLevel;
  final bool isAi;

  const MatchFoundMessage({
    required this.matchId,
    required this.opponentName,
    required this.opponentLevel,
    required this.isAi,
  });

  factory MatchFoundMessage.fromJson(Map<String, dynamic> json) => MatchFoundMessage(
    matchId: json['matchId'] as String,
    opponentName: json['opponentName'] as String,
    opponentLevel: json['opponentLevel'] as int,
    isAi: json['isAi'] as bool,
  );

  Map<String, dynamic> toJson() => {
    'matchId': matchId,
    'opponentName': opponentName,
    'opponentLevel': opponentLevel,
    'isAi': isAi,
  };
}

/// 서버 → 클라
class CountdownMessage {
  final int seconds;

  const CountdownMessage({
    required this.seconds,
  });

  factory CountdownMessage.fromJson(Map<String, dynamic> json) => CountdownMessage(
    seconds: json['seconds'] as int,
  );

  Map<String, dynamic> toJson() => {
    'seconds': seconds,
  };
}

/// 서버 → 클라
class StartMessage {
  final String puzzleId;
  final String imageUrl;
  final int width;
  final int height;
  final int targetCount;
  final int durationMs;

  const StartMessage({
    required this.puzzleId,
    required this.imageUrl,
    required this.width,
    required this.height,
    required this.targetCount,
    required this.durationMs,
  });

  factory StartMessage.fromJson(Map<String, dynamic> json) => StartMessage(
    puzzleId: json['puzzleId'] as String,
    imageUrl: json['imageUrl'] as String,
    width: json['width'] as int,
    height: json['height'] as int,
    targetCount: json['targetCount'] as int,
    durationMs: json['durationMs'] as int,
  );

  Map<String, dynamic> toJson() => {
    'puzzleId': puzzleId,
    'imageUrl': imageUrl,
    'width': width,
    'height': height,
    'targetCount': targetCount,
    'durationMs': durationMs,
  };
}

/// 서버 → 클라
class RevealMessage {
  final String by;
  final int index;
  final int x;
  final int y;
  final int w;
  final int h;
  final String patchUrl;

  const RevealMessage({
    required this.by,
    required this.index,
    required this.x,
    required this.y,
    required this.w,
    required this.h,
    required this.patchUrl,
  });

  factory RevealMessage.fromJson(Map<String, dynamic> json) => RevealMessage(
    by: json['by'] as String,
    index: json['index'] as int,
    x: json['x'] as int,
    y: json['y'] as int,
    w: json['w'] as int,
    h: json['h'] as int,
    patchUrl: json['patchUrl'] as String,
  );

  Map<String, dynamic> toJson() => {
    'by': by,
    'index': index,
    'x': x,
    'y': y,
    'w': w,
    'h': h,
    'patchUrl': patchUrl,
  };
}

/// 서버 → 클라
class LockMessage {
  final int durationMs;

  const LockMessage({
    required this.durationMs,
  });

  factory LockMessage.fromJson(Map<String, dynamic> json) => LockMessage(
    durationMs: json['durationMs'] as int,
  );

  Map<String, dynamic> toJson() => {
    'durationMs': durationMs,
  };
}

/// 서버 → 클라
class BlindMessage {
  final int durationMs;
  final String effectId;

  const BlindMessage({
    required this.durationMs,
    required this.effectId,
  });

  factory BlindMessage.fromJson(Map<String, dynamic> json) => BlindMessage(
    durationMs: json['durationMs'] as int,
    effectId: json['effectId'] as String,
  );

  Map<String, dynamic> toJson() => {
    'durationMs': durationMs,
    'effectId': effectId,
  };
}

/// 서버 → 클라
class OpponentProgressMessage {
  final int found;

  const OpponentProgressMessage({
    required this.found,
  });

  factory OpponentProgressMessage.fromJson(Map<String, dynamic> json) => OpponentProgressMessage(
    found: json['found'] as int,
  );

  Map<String, dynamic> toJson() => {
    'found': found,
  };
}

/// 서버 → 클라
class EndMessage {
  final String result;
  final int myFound;
  final int opponentFound;
  final int score;
  final int coinDelta;
  final int expDelta;

  const EndMessage({
    required this.result,
    required this.myFound,
    required this.opponentFound,
    required this.score,
    required this.coinDelta,
    required this.expDelta,
  });

  factory EndMessage.fromJson(Map<String, dynamic> json) => EndMessage(
    result: json['result'] as String,
    myFound: json['myFound'] as int,
    opponentFound: json['opponentFound'] as int,
    score: json['score'] as int,
    coinDelta: json['coinDelta'] as int,
    expDelta: json['expDelta'] as int,
  );

  Map<String, dynamic> toJson() => {
    'result': result,
    'myFound': myFound,
    'opponentFound': opponentFound,
    'score': score,
    'coinDelta': coinDelta,
    'expDelta': expDelta,
  };
}

/// 서버 → 클라
class ErrorMessage {
  final String code;
  final String message;

  const ErrorMessage({
    required this.code,
    required this.message,
  });

  factory ErrorMessage.fromJson(Map<String, dynamic> json) => ErrorMessage(
    code: json['code'] as String,
    message: json['message'] as String,
  );

  Map<String, dynamic> toJson() => {
    'code': code,
    'message': message,
  };
}
