import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:findit/domain/protocol.g.dart';
import 'package:findit/net/envelope.dart';

void main() {
  group('인코딩', () {
    test('와이어 이름으로 나간다 — enum 이름이 아니다', () {
      final raw = encodeEnvelope(MessageType.queueJoin, 1, {'mode': 'casual'});
      final json = jsonDecode(raw) as Map<String, dynamic>;
      // 'queueJoin' 이 나가면 서버가 알 수 없는 메시지로 끊는다.
      expect(json['t'], 'QUEUE_JOIN');
      expect(json['seq'], 1);
      expect(json['d'], {'mode': 'casual'});
    });

    test('페이로드가 없는 메시지도 d 를 빈 객체로 싣는다', () {
      final json = jsonDecode(encodeEnvelope(MessageType.ready, 7, {}))
          as Map<String, dynamic>;
      // 서버의 decodeEnvelope 은 d 가 객체가 아니면 거부한다.
      expect(json['d'], isA<Map<String, dynamic>>());
      expect(json['d'], isEmpty);
    });

    test('모든 c2s 타입이 왕복한다', () {
      for (final type in MessageType.values) {
        final wire = messageTypeWire[type]!;
        final decoded = decodeEnvelope(encodeEnvelope(type, 1, const {}));
        expect(decoded, isNotNull, reason: '$wire 가 왕복하지 못했다');
        expect(decoded!.type, type);
      }
    });
  });

  group('디코딩 — 던지지 않는다', () {
    Envelope? d(Object? body) => decodeEnvelope(jsonEncode(body));

    test('정상 프레임을 읽는다', () {
      final e = d({'t': 'START', 'seq': 3, 'd': {'puzzleId': 'a0001'}});
      expect(e!.type, MessageType.start);
      expect(e.seq, 3);
      expect(e.data['puzzleId'], 'a0001');
    });

    test('JSON 이 아니면 null', () => expect(decodeEnvelope('{{{'), isNull));
    test('배열이면 null', () => expect(d([1, 2]), isNull));
    test('t 가 없으면 null', () => expect(d({'seq': 1, 'd': {}}), isNull));
    test('모르는 t 면 null — 서버가 늘어나도 앱이 죽지 않는다',
        () => expect(d({'t': 'FUTURE_MSG', 'seq': 1, 'd': {}}), isNull));
    test('seq 가 정수가 아니면 null', () => expect(d({'t': 'START', 'seq': 'x', 'd': {}}), isNull));
    test('d 가 객체가 아니면 null', () => expect(d({'t': 'START', 'seq': 1, 'd': 5}), isNull));
    test('d 가 배열이면 null — typeof 로는 걸러지지 않는 모양이다',
        () => expect(d({'t': 'START', 'seq': 1, 'd': []}), isNull));
    test('d 가 없으면 null', () => expect(d({'t': 'START', 'seq': 1}), isNull));
  });
}
