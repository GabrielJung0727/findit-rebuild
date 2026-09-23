import 'dart:ui' as ui;
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:findit/domain/match_state.dart';
import 'package:findit/features/battle/battle_scene.dart';

Future<ui.Image> _blank() {
  final recorder = ui.PictureRecorder();
  Canvas(recorder).drawRect(const Rect.fromLTWH(0, 0, 1, 1), Paint());
  return recorder.endRecording().toImage(1, 1);
}

MatchState _playing({List<FoundRect> found = const []}) => MatchState(
      phase: MatchPhase.playing,
      matchId: 'm1',
      imageUrl: '/c/m1/base',
      imageSize: const Size(640, 720),
      targetCount: 5,
      durationMs: 40000,
      found: found,
    );

FoundRect _rect(int i, {bool mine = true}) => FoundRect(
      index: i,
      rect: Rect.fromLTWH(10.0 * i, 20, 130, 130),
      patchUrl: '/c/m1/patch/$i',
      mine: mine,
    );

void main() {
  late List<String> loaded;
  late List<List<int>> taps;

  BattleScene build() {
    loaded = [];
    taps = [];
    return BattleScene(
      loadImage: (url) async { loaded.add(url); return _blank(); },
      onTapImage: (x, y) => taps.add([x, y]),
    );
  }

  testWidgets('이미지가 도착하기 전에 apply 가 여러 번 들어와도 한 번만 받는다', (tester) async {
    final scene = build();
    await tester.pumpWidget(MaterialApp(home: GameWidget(game: scene)));
    await tester.pump();

    // apply 사이에 pump 를 끼우지 말 것. 끼우면 이미지가 도착해 _base 가
    // 차고, 그 다음 apply 는 `_base == null` 검사만으로 막힌다 — _inFlight 를
    // 지워도 통과한다. _inFlight 가 지키는 구간은 이미지가 오기 전에
    // apply 가 연달아 들어오는 창이다.
    //
    // 실제로도 그 창이 열린다. 서버 프레임이 올 때마다 setState → rebuild →
    // didUpdateWidget → apply 가 도는데, 네트워크 이미지는 그보다 훨씬 늦게
    // 도착한다. 프레임마다 다시 받으면 네트워크가 터지고 화면이 깜빡인다.
    scene.apply(_playing());
    scene.apply(_playing());
    scene.apply(_playing());
    await tester.pump();

    // 도착한 뒤에 또 들어와도 다시 받지 않는다 (_base 검사가 그 몫이다).
    scene.apply(_playing());
    await tester.pump();

    expect(loaded.where((u) => u == '/c/m1/base'), hasLength(1));
  });

  testWidgets('REVEAL 이 온 rect 만 패치를 받는다', (tester) async {
    final scene = build();
    await tester.pumpWidget(MaterialApp(home: GameWidget(game: scene)));
    await tester.pump();

    scene.apply(_playing());
    await tester.pump();
    expect(loaded.where((u) => u.contains('patch')), isEmpty);

    scene.apply(_playing(found: [_rect(1)]));
    await tester.pump();
    expect(loaded.where((u) => u.contains('patch')), ['/c/m1/patch/1']);
  });

  testWidgets('이미 그린 패치를 다시 받지 않는다', (tester) async {
    final scene = build();
    await tester.pumpWidget(MaterialApp(home: GameWidget(game: scene)));
    await tester.pump();

    scene.apply(_playing(found: [_rect(1)]));
    await tester.pump();
    scene.apply(_playing(found: [_rect(1), _rect(2)]));
    await tester.pump();

    expect(loaded.where((u) => u.contains('patch')),
        ['/c/m1/patch/1', '/c/m1/patch/2']);
  });

  // 기본 테스트 표면은 800x600 이다. **SizedBox 로 크기를 주려 하지 말 것** —
  // MaterialApp.home 은 꽉 찬 제약을 주므로 SizedBox 가 무시되고, 씬은
  // 그대로 800x600 이 된다. 기대값만 어긋나 원인을 찾기 어렵다.
  //
  // 640x720 이미지를 800x600 에 contain 하면:
  //   scale  = min(800/640, 600/720) = 600/720 = 0.8333…
  //   offset = ((800 - 640*0.8333)/2, 0) = (133.33, 0)   ← 좌우 레터박스
  // 화면 중앙 (400, 300) → 이미지 (320, 360) = 이미지 중앙.
  testWidgets('탭이 이미지 좌표로 올라간다 — 화면 좌표가 아니다', (tester) async {
    final scene = build();
    await tester.pumpWidget(MaterialApp(home: GameWidget(game: scene)));
    await tester.pump();
    scene.apply(_playing());
    await tester.pump();

    await tester.tapAt(const Offset(400, 300));
    // **그냥 pump() 로는 부족하다.** Flame 의 TapCallbacks 는 내부적으로
    // TapGestureRecognizer 를 쓰고, 그 deadline 타이머가 남으면 테스트가
    // "A Timer is still pending" 으로 실패한다.
    await tester.pump(const Duration(seconds: 1));

    // 화면 좌표를 그대로 보내면 [400, 300] 이 된다.
    // 오프셋을 빼먹으면 [480, 360] 이 된다.
    expect(taps, [[320, 360]]);
  });

  testWidgets('레터박스 바깥 탭은 올라가지 않는다', (tester) async {
    final scene = build();
    await tester.pumpWidget(MaterialApp(home: GameWidget(game: scene)));
    await tester.pump();
    scene.apply(_playing());
    await tester.pump();

    // 좌우에 133px 씩 레터박스가 있다. x=10 은 이미지 밖이다.
    await tester.tapAt(const Offset(10, 300));
    await tester.pump(const Duration(seconds: 1));

    // 서버에 쓰레기 탭을 보내 스스로 2초 잠기게 만들 이유가 없다.
    expect(taps, isEmpty);
  });

  testWidgets('매치가 바뀌면 이전 판의 그림이 남지 않는다 — 난입', (tester) async {
    final scene = build();
    await tester.pumpWidget(MaterialApp(home: GameWidget(game: scene)));
    await tester.pump();

    scene.apply(_playing(found: [_rect(1)]));
    await tester.pump();

    // 난입: 새 matchId 와 새 imageUrl
    scene.apply(const MatchState(
      phase: MatchPhase.playing, matchId: 'm2',
      imageUrl: '/c/m2/base', imageSize: Size(640, 720),
      targetCount: 5, durationMs: 40000,
    ));
    await tester.pump();

    expect(loaded, contains('/c/m2/base'));
    // 새 매치의 패치는 새 URL 로 온다.
    scene.apply(const MatchState(
      phase: MatchPhase.playing, matchId: 'm2',
      imageUrl: '/c/m2/base', imageSize: Size(640, 720),
      targetCount: 5, durationMs: 40000,
      found: [FoundRect(
        index: 1, rect: Rect.fromLTWH(10, 20, 130, 130),
        patchUrl: '/c/m2/patch/1', mine: true)],
    ));
    await tester.pump();

    // 이전 판의 패치를 지우지 않으면 index 1 이 이미 있다고 보고 새 것을
    // 받지 않는다 — 새 그림 위에 남의 rect 가 그대로 뜬다.
    expect(loaded.where((u) => u == '/c/m2/patch/1'), hasLength(1));
    expect(loaded.where((u) => u == '/c/m1/patch/1'), hasLength(1));
  });
}
