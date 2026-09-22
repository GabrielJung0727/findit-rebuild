import 'package:flutter_test/flutter_test.dart';
import 'package:findit/core/config.dart';
import 'package:findit/domain/protocol.g.dart';

void main() {
  test('기본 서버 주소는 로컬이다', () {
    // --dart-define 없이 돌리면 개발 기본값. 실기기 빌드는 반드시 주입한다.
    expect(AppConfig.apiBase, 'http://localhost:8080');
    expect(AppConfig.wsBase, 'ws://localhost:8080');
  });

  test('생성된 프로토콜 타입이 붙어 있다 — 손으로 쓴 사본이 아니다', () {
    // 이 단언이 깨지면 protocol.g.dart 가 사라졌거나 스키마가 바뀐 것이다.
    expect(messageTypeWire[MessageType.start], 'START');
    expect(messageTypeWire[MessageType.matchFound], 'MATCH_FOUND');
    expect(MessageType.values.length, 17);
  });
}
