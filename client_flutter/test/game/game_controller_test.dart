import 'dart:math';

import 'package:findit/api/member_api.dart';
import 'package:findit/api/ws_client.dart';
import 'package:findit/game/game_controller.dart';
import 'package:findit/game/game_state.dart';
import 'package:findit/game/image_set.dart';
import 'package:findit/state/auth.dart';
import 'package:findit/state/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import '../api/_helper.dart';

ImageSet _testImage() => const ImageSet(
      imgId: 1,
      img: 'test.png',
      xSize: 640,
      ySize: 720,
      cuts: <ImageCut>[
        ImageCut(x: 0, y: 0, w: 100, h: 100),
        ImageCut(x: 100, y: 0, w: 100, h: 100),
        ImageCut(x: 200, y: 0, w: 100, h: 100),
        ImageCut(x: 300, y: 0, w: 100, h: 100),
        ImageCut(x: 400, y: 0, w: 100, h: 100),
        ImageCut(x: 500, y: 0, w: 100, h: 100),
        ImageCut(x: 0, y: 100, w: 100, h: 100),
      ],
    );

class _FakeWsClient extends WsClient {
  _FakeWsClient() : super(url: Uri.parse('ws://localhost:0'));
  @override
  void send(String code, [List<String> args = const <String>[]]) {/* swallow */}
  @override
  Future<void> connect() async {/* no-op */}
}

ProviderContainer _makeContainer({required GameStartArgs args}) {
  final ws = _FakeWsClient();
  return ProviderContainer(
    overrides: <Override>[
      wsClientProvider.overrideWithValue(ws),
      authControllerProvider.overrideWith((_) {
        return _StubAuth()..setUser('u@test.com', hp: 110);
      }),
      gameArgsProvider.overrideWith((_) => args),
    ],
  );
}

class _StubAuth extends AuthController {
  _StubAuth() : super(MemberApi(TestApi.create().client));
  void setUser(String userId, {required int hp}) {
    state = AuthState(
      user: AuthUser.fromJson(<String, dynamic>{
        'userId': userId,
        'userNick': 'me',
        'level': 5,
        'hp': hp,
        'authType': 'email',
      }),
    );
  }
}

void main() {
  test('buildInitialGameState picks AI time within [1,7]s for Lv 1', () {
    final args = GameStartArgs(
      image: _testImage(),
      opponentIsAi: true,
      opponentLevel: 1,
      selfHp: 110,
      opponentHp: 110,
    );
    final s = buildInitialGameState(args, Random(1));
    expect(s.aiNextFind, inInclusiveRange(1.0, 7.0));
    expect(s.timeRemaining, 40.0);
    expect(s.self.found, hasLength(7));
    expect(s.opponent.found, hasLength(7));
  });

  group('GameController.onTap', () {
    test('correct hit increments combo + adds time bonus', () {
      // 화면 하나가 (0,0)~(100,100) 범위. 클릭 (50,50) 은 idx 0 정답.
      final container = _makeContainer(
        args: GameStartArgs(
          image: _testImage(),
          opponentIsAi: true,
          opponentLevel: 5,
          selfHp: 110,
          opponentHp: 110,
        ),
      );
      addTearDown(container.dispose);

      final ctrl = container.read(gameControllerProvider.notifier);
      ctrl.start();
      // pause 처리해서 timer tick 영향 배제 — running 만 true 로 두고 onTap 직접
      // 호출: tap 처리는 ticker 와 무관.
      final beforeTime = container.read(gameControllerProvider).timeRemaining;
      ctrl.onTap(const Offset(50, 50));
      final st = container.read(gameControllerProvider);
      expect(st.self.combo, 1);
      expect(st.self.found[0], true);
      // 콤보 1 → +1초
      expect(st.timeRemaining, closeTo(beforeTime + 1.0, 0.5));
    });

    test('wrong hit zeros combo + records lastWrongTouch', () {
      final container = _makeContainer(
        args: GameStartArgs(
          image: _testImage(),
          opponentIsAi: true,
          opponentLevel: 5,
          selfHp: 110,
          opponentHp: 110,
        ),
      );
      addTearDown(container.dispose);
      final ctrl = container.read(gameControllerProvider.notifier);
      ctrl.start();
      ctrl.onTap(const Offset(50, 50)); // 정답
      ctrl.onTap(const Offset(50, 50)); // 같은 곳 — 이미 found 라 hit=null → 오답 처리
      final st = container.read(gameControllerProvider);
      expect(st.self.combo, 0);
      expect(st.lastWrongTouch, isNotNull);
    });

    test('clearing all 7 → result.won + reason=selfCleared', () {
      final container = _makeContainer(
        args: GameStartArgs(
          image: _testImage(),
          opponentIsAi: true,
          opponentLevel: 5,
          selfHp: 110,
          opponentHp: 110,
        ),
      );
      addTearDown(container.dispose);
      final ctrl = container.read(gameControllerProvider.notifier);
      ctrl.start();
      // 7 cuts 모두 정답 클릭
      ctrl.onTap(const Offset(50, 50));
      ctrl.onTap(const Offset(150, 50));
      ctrl.onTap(const Offset(250, 50));
      ctrl.onTap(const Offset(350, 50));
      ctrl.onTap(const Offset(450, 50));
      ctrl.onTap(const Offset(550, 50));
      ctrl.onTap(const Offset(50, 150));
      final st = container.read(gameControllerProvider);
      expect(st.ended, true);
      expect(st.result?.won, true);
      expect(st.result?.reason, GameEndReason.selfCleared);
    });

    test('abort() while running ends as opponentLeft, won=false', () {
      final container = _makeContainer(
        args: GameStartArgs(
          image: _testImage(),
          opponentIsAi: false,
          opponentLevel: 5,
          selfHp: 110,
          opponentHp: 110,
        ),
      );
      addTearDown(container.dispose);
      final ctrl = container.read(gameControllerProvider.notifier);
      ctrl.start();
      ctrl.abort();
      expect(container.read(gameControllerProvider).result?.reason,
          GameEndReason.opponentLeft,);
    });
  });
}
