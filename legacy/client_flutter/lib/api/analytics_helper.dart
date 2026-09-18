import 'dart:async';
import 'dart:math';

import 'package:flutter/foundation.dart';

import 'analytics_api.dart';

/// 고수준 이벤트 헬퍼 — `analytics_api.event()` 호출을 도메인 이벤트별 메서드로 정리.
///
/// 04-24.md §2 의 `event_log` 테이블 + `analytics.js` 가 처리하는 이벤트명 컨벤션을
/// 한 곳에서 관리. 새 이벤트 추가 시 여기 + 서버 admin 대시보드 토픽만 갱신하면 됨.
///
/// 모든 호출은 fire-and-forget — 네트워크 실패 / 서버 오류 시 silent 진행 (디버그 로그만).
/// 게임 플레이를 분석 호출 실패로 막지 않는 게 정책.
class AnalyticsHelper {
  AnalyticsHelper(this._api);

  final AnalyticsApi _api;
  final String _sessionId = _newSessionId();

  /// 세션 단위 ID — 앱 시작부터 유지. 동일 사용자가 세션 여러 번 시작 시 구분.
  String get sessionId => _sessionId;

  /// 로그인 성공 (email/guest/facebook 어떤 경로든).
  void loginSuccess({required String userId, required String authType}) {
    _send(userId, 'login', <String, dynamic>{'authType': authType});
  }

  /// 회원가입 성공.
  void joinSuccess({required String userId}) {
    _send(userId, 'join');
  }

  /// 게임 시작 — 멀티/싱글 + 스테이지 imgId.
  void gameStart({
    required String userId,
    required bool isAi,
    required int imgId,
    required int level,
  }) {
    _send(userId, 'game_start', <String, dynamic>{
      'isAi': isAi,
      'imgId': imgId,
      'level': level,
    });
  }

  /// 게임 종료 — 결과(승/패/이탈) + 점수/획득.
  void gameEnd({
    required String userId,
    required bool won,
    required String reason, // GameEndReason.name
    required int selfScore,
    required int findNum,
    required double elapsedSeconds,
  }) {
    _send(userId, 'game_end', <String, dynamic>{
      'won': won,
      'reason': reason,
      'selfScore': selfScore,
      'findNum': findNum,
      'elapsedSeconds': elapsedSeconds,
    });
  }

  /// 코인 아이템 구매 (`buyItemAndSpendCoin`).
  void purchaseItem({
    required String userId,
    required int itemNo,
    required int coin,
  }) {
    _send(userId, 'purchase', <String, dynamic>{
      'method': 'coin',
      'itemNo': itemNo,
      'coin': coin,
    });
  }

  /// IAP 결제 성공 (`verifyIap` 검증 후).
  void purchaseIap({
    required String userId,
    required String store, // 'google' | 'apple'
    required String productId,
    required int coinReward,
    required int gemReward,
  }) {
    _send(userId, 'purchase', <String, dynamic>{
      'method': 'iap',
      'store': store,
      'productId': productId,
      'coinReward': coinReward,
      'gemReward': gemReward,
    });
  }

  /// 스킬 학습.
  void skillLearn({required String userId, required int skillId}) {
    _send(userId, 'skill_learn', <String, dynamic>{'skillId': skillId});
  }

  /// 아이템 강화 (`upgradeItem`) — 성공/실패 둘 다 기록.
  void itemUpgrade({
    required String userId,
    required int itemNo,
    required bool success,
    required int newLevel,
    required String fluxUsed,
  }) {
    _send(userId, 'item_upgrade', <String, dynamic>{
      'itemNo': itemNo,
      'success': success,
      'newLevel': newLevel,
      'fluxUsed': fluxUsed,
    });
  }

  /// 광고 노출 (서버에 적재 — `hitViewCount` 와 별도 분석 채널).
  void adView({String? userId, required int adId}) {
    _send(userId, 'ad_view', <String, dynamic>{'adId': adId});
  }

  /// 광고 보상 수령.
  void adReward({required String userId, required int adId, required int coin}) {
    _send(userId, 'ad_reward', <String, dynamic>{'adId': adId, 'coin': coin});
  }

  /// 임의 커스텀 이벤트 — 위 메서드에 없는 이벤트.
  void custom({
    String? userId,
    required String name,
    Map<String, dynamic>? payload,
  }) {
    _send(userId, name, payload);
  }

  Future<void> _send(String? userId, String name, [Map<String, dynamic>? payload]) async {
    try {
      await _api.event(
        userId: userId,
        eventName: name,
        payload: payload,
        sessionId: _sessionId,
      );
    } catch (e) {
      if (kDebugMode) debugPrint('[analytics] $name failed: $e');
    }
  }

  static String _newSessionId() {
    final r = Random();
    final ts = DateTime.now().millisecondsSinceEpoch;
    final rnd = r.nextInt(1 << 24).toRadixString(16).padLeft(6, '0');
    return '$ts-$rnd';
  }
}
