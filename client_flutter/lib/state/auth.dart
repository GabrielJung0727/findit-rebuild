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

/// 보유 아이템 한 줄 — 서버 [`inventories`](../../../../server/sql/schema.sql) 의 한 row.
@immutable
class InventoryItem {
  const InventoryItem({
    required this.itemNo,
    required this.itemType,
    required this.quantity,
    required this.upgradeLevel,
  });

  /// `Items.java` 의 typeNo. [ItemCatalog.findByTypeNo] 로 카탈로그 메타 조회.
  final int itemNo;
  final String itemType; // 'PEN' | 'RING' | 'BERRY' | 'POTION' | 'GOLD' | 'ETC'
  final int quantity;
  final int upgradeLevel;

  factory InventoryItem.fromJson(Map<String, dynamic> j) => InventoryItem(
        itemNo: (j['itemNo'] as num?)?.toInt() ?? 0,
        itemType: (j['itemType'] as String?) ?? 'ETC',
        quantity: (j['quantity'] as num?)?.toInt() ?? 0,
        upgradeLevel: (j['upgradeLevel'] as num?)?.toInt() ?? 0,
      );
}

@immutable
class AuthState {
  const AuthState({
    this.user,
    this.loading = false,
    this.error,
    this.items = const <InventoryItem>[],
    this.skills = const <int>{},
    this.inventorySize = 3,
    this.skillDeckCount = 1,
  });

  final AuthUser? user;
  final bool loading;
  final String? error;

  /// 보유 아이템. 서버 login 응답 `item[]` + 거래 후 갱신.
  final List<InventoryItem> items;

  /// 학습한 스킬 ID 집합. 서버 login 응답 `skill[]`.
  final Set<int> skills;

  /// 인벤토리 칸 수 (3..30). `expandInventory` 로 +3 단위 증가.
  final int inventorySize;

  /// 스킬덱 슬롯 수 (1..4). `expandSkillDeck`.
  final int skillDeckCount;

  bool get isLoggedIn => user != null;

  AuthState copyWith({
    AuthUser? user,
    bool? loading,
    String? error,
    List<InventoryItem>? items,
    Set<int>? skills,
    int? inventorySize,
    int? skillDeckCount,
    bool clearUser = false,
    bool clearError = false,
  }) =>
      AuthState(
        user: clearUser ? null : (user ?? this.user),
        loading: loading ?? this.loading,
        error: clearError ? null : (error ?? this.error),
        items: items ?? this.items,
        skills: skills ?? this.skills,
        inventorySize: inventorySize ?? this.inventorySize,
        skillDeckCount: skillDeckCount ?? this.skillDeckCount,
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
      _applyAuthBody(body);
      await _persistAutoLogin(autoLogin, userId: userId, password: userPass);
      state = state.copyWith(loading: false);
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
      _applyAuthBody(body);
      // Guest 는 자동로그인 흔적 남기지 않음 (정책).
      await _clearAutoLogin();
      state = state.copyWith(loading: false);
    } on ApiResultException catch (e) {
      state = state.copyWith(loading: false, error: e.code);
      rethrow;
    } catch (_) {
      state = state.copyWith(loading: false, error: 'network');
      rethrow;
    }
  }

  /// login/guest/facebook 응답의 `user/item/skill` 을 state 에 반영.
  void _applyAuthBody(Map<String, dynamic> body) {
    final user = AuthUser.fromJson(body['user'] as Map<String, dynamic>);
    final itemRaw = body['item'];
    final skillRaw = body['skill'];
    final items = (itemRaw is List)
        ? itemRaw
            .whereType<Map<dynamic, dynamic>>()
            .map((m) => InventoryItem.fromJson(m.cast<String, dynamic>()))
            .toList(growable: false)
        : const <InventoryItem>[];
    final skills = (skillRaw is List)
        ? skillRaw
            .whereType<Map<dynamic, dynamic>>()
            .map((m) => (m['skillId'] as num?)?.toInt() ?? 0)
            .where((id) => id > 0)
            .toSet()
        : <int>{};
    state = state.copyWith(
      user: user,
      items: items,
      skills: skills,
      inventorySize: (body['user'] as Map<String, dynamic>?)?['inventorySize']
              as int? ??
          state.inventorySize,
      skillDeckCount: (body['user'] as Map<String, dynamic>?)?['skillDeckCount']
              as int? ??
          state.skillDeckCount,
    );
  }

  /// 잔액·HP 등 user 필드만 부분 갱신 — 서버 액션이 새 coin/gem/point 를 반환할 때.
  void applyWalletDelta({int? coin, int? point, int? gem, int? hp, int? level}) {
    final u = state.user;
    if (u == null) return;
    state = state.copyWith(
      user: AuthUser(
        userId: u.userId,
        userNick: u.userNick,
        userCharacter: u.userCharacter,
        level: level ?? u.level,
        score: u.score,
        coin: coin ?? u.coin,
        point: point ?? u.point,
        gem: gem ?? u.gem,
        hp: hp ?? u.hp,
        authType: u.authType,
      ),
    );
  }

  /// 인벤토리 row upsert/delete — buyItem/spendMyItem 응답 반영.
  void applyInventoryDelta({
    required int itemNo,
    required int newQuantity,
    String? itemType,
    int? upgradeLevel,
  }) {
    final next = <InventoryItem>[];
    var found = false;
    for (final it in state.items) {
      if (it.itemNo == itemNo) {
        found = true;
        if (newQuantity > 0) {
          next.add(InventoryItem(
            itemNo: it.itemNo,
            itemType: itemType ?? it.itemType,
            quantity: newQuantity,
            upgradeLevel: upgradeLevel ?? it.upgradeLevel,
          ),);
        }
        // newQuantity == 0 → drop
      } else {
        next.add(it);
      }
    }
    if (!found && newQuantity > 0) {
      next.add(InventoryItem(
        itemNo: itemNo,
        itemType: itemType ?? 'ETC',
        quantity: newQuantity,
        upgradeLevel: upgradeLevel ?? 0,
      ),);
    }
    state = state.copyWith(items: next);
  }

  /// learnSkill 응답 — 새 스킬 ID 추가.
  void applySkillLearned(int skillId) {
    state = state.copyWith(skills: <int>{...state.skills, skillId});
  }

  /// expandInventory / expandSkillDeck 응답.
  void applySizeDelta({int? inventorySize, int? skillDeckCount}) {
    state = state.copyWith(
      inventorySize: inventorySize ?? state.inventorySize,
      skillDeckCount: skillDeckCount ?? state.skillDeckCount,
    );
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
