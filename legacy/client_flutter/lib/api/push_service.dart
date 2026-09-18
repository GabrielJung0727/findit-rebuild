import 'dart:async';
import 'dart:io' show Platform;

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';

import 'push_api.dart';

/// FCM 푸시 알림 서비스 — 친구 초대 + 공지/이벤트 수신.
///
/// 책임:
/// 1. Firebase 초기화 (실패 시 silent — 개발 빌드에서 GoogleService-Info.plist 미설치 OK).
/// 2. iOS 권한 요청 (alert/badge/sound).
/// 3. FCM 토큰 획득 → 서버 [PushApi.registerFcmToken].
/// 4. 토큰 갱신 (`onTokenRefresh`) 시 자동 재등록.
/// 5. 메시지 수신:
///    - 포그라운드 (`onMessage`) → in-app banner / 콜백
///    - 백그라운드 진입 시 알림 탭 (`onMessageOpenedApp`) → deep link 콜백
///    - 종료 상태에서 알림으로 앱 시작 (`getInitialMessage`) → 부팅 후 deep link 콜백
///
/// 서버 [routes/fcm.js](../../../../server/src/routes/fcm.js) `sendToUser()` 가 보내는
/// payload 모양: `{type: 'invite' | 'notice' | 'custom', title, body, data}`.
class PushService {
  PushService(this._api);

  final PushApi _api;
  final _events = StreamController<PushEvent>.broadcast();

  StreamSubscription<RemoteMessage>? _msgSub;
  StreamSubscription<RemoteMessage>? _openedSub;
  StreamSubscription<String>? _tokenSub;
  String? _userId;
  bool _ready = false;

  /// 알림 이벤트 broadcast — UI 가 listen 해서 in-app banner / deep link 처리.
  Stream<PushEvent> get events => _events.stream;

  bool get ready => _ready;

  /// Firebase 초기화 + 권한 요청 + 토큰 등록. 로그인 후 1회 호출.
  /// 실패 시 [ready]=false 로 남고 silent 진행 — 개발 환경에서 Firebase 미설정 시 호환.
  Future<void> init({required String userId}) async {
    _userId = userId;
    try {
      // 이미 초기화돼 있으면 재사용 (앱 hot-restart 등)
      if (Firebase.apps.isEmpty) {
        await Firebase.initializeApp();
      }
    } catch (e) {
      if (kDebugMode) debugPrint('[push] Firebase.initializeApp failed: $e');
      _ready = false;
      return;
    }

    final messaging = FirebaseMessaging.instance;

    // iOS 권한 — Android 13+ 도 동일 호출로 알림 권한 받음
    if (Platform.isIOS || Platform.isAndroid) {
      try {
        await messaging.requestPermission(
          alert: true,
          badge: true,
          sound: true,
          provisional: false,
        );
      } catch (e) {
        if (kDebugMode) debugPrint('[push] requestPermission failed: $e');
      }
    }

    // 포그라운드 알림 표시 (iOS 기본은 silent)
    try {
      await messaging.setForegroundNotificationPresentationOptions(
        alert: true,
        badge: true,
        sound: true,
      );
    } catch (_) {/* iOS 만 의미 있음 */}

    // 토큰 획득 + 서버 등록
    try {
      final token = await messaging.getToken();
      if (token != null) {
        await _registerToken(token);
      }
    } catch (e) {
      if (kDebugMode) debugPrint('[push] getToken failed: $e');
    }

    // 토큰 갱신 hook
    _tokenSub?.cancel();
    _tokenSub = messaging.onTokenRefresh.listen(_registerToken);

    // 메시지 핸들러
    _msgSub?.cancel();
    _msgSub = FirebaseMessaging.onMessage.listen(_onForeground);
    _openedSub?.cancel();
    _openedSub = FirebaseMessaging.onMessageOpenedApp.listen(_onTapOpenedApp);

    // 종료 상태에서 부팅된 경우
    final initial = await messaging.getInitialMessage();
    if (initial != null) {
      _emit(initial, fromTerminated: true);
    }

    _ready = true;
  }

  /// logout / 화면 dispose 시. 등록된 핸들러 cleanup.
  Future<void> dispose() async {
    await _msgSub?.cancel();
    _msgSub = null;
    await _openedSub?.cancel();
    _openedSub = null;
    await _tokenSub?.cancel();
    _tokenSub = null;
    await _events.close();
    _ready = false;
  }

  /// 로그아웃 시 서버에 빈 토큰 등록(또는 세션 무효화) — 후속 정책에 따라 추가.

  Future<void> _registerToken(String token) async {
    final user = _userId;
    if (user == null || user.isEmpty) return;
    try {
      await _api.registerFcmToken(userId: user, fcmToken: token);
      if (kDebugMode) debugPrint('[push] token registered');
    } catch (e) {
      if (kDebugMode) debugPrint('[push] registerFcmToken failed: $e');
    }
  }

  void _onForeground(RemoteMessage m) => _emit(m, fromTerminated: false);
  void _onTapOpenedApp(RemoteMessage m) => _emit(m, fromTerminated: false, opened: true);

  void _emit(RemoteMessage m, {required bool fromTerminated, bool opened = false}) {
    final type = (m.data['type'] as String?) ?? 'custom';
    final title = m.notification?.title ?? (m.data['title'] as String? ?? '');
    final body = m.notification?.body ?? (m.data['body'] as String? ?? '');
    final data = Map<String, String>.from(
      m.data.map((k, v) => MapEntry(k.toString(), v?.toString() ?? '')),
    );
    _events.add(PushEvent(
      type: type,
      title: title,
      body: body,
      data: data,
      fromTerminated: fromTerminated,
      opened: opened,
    ),);
  }
}

/// 푸시 알림 이벤트 — UI/router 가 type 에 따라 분기.
@immutable
class PushEvent {
  const PushEvent({
    required this.type,
    required this.title,
    required this.body,
    required this.data,
    required this.fromTerminated,
    required this.opened,
  });

  /// 서버 fcm.js 의 type 필드 (`invite`/`notice`/`custom`).
  final String type;
  final String title;
  final String body;
  final Map<String, String> data;

  /// true = 앱이 종료된 상태에서 알림으로 부팅됨.
  final bool fromTerminated;

  /// true = 사용자가 알림을 탭해서 앱 진입. (포그라운드 표시는 false)
  final bool opened;
}
