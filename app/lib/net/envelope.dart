import 'dart:convert';

import '../domain/protocol.g.dart';

/// 와이어 이름 → 열거형. 생성물의 맵을 뒤집어 한 번만 만든다.
final Map<String, MessageType> _byWire = {
  for (final entry in messageTypeWire.entries) entry.value: entry.key,
};

class Envelope {
  final MessageType type;
  final int seq;
  final Map<String, dynamic> data;

  const Envelope({required this.type, required this.seq, required this.data});
}

String encodeEnvelope(MessageType type, int seq, Map<String, dynamic> data) {
  // 와이어 이름으로 내보낸다. enum 이름('queueJoin')을 그대로 보내면 서버가
  // 알 수 없는 메시지로 보고 연결을 끊는다.
  return jsonEncode({'t': messageTypeWire[type], 'seq': seq, 'd': data});
}

/// 모양이 어긋나면 **던지지 않고 null 을 준다.**
///
/// 프레임 한 통에 앱이 죽으면 안 된다. 서버가 나중에 메시지를 늘려도 구버전
/// 클라이언트는 그것만 버리고 계속 돌아야 한다.
Envelope? decodeEnvelope(String raw) {
  final Object? parsed;
  try {
    parsed = jsonDecode(raw);
  } on FormatException {
    return null;
  }

  if (parsed is! Map<String, dynamic>) return null;

  final type = _byWire[parsed['t']];
  if (type == null) return null;

  final seq = parsed['seq'];
  if (seq is! int) return null;

  // Dart 에서 List 는 Map 이 아니므로 is! Map 하나로 걸러진다.
  final data = parsed['d'];
  if (data is! Map<String, dynamic>) return null;

  return Envelope(type: type, seq: seq, data: data);
}
