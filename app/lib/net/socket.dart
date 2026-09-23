import 'package:web_socket_channel/web_socket_channel.dart';

/// 소켓을 좁은 포트 뒤에 둔다. 테스트가 web_socket_channel 구현에 묶이지
/// 않고, 가짜를 세 줄로 만들 수 있다.
abstract interface class Socket {
  Stream<String> get incoming;
  void send(String raw);
  Future<void> close();
}

typedef SocketFactory = Future<Socket> Function(Uri url);

Future<Socket> connectWebSocket(Uri url) async {
  final channel = WebSocketChannel.connect(url);
  await channel.ready;
  return _ChannelSocket(channel);
}

class _ChannelSocket implements Socket {
  final WebSocketChannel _channel;
  _ChannelSocket(this._channel);

  @override
  Stream<String> get incoming => _channel.stream.map((e) => e as String);
  @override
  void send(String raw) => _channel.sink.add(raw);
  @override
  Future<void> close() => _channel.sink.close();
}
