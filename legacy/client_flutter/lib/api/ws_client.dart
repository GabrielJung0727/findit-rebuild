import 'dart:async';
import 'dart:ui' show AppLifecycleState;

import 'package:flutter/foundation.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import '../util/property.dart';

/// 멀티플레이 WebSocket 클라이언트.
///
/// 메시지 프레임은 안드 원본 TCP 와 동일한 `|code|arg1|arg2|...` 텍스트 포맷
/// (서버 [`socket/handlers.js`](../../../../server/src/socket/handlers.js) 에서 공유 핸들러로 처리).
///
/// 책임:
/// - 연결/해제 (`connect()` / `disconnect()`)
/// - 재연결 — 지수 backoff (1s → 2s → 4s → ... 최대 30s, 5회 후 포기)
/// - 메시지 전송 (`send(code, args)`)
/// - 메시지 수신 broadcast — `messages` Stream
/// - 앱 lifecycle 통합 — paused 시 close, resumed 시 자동 reconnect
class WsClient {
  WsClient({Uri? url, this.maxReconnectAttempts = 5})
      : _url = url ?? Uri.parse(Property.webSocketUrl);

  final Uri _url;
  final int maxReconnectAttempts;

  WebSocketChannel? _channel;
  StreamSubscription<dynamic>? _sub;
  final _messages = StreamController<WsFrame>.broadcast();

  bool _wantConnected = false;
  bool _disposed = false;
  int _attempt = 0;
  Timer? _reconnectTimer;

  /// 수신 메시지 broadcast 스트림. UI/state 가 listen.
  Stream<WsFrame> get messages => _messages.stream;

  /// 현재 연결 상태 (open).
  bool get isConnected => _channel != null && _sub != null;

  /// 사용자/세션 의도 — `connect()` 후 명시적으로 `disconnect()` 하기 전까지 유지.
  /// 일시적 끊김 시 자동 재연결의 트리거.
  bool get wantConnected => _wantConnected;

  Future<void> connect() async {
    _wantConnected = true;
    if (_disposed) return;
    if (isConnected) return;
    try {
      final ch = WebSocketChannel.connect(_url);
      // ready 가 throw 하면 onError 로 빠짐
      await ch.ready;
      _channel = ch;
      _attempt = 0;
      _sub = ch.stream.listen(
        _onData,
        onError: _onError,
        onDone: _onDone,
        cancelOnError: false,
      );
      if (kDebugMode) {
        debugPrint('[ws] connected to $_url');
      }
    } catch (e) {
      if (kDebugMode) debugPrint('[ws] connect error: $e');
      _scheduleReconnect();
    }
  }

  Future<void> disconnect() async {
    _wantConnected = false;
    _reconnectTimer?.cancel();
    _reconnectTimer = null;
    await _sub?.cancel();
    _sub = null;
    await _channel?.sink.close();
    _channel = null;
  }

  /// 메시지 전송. [args] 는 `|` 구분자로 join.
  /// 미연결 시 silently drop — 호출 측이 `isConnected` 확인하거나 retry.
  void send(String code, [List<String> args = const <String>[]]) {
    final ch = _channel;
    if (ch == null) return;
    final body = StringBuffer('|$code');
    for (final a in args) {
      body.write('|');
      body.write(a);
    }
    ch.sink.add(body.toString());
  }

  /// 앱 lifecycle 변경 시 호출. paused/detached 시 close, resumed 시 reconnect.
  void onLifecycleChange(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.paused:
      case AppLifecycleState.detached:
      case AppLifecycleState.hidden:
        // 일시 close — 의도(_wantConnected) 는 유지해서 resume 시 자동 reconnect.
        _sub?.cancel();
        _sub = null;
        _channel?.sink.close();
        _channel = null;
        _reconnectTimer?.cancel();
        _reconnectTimer = null;
        break;
      case AppLifecycleState.resumed:
        if (_wantConnected && !isConnected) {
          unawaited(connect());
        }
        break;
      case AppLifecycleState.inactive:
        // 잠깐의 inactive (전화/알림) — 끊지 않음.
        break;
    }
  }

  Future<void> dispose() async {
    _disposed = true;
    _wantConnected = false;
    await disconnect();
    await _messages.close();
  }

  // ===========================================================
  // 내부
  // ===========================================================

  void _onData(Object? raw) {
    if (raw is! String) return;
    final frame = WsFrame.parse(raw);
    if (frame == null) return;
    _messages.add(frame);
  }

  void _onError(Object e, StackTrace _) {
    if (kDebugMode) debugPrint('[ws] stream error: $e');
    _channel = null;
    _sub = null;
    _scheduleReconnect();
  }

  void _onDone() {
    if (kDebugMode) debugPrint('[ws] stream done (close)');
    _channel = null;
    _sub = null;
    _scheduleReconnect();
  }

  void _scheduleReconnect() {
    if (_disposed || !_wantConnected) return;
    if (_attempt >= maxReconnectAttempts) {
      if (kDebugMode) debugPrint('[ws] max reconnect attempts reached');
      return;
    }
    _attempt++;
    final delaySeconds = (1 << (_attempt - 1)).clamp(1, 30);
    _reconnectTimer?.cancel();
    _reconnectTimer = Timer(Duration(seconds: delaySeconds), () {
      if (!_disposed && _wantConnected) unawaited(connect());
    });
  }
}

/// 수신 프레임 — `|code|arg1|arg2|...` 파싱 결과.
@immutable
class WsFrame {
  const WsFrame({required this.code, required this.args});

  final String code;
  final List<String> args;

  /// 첫 인자(=`result`) 가 '000' 이면 OK. 안드 원본의 result 코드 컨벤션과 동일.
  bool get ok => args.isNotEmpty && args.first == '000';

  /// `result` 이후의 payload 인자들.
  List<String> get payload => args.length > 1 ? args.sublist(1) : const <String>[];

  static WsFrame? parse(String raw) {
    if (raw.isEmpty || !raw.startsWith('|')) return null;
    final parts = raw.split('|');
    // ['', code, ...args]
    if (parts.length < 2) return null;
    return WsFrame(code: parts[1], args: parts.sublist(2));
  }

  @override
  String toString() => 'WsFrame(code=$code, args=$args)';
}
