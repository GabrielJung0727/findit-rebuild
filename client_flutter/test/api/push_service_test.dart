import 'package:findit/api/push_service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PushEvent', () {
    test('invite event holds from + roomName in data', () {
      const e = PushEvent(
        type: 'invite',
        title: '대전 초대',
        body: 'alice 님이 초대 요청을 하셨습니다.',
        data: <String, String>{'from': 'alice', 'roomName': '@room_3'},
        fromTerminated: false,
        opened: true,
      );
      expect(e.type, 'invite');
      expect(e.data['from'], 'alice');
      expect(e.data['roomName'], '@room_3');
      expect(e.opened, true);
    });

    test('terminated launch carries fromTerminated=true', () {
      const e = PushEvent(
        type: 'invite',
        title: 't',
        body: 'b',
        data: <String, String>{'from': 'a', 'roomName': '@r1'},
        fromTerminated: true,
        opened: false,
      );
      expect(e.fromTerminated, true);
    });
  });
}
