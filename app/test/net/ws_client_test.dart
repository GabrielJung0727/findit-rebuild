import 'dart:async';
import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:findit/domain/match_state.dart';
import 'package:findit/net/socket.dart';
import 'package:findit/net/ws_client.dart';

class FakeSocket implements Socket {
  final _in = StreamController<String>.broadcast();
  final List<String> sent = [];
  bool closed = false;

  @override
  Stream<String> get incoming => _in.stream;
  @override
  void send(String raw) => sent.add(raw);
  @override
  Future<void> close() async { closed = true; await _in.close(); }

  void serverSends(String type, Map<String, dynamic> d) =>
      _in.add(jsonEncode({'t': type, 'seq': 1, 'd': d}));
  /// 프라이버시는 라이브러리 단위다. 테스트 파일에서 _in 에 직접 닿을 수
  /// 없으므로 통로를 연다.
  void raw(String frame) => _in.add(frame);
  /// 닫힌 뒤에 부르면 StreamController 가 던진다. 실제 소켓도 닫힌 뒤에는
  /// 아무것도 전달하지 않으므로 여기서 걸러 준다.
  void drop() {
    if (!_in.isClosed) _in.addError(const SocketException('끊김'));
  }

  Map<String, dynamic> sentAt(int i) => jsonDecode(sent[i]) as Map<String, dynamic>;
}

class SocketException implements Exception {
  final String message;
  const SocketException(this.message);
}

void main() {
  late List<FakeSocket> made;
  late List<Duration> waited;

  WsClient build({String token = 't-1'}) {
    made = [];
    waited = [];
    return WsClient(
      url: Uri.parse('ws://x'),
      token: token,
      connect: (_) async { final s = FakeSocket(); made.add(s); return s; },
      // 실시간을 기다리지 않는다. 얼마를 기다리려 했는지만 기록한다.
      sleep: (d) async { waited.add(d); },
    );
  }

  test('연결하면 AUTH 를 먼저 보낸다', () async {
    final c = build();
    await c.connect();
    expect(made.single.sentAt(0)['t'], 'AUTH');
    expect(made.single.sentAt(0)['d'], {'token': 't-1'});
    await c.dispose();
  });

  test('서버 프레임이 상태로 접힌다', () async {
    final c = build();
    await c.connect();
    final seen = <MatchState>[];
    final sub = c.states.listen(seen.add);

    made.single.serverSends('QUEUED', {'position': 0});
    made.single.serverSends('MATCH_FOUND', {
      'matchId': 'm1', 'opponentName': '상대', 'opponentLevel': 1, 'isAi': true,
    });
    await Future<void>.delayed(Duration.zero);

    expect(seen.last.phase, MatchPhase.matched);
    expect(seen.last.matchId, 'm1');
    await sub.cancel();
    await c.dispose();
  });

  test('모양이 깨진 프레임은 버리고 계속 돈다', () async {
    final c = build();
    await c.connect();
    final seen = <MatchState>[];
    final sub = c.states.listen(seen.add);

    made.single.raw('{{{');
    made.single.serverSends('FUTURE_MSG', const {});
    made.single.serverSends('QUEUED', {'position': 0});
    await Future<void>.delayed(Duration.zero);

    // 앞의 둘이 스트림을 죽였다면 마지막이 오지 않는다.
    expect(seen.last.phase, MatchPhase.queued);
    await sub.cancel();
    await c.dispose();
  });

  test('보내는 메시지가 와이어 이름으로 나간다', () async {
    final c = build();
    await c.connect();
    c.joinQueue();
    c.ready();
    c.tap(231, 402);
    c.useSkill('hand_01');

    final types = [for (var i = 1; i < made.single.sent.length; i += 1)
      made.single.sentAt(i)['t']];
    expect(types, ['QUEUE_JOIN', 'READY', 'TAP', 'SKILL']);
    expect(made.single.sentAt(3)['d'], {'x': 231, 'y': 402});
    await c.dispose();
  });

  group('재연결', () {
    test('끊기면 다시 연결하고 AUTH 를 다시 보낸다', () async {
      final c = build();
      await c.connect();
      made.first.drop();
      await Future<void>.delayed(Duration.zero);
      await Future<void>.delayed(Duration.zero);

      expect(made.length, 2);
      expect(made.last.sentAt(0)['t'], 'AUTH');
      await c.dispose();
    });

    test('재연결하면 상태가 idle 로 돌아간다 — 서버는 그 매치를 이미 끝냈다', () async {
      final c = build();
      await c.connect();
      final seen = <MatchState>[];
      final sub = c.states.listen(seen.add);

      made.first.serverSends('MATCH_FOUND', {
        'matchId': 'm1', 'opponentName': 'x', 'opponentLevel': 1, 'isAi': true,
      });
      await Future<void>.delayed(Duration.zero);
      expect(seen.last.phase, MatchPhase.matched);

      made.first.drop();
      await Future<void>.delayed(Duration.zero);
      await Future<void>.delayed(Duration.zero);

      // 예전 매치를 이어가려 하면 영원히 오지 않을 프레임을 기다린다.
      expect(seen.last.phase, MatchPhase.idle);
      await sub.cancel();
      await c.dispose();
    });

    test('백오프가 두 배씩 늘고 상한에서 멈춘다', () async {
      final c = build();
      await c.connect();

      // **마이크로태스크 두 번으로는 부족하다.** _reconnect 는 cancel ·
      // sleep · connect 를 연달아 await 하므로, 새 소켓이 생길 때까지
      // 기다려야 다음 drop 이 그 소켓을 향한다. 안 그러면 이미 죽은 소켓을
      // 여섯 번 두드리고 재연결은 한 번만 일어난다.
      for (var i = 0; i < 6; i += 1) {
        final before = made.length;
        made.last.drop();
        for (var spin = 0; spin < 100 && made.length == before; spin += 1) {
          await Future<void>.delayed(Duration.zero);
        }
        expect(made.length, before + 1, reason: '${i + 1}번째 재연결이 일어나지 않았다');
      }

      final ms = waited.map((d) => d.inMilliseconds).toList();
      expect(ms, hasLength(6));

      // **단조 증가로 보면 안 된다.** 상한에 닿은 뒤에는 지터 때문에
      // 8133 다음에 8008 이 나올 수 있다. 차례마다 기댓값 구간을 본다:
      //   500 · 1000 · 2000 · 4000 · 8000 · 8000(상한), 각각 ×[1, 1.5] 지터.
      for (var i = 0; i < ms.length; i += 1) {
        final base = (500 * (1 << i)).clamp(500, 8000);
        expect(ms[i], inInclusiveRange(base, (base * 1.5).round()),
            reason: '${i + 1}번째 대기 ${ms[i]}ms 가 ${base}ms 대가 아니다');
      }
      await c.dispose();
    });

    test('프레임을 한 번 받으면 백오프가 처음으로 되돌아간다', () async {
      final c = build();
      await c.connect();

      // 프레임 없이 두 번 끊는다 → 500, 1000 으로 늘어난다.
      for (var i = 0; i < 2; i += 1) {
        final before = made.length;
        made.last.drop();
        for (var spin = 0; spin < 100 && made.length == before; spin += 1) {
          await Future<void>.delayed(Duration.zero);
        }
      }
      expect(waited.last.inMilliseconds, greaterThan(900));

      // 이번에는 프레임이 온다 = 이 연결은 쓸 수 있다.
      made.last.serverSends('QUEUED', {'position': 0});
      await Future<void>.delayed(Duration.zero);

      final before = made.length;
      made.last.drop();
      for (var spin = 0; spin < 100 && made.length == before; spin += 1) {
        await Future<void>.delayed(Duration.zero);
      }

      // 되돌리지 않으면 여기가 2000 대가 된다.
      expect(waited.last.inMilliseconds, inInclusiveRange(500, 750));
      await c.dispose();
    });

    test('dispose 가 소켓을 닫는다', () async {
      final c = build();
      await c.connect();
      await c.dispose();

      // 이것만으로는 _disposed 가드를 검증하지 못한다. 구독이 이미 취소돼
      // 끊김이 아무 데도 닿지 않기 때문이다 — 아래 테스트가 그 몫이다.
      expect(made.first.closed, isTrue);
    });

    test('재연결을 기다리는 도중에 dispose 하면 다시 연결하지 않는다', () async {
      // 가드가 실제로 지키는 상황은 이것이다. 소켓이 끊기면 _reconnect 가
      // 시작되어 백오프만큼 기다린다. 그 사이에 dispose 가 오면, 가드가 없는
      // 구현은 잠에서 깨어나 새 소켓을 만들고 아무도 그것을 닫지 않는다.
      final gate = Completer<void>();
      made = [];
      waited = [];
      final c = WsClient(
        url: Uri.parse('ws://x'),
        token: 't-1',
        connect: (_) async { final s = FakeSocket(); made.add(s); return s; },
        sleep: (d) { waited.add(d); return gate.future; },
      );
      await c.connect();
      expect(made, hasLength(1));

      made.first.drop();
      await pumpEventQueue();
      expect(waited, hasLength(1));

      await c.dispose();
      gate.complete();
      await pumpEventQueue();

      expect(made, hasLength(1));
    });
  });
}
