import 'dart:async';
import 'dart:math';

import '../domain/match_state.dart';
import '../domain/protocol.g.dart';
import 'envelope.dart';
import 'socket.dart';

const Duration _backoffMin = Duration(milliseconds: 500);
const Duration _backoffMax = Duration(seconds: 8);

class WsClient {
  final Uri url;
  final String token;
  final SocketFactory _connect;
  final Future<void> Function(Duration) _sleep;
  final Random _random;

  final _states = StreamController<MatchState>.broadcast();
  MatchState _state = MatchState.initial();
  Socket? _socket;
  StreamSubscription<String>? _sub;
  int _seq = 0;
  Duration _backoff = _backoffMin;
  bool _gotFrame = false;
  bool _disposed = false;

  WsClient({
    required this.url,
    required this.token,
    SocketFactory? connect,
    Future<void> Function(Duration)? sleep,
    Random? random,
  })  : _connect = connect ?? connectWebSocket,
        _sleep = sleep ?? ((d) => Future<void>.delayed(d)),
        _random = random ?? Random();

  Stream<MatchState> get states => _states.stream;
  MatchState get state => _state;

  Future<void> connect() async {
    // 닫힌 뒤 연결을 막는 유일한 자리다. 재연결이 백오프를 기다리는
    // 동안 dispose 가 오면, 잠에서 깨어난 _reconnect 가 여기로 들어온다.
    // 이 검사가 없으면 아무도 닫지 않을 소켓이 만들어지고 영원히 재연결을
    // 반복한다.
    if (_disposed) return;
    final socket = await _connect(url);
    _socket = socket;
    // **여기서 백오프를 초기화하지 않는다.** connect() 가 돌아왔다는 것은
    // 소켓이 열렸다는 뜻일 뿐이다. 서버가 열자마자 끊는 상태(기동 중,
    // 과부하)에서 초기화하면 영원히 500ms 마다 두드려 복구를 방해한다.
    // 프레임을 한 번이라도 받아야 "이 연결은 쓸 수 있다" 가 증명된다.
    _gotFrame = false;

    _sub = socket.incoming.listen(
      _onFrame,
      onError: (Object _) => _reconnect(),
      onDone: _reconnect,
      cancelOnError: false,
    );

    // AUTH 가 먼저다. 서버는 인증되지 않은 연결의 다른 메시지를 끊는다.
    _send(MessageType.auth, {'token': token});
  }

  void joinQueue() => _send(MessageType.queueJoin, {'mode': 'casual'});
  void leaveQueue() => _send(MessageType.queueLeave, const {});
  void ready() => _send(MessageType.ready, const {});
  void tap(int x, int y) => _send(MessageType.tap, {'x': x, 'y': y});
  void useSkill(String id) => _send(MessageType.skill, {'skillId': id});

  Future<void> dispose() async {
    _disposed = true;
    await _sub?.cancel();
    await _socket?.close();
    await _states.close();
  }

  void _send(MessageType type, Map<String, dynamic> data) {
    _seq += 1;
    _socket?.send(encodeEnvelope(type, _seq, data));
  }

  void _onFrame(String raw) {
    final envelope = decodeEnvelope(raw);
    // 모양이 깨졌거나 모르는 타입이면 버린다. 프레임 한 통에 스트림이
    // 죽으면 그 뒤로는 아무것도 못 받는다.
    if (envelope == null) return;

    // 프레임이 왔다 = 이 연결은 실제로 동작한다. 이제 백오프를 되돌린다.
    if (!_gotFrame) {
      _gotFrame = true;
      _backoff = _backoffMin;
    }

    _state = applyFrame(_state, envelope);
    if (!_states.isClosed) _states.add(_state);
  }

  Future<void> _reconnect() async {
    await _sub?.cancel();
    _sub = null;
    _socket = null;

    // **로비로 돌아간다.** 소켓이 끊긴 순간 서버는 그 매치를 LEAVE 로
    // 끝냈다 (Plan 4 게이트웨이). 예전 매치를 이어가려 하면 영원히 오지
    // 않을 프레임을 기다린다.
    _state = MatchState.initial();
    if (!_states.isClosed) _states.add(_state);

    // 지터를 섞는다. 안 섞으면 끊긴 클라들이 같은 순간에 몰려 돌아와
    // 복구 중인 서버를 다시 넘어뜨린다.
    final jitter = 1 + _random.nextDouble() * 0.5;
    await _sleep(Duration(
        milliseconds: (_backoff.inMilliseconds * jitter).round()));

    final doubled = _backoff * 2;
    _backoff = doubled > _backoffMax ? _backoffMax : doubled;

    // 여기서 _disposed 를 또 검사하지 않는다. connect() 가 이미 본다.
    // 가드를 여러 군데 두면 어느 하나를 지워도 다른 쪽이 막아, 회귀를 잡을
    // 수 있는 테스트를 쓸 수 없게 된다.
    try {
      await connect();
    } on Object {
      // 연결 자체가 실패하면 다시 물러났다 시도한다.
      unawaited(_reconnect());
    }
  }
}
