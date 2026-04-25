import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../api/api_client.dart';
import '../api/member_api.dart';
import 'providers.dart';

/// 로그인된 유저의 핵심 정보. 서버 `login.json` 의 `user` 객체 + 자동로그인 플래그.
@immutable
class AuthUser {
  const AuthUser({
    required this.userId,
    required this.userNick,
    required this.userCharacter,
    required this.level,
    required this.score,
    required this.coin,
    required this.point,
    required this.gem,
    required this.hp,
    required this.authType,
  });

  final String userId;
  final String userNick;
  final int userCharacter;
  final int level;
  final int score;
  final int coin;
  final int point;
  final int gem;
  final int hp;
  final String authType;

  factory AuthUser.fromJson(Map<String, dynamic> j) => AuthUser(
        userId: j['userId'] as String? ?? '',
        userNick: j['userNick'] as String? ?? '',
        userCharacter: (j['userCharacter'] as num?)?.toInt() ?? 0,
        level: (j['level'] as num?)?.toInt() ?? 1,
        score: (j['score'] as num?)?.toInt() ?? 0,
        coin: (j['coin'] as num?)?.toInt() ?? 0,
        point: (j['point'] as num?)?.toInt() ?? 0,
        gem: (j['gem'] as num?)?.toInt() ?? 0,
        hp: (j['hp'] as num?)?.toInt() ?? 110,
        authType: j['authType'] as String? ?? 'email',
      );
}

@immutable
class AuthState {
  const AuthState({
    this.user,
    this.loading = false,
    this.error,
  });

  final AuthUser? user;
  final bool loading;
  final String? error;

  bool get isLoggedIn => user != null;

  AuthState copyWith({
    AuthUser? user,
    bool? loading,
    String? error,
    bool clearUser = false,
    bool clearError = false,
  }) =>
      AuthState(
        user: clearUser ? null : (user ?? this.user),
        loading: loading ?? this.loading,
        error: clearError ? null : (error ?? this.error),
      );
}

/// 인증 상태 + 액션. UI 는 [AuthState] 를 watch, [AuthController] 의 메서드를 호출.
class AuthController extends StateNotifier<AuthState> {
  AuthController(this._api) : super(const AuthState());

  final MemberApi _api;

  static const _kAutoLogin = 'auto_login';
  static const _kSavedUserId = 'saved_user_id';
  static const _kSavedPassword = 'saved_password';

  Future<void> login({
    required String userId,
    required String userPass,
    required bool autoLogin,
  }) async {
    state = state.copyWith(loading: true, clearError: true);
    try {
      final body = await _api.login(userId: userId, userPass: userPass);
      final user = AuthUser.fromJson(body['user'] as Map<String, dynamic>);
      await _persistAutoLogin(autoLogin, userId: userId, password: userPass);
      state = state.copyWith(user: user, loading: false);
    } on ApiResultException catch (e) {
      state = state.copyWith(loading: false, error: e.code);
      rethrow;
    } catch (_) {
      state = state.copyWith(loading: false, error: 'network');
      rethrow;
    }
  }

  Future<void> guest({String? deviceId}) async {
    state = state.copyWith(loading: true, clearError: true);
    try {
      final body = await _api.guest(deviceId: deviceId);
      final user = AuthUser.fromJson(body['user'] as Map<String, dynamic>);
      // Guest 는 자동로그인 흔적 남기지 않음 (정책).
      await _clearAutoLogin();
      state = state.copyWith(user: user, loading: false);
    } on ApiResultException catch (e) {
      state = state.copyWith(loading: false, error: e.code);
      rethrow;
    } catch (_) {
      state = state.copyWith(loading: false, error: 'network');
      rethrow;
    }
  }

  Future<void> logout() async {
    try {
      await _api.logout();
    } finally {
      await _clearAutoLogin();
      state = const AuthState();
    }
  }

  /// 앱 시작 시 호출 — 저장된 자동 로그인 자격이 있으면 시도.
  /// 성공/실패 모두 silent (실패 시 로그인 화면이 표시됨).
  Future<void> tryAutoLogin() async {
    final prefs = await SharedPreferences.getInstance();
    if (prefs.getBool(_kAutoLogin) != true) return;
    final id = prefs.getString(_kSavedUserId);
    final pw = prefs.getString(_kSavedPassword);
    if (id == null || pw == null) return;
    try {
      await login(userId: id, userPass: pw, autoLogin: true);
    } catch (_) {
      // 자동 로그인 실패 → 무시. 사용자가 직접 다시 로그인.
    }
  }

  Future<void> _persistAutoLogin(
    bool autoLogin, {
    required String userId,
    required String password,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_kAutoLogin, autoLogin);
    if (autoLogin) {
      await prefs.setString(_kSavedUserId, userId);
      await prefs.setString(_kSavedPassword, password);
    } else {
      await prefs.remove(_kSavedUserId);
      await prefs.remove(_kSavedPassword);
    }
  }

  Future<void> _clearAutoLogin() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_kAutoLogin);
    await prefs.remove(_kSavedUserId);
    await prefs.remove(_kSavedPassword);
  }
}

final authControllerProvider =
    StateNotifierProvider<AuthController, AuthState>((ref) {
  return AuthController(ref.watch(memberApiProvider));
});
