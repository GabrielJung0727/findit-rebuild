/// 전역 상수 — 서버 주소 / 외부 서비스 ID.
///
/// 안드로이드 측 [`Property.java`](../../../../android_project/app/src/main/java/com/findit/battle/Property.java)
/// 와 1:1 매핑. 빌드 환경별 값은 `--dart-define` 플래그 또는 `lib/util/env.dart`
/// 같은 별도 파일에서 오버라이드하는 것을 권장.
///
/// 배포 환경별 권장 값:
/// - 로컬 개발 (Android 에뮬레이터): SERVER_DOMAIN=http://10.0.2.2:8080/
/// - 로컬 개발 (iOS 시뮬레이터):     SERVER_DOMAIN=http://localhost:8080/
/// - 로컬 개발 (실기기 + 같은 Wi-Fi): 호스트 PC LAN IP 사용
/// - 운영: GCP Cloud Run HTTPS URL
class Property {
  Property._();

  /// 서버 — HTTP/REST 기본 도메인 (말미 슬래시 필수).
  static const String serverDomain = String.fromEnvironment(
    'FINDIT_SERVER_DOMAIN',
    defaultValue: 'http://10.0.2.2:8080/',
  );

  /// WebSocket URL — 매칭/대기실/배틀룸 실시간 채널.
  ///
  /// 운영: `wss://<host>/ws`, 개발: `ws://10.0.2.2:22131/ws`.
  static const String webSocketUrl = String.fromEnvironment(
    'FINDIT_WS_URL',
    defaultValue: 'ws://10.0.2.2:22131/ws',
  );

  /// 운영 빌드는 false. 개발용 평문 HTTP 허용 여부.
  static const bool usesCleartextTraffic = bool.fromEnvironment(
    'FINDIT_CLEARTEXT',
    defaultValue: true,
  );

  /// 외부 서비스 ID — 원본 APK 와 동일.
  /// 신규 발급 시 운영 환경에서 이 상수만 교체.
  static const String facebookAppId =
      String.fromEnvironment('FINDIT_FB_APP_ID', defaultValue: '');

  /// reCAPTCHA v3 사이트 키 (가입 시 클라 측 발급).
  static const String recaptchaSiteKey =
      String.fromEnvironment('FINDIT_RECAPTCHA_KEY', defaultValue: '');
}
