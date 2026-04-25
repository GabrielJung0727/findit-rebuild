/// 전역 상수 — 서버 주소 / 외부 서비스 ID.
///
/// 안드로이드 측 [`Property.java`](../../../../android_project/app/src/main/java/com/findit/battle/Property.java)
/// 와 1:1 매핑. 빌드 환경별 값은 `--dart-define` 플래그로 오버라이드.
///
/// 배포 환경별 권장 값:
/// - 로컬 개발 (Android 에뮬레이터): SERVER_DOMAIN=http://10.0.2.2:8080/
/// - 로컬 개발 (iOS 시뮬레이터):     SERVER_DOMAIN=http://localhost:8080/
/// - 로컬 개발 (실기기 + 같은 Wi-Fi): 호스트 PC LAN IP 사용
/// - 운영: GCP Cloud Run HTTPS URL
///
/// HTTPS 전환 시 [usesCleartextTraffic] 을 false 로 설정하고
/// `network_security_config.xml` (Android) / `Info.plist NSAppTransportSecurity`
/// (iOS) 도 맞춰야 함. 04-26.md §2 참조.
class Property {
  Property._();

  // ===========================================================
  // 서버 — HTTP/REST
  // ===========================================================

  /// 기본 도메인. 말미 슬래시 필수. 엔드포인트 경로와 결합됨.
  static const String serverDomain = String.fromEnvironment(
    'FINDIT_SERVER_DOMAIN',
    defaultValue: 'http://10.0.2.2:8080/',
  );

  // ===========================================================
  // 실시간 채널 — WebSocket (raw TCP `:22131` 대체)
  // ===========================================================

  /// WebSocket URL — 매칭/대기실/배틀룸 실시간 채널.
  ///
  /// 운영: `wss://<host>/ws`, 개발: `ws://10.0.2.2:22131/ws`.
  /// iOS 백그라운드/앱전환 호환을 위해 raw TCP 대신 WebSocket 채택 (04-26.md §12).
  static const String webSocketUrl = String.fromEnvironment(
    'FINDIT_WS_URL',
    defaultValue: 'ws://10.0.2.2:22131/ws',
  );

  /// @deprecated raw TCP 시절 흔적. 안드로이드 `Property.SERVER_IP` 호환용.
  /// 새 코드는 [webSocketUrl] 사용.
  @Deprecated('Use webSocketUrl instead — raw TCP socket is being retired')
  static const String serverIp = String.fromEnvironment(
    'FINDIT_SERVER_IP',
    defaultValue: '10.0.2.2',
  );

  /// @deprecated raw TCP 시절 흔적. 안드로이드 `Property.SERVER_SOCKET_PORT` 호환용.
  @Deprecated('Use webSocketUrl instead — raw TCP socket is being retired')
  static const int serverSocketPort = int.fromEnvironment(
    'FINDIT_SERVER_SOCKET_PORT',
    defaultValue: 22131,
  );

  // ===========================================================
  // 네트워크 보안
  // ===========================================================

  /// 운영 빌드는 false. 개발용 평문 HTTP 허용 여부.
  ///
  /// Android 측 `network_security_config.xml` 의 base-config / domain-config
  /// 그리고 iOS `Info.plist NSAppTransportSecurity` 와 일관되게 유지.
  static const bool usesCleartextTraffic = bool.fromEnvironment(
    'FINDIT_CLEARTEXT',
    defaultValue: true,
  );

  // ===========================================================
  // 외부 서비스 ID (원본 APK 와 동일 — 신규 발급 시 교체)
  // ===========================================================

  /// Facebook 로그인 / 친구 / 초대 (1.3 후속).
  static const String facebookAppId = String.fromEnvironment(
    'FINDIT_FB_APP_ID',
    defaultValue: '',
  );

  /// reCAPTCHA v3 사이트 키 (가입 시 클라 측 발급).
  static const String recaptchaSiteKey = String.fromEnvironment(
    'FINDIT_RECAPTCHA_KEY',
    defaultValue: '',
  );

  /// 광고 SDK ID (원본 코드 호환). AdMob 으로 교체 시 별도 상수.
  static const String adhubId = 'xv0d000000029e';

  /// Samsung IAP — 04-24.md §1.7 의 코인팩 SKU 재등록 시 갱신 대상.
  /// Apple StoreKit / Google Play 별도 SKU 는 §10 에서 관리.
  static const String samsungIapId = '100000100952';
  static const String samsungIapItemIdCoin1000 = '000001005358';
  static const String samsungIapItemIdCoin2500 = '000001005359';
  static const String samsungIapItemIdCoin5500 = '000001005360';
  static const String samsungIapItemIdCoin8500 = '000001005361';
}
