import 'package:findit/util/constants.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('GameConstants — combo formulas', () {
    test('comboScore — 1/2/3/4+ = 100/200/400/700', () {
      expect(GameConstants.comboScore(0), 0);
      expect(GameConstants.comboScore(1), 100);
      expect(GameConstants.comboScore(2), 200);
      expect(GameConstants.comboScore(3), 400);
      expect(GameConstants.comboScore(4), 700);
      expect(GameConstants.comboScore(10), 700);
    });

    test('comboTime — 1/2/3/4+ = 1/2/4/7', () {
      expect(GameConstants.comboTime(0), 0);
      expect(GameConstants.comboTime(1), 1);
      expect(GameConstants.comboTime(2), 2);
      expect(GameConstants.comboTime(3), 4);
      expect(GameConstants.comboTime(4), 7);
      expect(GameConstants.comboTime(99), 7);
    });
  });

  group('GameConstants — calculateScore', () {
    test('winner: findNum*50 + 100 + comboBonus', () {
      expect(
        GameConstants.calculateScore(findNum: 7, isWinner: true, comboBonus: 200),
        7 * 50 + 100 + 200,
      );
    });
    test('loser: findNum*50 + comboBonus (no +100)', () {
      expect(
        GameConstants.calculateScore(findNum: 5, isWinner: false, comboBonus: 0),
        5 * 50,
      );
    });
  });

  group('GameConstants — AI find time', () {
    test('Lv 1: ~6.97s, Lv 100: 4.0s (no jitter)', () {
      expect(GameConstants.aiFindTimeSeconds(1), closeTo(6.97, 1e-9));
      expect(GameConstants.aiFindTimeSeconds(100), closeTo(4.0, 1e-9));
    });
  });
}
