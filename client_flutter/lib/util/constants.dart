/// 게임 룰 상수 — Android `GameView.java` / `Objects.java` / 서버 `balance.js` 와 일치.
///
/// 진실 자료(Source of Truth)는 서버 `balance.js`. 클라는 fallback 값.
class GameConstants {
  GameConstants._();

  static const int gameTimeSeconds = 40;
  static const int findRectTotalNum = 7;
  static const int skillWindowTotalNum = 8;

  /// AI 시간 공식 — `7 - level × 0.03` 초, ±15% 랜덤.
  static double aiFindTimeSeconds(int level) {
    return 7.0 - level * 0.03;
  }

  /// 콤보 점수 보너스. 인덱스 = 콤보-1 (0=콤보1).
  static const List<int> comboScoreBonus = <int>[100, 200, 400, 700];

  /// 콤보 시간 보너스 (초). 인덱스 = 콤보-1.
  static const List<int> comboTimeBonus = <int>[1, 2, 4, 7];

  static int comboScore(int combo) {
    if (combo <= 0) return 0;
    return comboScoreBonus[combo - 1 < 4 ? combo - 1 : 3];
  }

  static int comboTime(int combo) {
    if (combo <= 0) return 0;
    return comboTimeBonus[combo - 1 < 4 ? combo - 1 : 3];
  }

  /// 점수 공식. 승자 = +100, 패자 = +0 (콤보 별도 가산).
  static int calculateScore({
    required int findNum,
    required bool isWinner,
    required int comboBonus,
  }) {
    final base = findNum * 50 + (isWinner ? 100 : 0);
    return base + comboBonus;
  }
}

/// 인벤토리 / 스킬덱 / 업그레이드 — 04-24.md §1.6 기획 반영.
class EconomyConstants {
  EconomyConstants._();

  static const int inventorySizeBase = 3;
  static const int inventorySizeMax = 30;
  static const int inventoryStep = 3;

  static const int skillDeckBase = 1;
  static const int skillDeckMax = 4;
  static const List<int> skillDeckCost = <int>[100, 300, 900];

  static const int upgradeMaxLevel = 9;
}

/// 소켓 메시지 코드 — 안드로이드 원본 GameActivity 의 `MSG_*` 와 동일.
class SocketCode {
  SocketCode._();

  static const int userList = 100;
  static const int createRoom = 101;
  static const int leaveRoom = 102;
  static const int enterRoom = 103;
  static const int ready = 104;
  static const int gameStart = 105;
  static const int touch = 106;
  static const int invite = 107;
}
