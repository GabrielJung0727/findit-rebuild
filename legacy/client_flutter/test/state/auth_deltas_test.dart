import 'package:findit/api/member_api.dart';
import 'package:findit/state/auth.dart';
import 'package:flutter_test/flutter_test.dart';

import '../api/_helper.dart';

AuthController _makeAuth() {
  final t = TestApi.create();
  final c = AuthController(MemberApi(t.client));
  // 임의 user 주입
  c.state = AuthState(
    user: AuthUser.fromJson(<String, dynamic>{
      'userId': 'u@test.com',
      'userNick': 'me',
      'level': 5,
      'coin': 1000,
      'point': 10,
      'gem': 5,
      'hp': 200,
    }),
  );
  return c;
}

void main() {
  test('applyWalletDelta updates only specified fields', () {
    final c = _makeAuth();
    c.applyWalletDelta(coin: 500, point: 8);
    expect(c.state.user!.coin, 500);
    expect(c.state.user!.point, 8);
    expect(c.state.user!.gem, 5); // unchanged
    expect(c.state.user!.level, 5);
  });

  test('applyInventoryDelta inserts new row when itemNo unseen', () {
    final c = _makeAuth();
    expect(c.state.items, isEmpty);
    c.applyInventoryDelta(itemNo: 38, newQuantity: 1, itemType: 'PEN');
    expect(c.state.items, hasLength(1));
    expect(c.state.items.first.itemNo, 38);
    expect(c.state.items.first.quantity, 1);
  });

  test('applyInventoryDelta updates quantity in place', () {
    final c = _makeAuth();
    c.applyInventoryDelta(itemNo: 38, newQuantity: 1, itemType: 'PEN');
    c.applyInventoryDelta(itemNo: 38, newQuantity: 5);
    expect(c.state.items.first.quantity, 5);
  });

  test('applyInventoryDelta drops row when quantity=0', () {
    final c = _makeAuth();
    c.applyInventoryDelta(itemNo: 38, newQuantity: 1, itemType: 'PEN');
    c.applyInventoryDelta(itemNo: 38, newQuantity: 0);
    expect(c.state.items, isEmpty);
  });

  test('applyInventoryDelta preserves upgradeLevel for other rows', () {
    final c = _makeAuth();
    c.applyInventoryDelta(itemNo: 38, newQuantity: 1, itemType: 'PEN');
    c.applyInventoryDelta(itemNo: 41, newQuantity: 1, itemType: 'RING', upgradeLevel: 3);
    expect(c.state.items.firstWhere((i) => i.itemNo == 41).upgradeLevel, 3);
  });

  test('applySkillLearned + applySizeDelta', () {
    final c = _makeAuth();
    c.applySkillLearned(14);
    c.applySkillLearned(20);
    expect(c.state.skills, <int>{14, 20});
    c.applySizeDelta(inventorySize: 6, skillDeckCount: 2);
    expect(c.state.inventorySize, 6);
    expect(c.state.skillDeckCount, 2);
  });
}
