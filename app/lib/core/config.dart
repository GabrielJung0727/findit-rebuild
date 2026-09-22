/// 서버 주소. 실기기·시뮬레이터에서는 localhost 가 아무 데도 닿지 않으므로
/// 빌드 때 주입한다:
///   flutter run --dart-define=API_BASE=http://192.168.0.10:8080 \
///               --dart-define=WS_BASE=ws://192.168.0.10:8080
class AppConfig {
  const AppConfig._();

  static const String apiBase =
      String.fromEnvironment('API_BASE', defaultValue: 'http://localhost:8080');

  static const String wsBase =
      String.fromEnvironment('WS_BASE', defaultValue: 'ws://localhost:8080');
}
