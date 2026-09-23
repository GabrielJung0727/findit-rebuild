import 'dart:ui' as ui;

import 'package:flame/events.dart';
import 'package:flame/game.dart';
// services.dart 가 dart:ui 의 Offset·Size·Rect 를 함께 내보낸다.
// material.dart 를 더 넣으면 Viewport 이름이 겹치고 unnecessary_import 가 뜬다.
import 'package:flutter/services.dart';

import '../../domain/match_state.dart';
import '../../domain/viewport.dart';

/// 배경과 패치는 **네트워크에서** 온다. Flame 의 Images 는 에셋 번들용이고,
/// 테스트가 실제 HTTP 에 붙으면 느리고 흔들린다. 포트로 둔다.
typedef ImageLoader = Future<ui.Image> Function(String url);

/// 배틀 씬. **소켓도 앱 상태도 모른다** (스펙 §7.1).
/// apply(MatchState) 로 받고 탭을 콜백으로 올린다.
class BattleScene extends FlameGame with TapCallbacks {
  final ImageLoader loadImage;
  final void Function(int x, int y) onTapImage;

  // 필드 이름이 load 면 FlameGame.load 와 충돌한다.
  BattleScene({required this.loadImage, required this.onTapImage});

  MatchState _state = MatchState.initial();
  String? _loadedMatchId;
  ui.Image? _base;
  final Map<int, ui.Image> _patches = {};
  final Set<String> _inFlight = {};

  ImageViewport? get _viewport {
    final image = _state.imageSize;
    if (image == null) return null;
    // Vector2 의 확장 메서드(toSize/toOffset)는 flame/extensions.dart 에
    // 있다. 명시적으로 만들어 import 하나를 줄이고 의존을 줄인다.
    return fitContain(image: image, box: Size(size.x, size.y));
  }

  void apply(MatchState next) {
    final previous = _state;
    _state = next;

    // 매치가 바뀌면 이전 판의 그림을 전부 버린다. 남으면 새 그림 위에
    // 남의 rect 가 뜬다 (난입에서 실제로 일어난다).
    if (next.matchId != _loadedMatchId) {
      _loadedMatchId = next.matchId;
      _base = null;
      _patches.clear();
      _inFlight.clear();
    }

    final url = next.imageUrl;
    if (url != null && _base == null && _inFlight.add(url)) {
      loadImage(url).then((image) { _base = image; });
    }

    // REVEAL 이 온 것만 받는다. 클라이언트는 히트를 판정하지 않는다.
    for (final found in next.found) {
      if (_patches.containsKey(found.index)) continue;
      if (!_inFlight.add(found.patchUrl)) continue;
      loadImage(found.patchUrl).then((image) { _patches[found.index] = image; });
    }

    _haptics(previous, next);
  }

  /// 판정이 서버에서 오므로 프레임을 받은 시점에 울린다 (스펙 §7.3).
  void _haptics(MatchState before, MatchState after) {
    if (after.found.length > before.found.length &&
        after.found.last.mine) {
      HapticFeedback.mediumImpact();
    }
    if (after.lockedUntilMs > before.lockedUntilMs) {
      HapticFeedback.heavyImpact();
    }
    if (after.blindedUntilMs > before.blindedUntilMs) {
      HapticFeedback.vibrate();
    }
  }

  @override
  void onTapDown(TapDownEvent event) {
    final viewport = _viewport;
    if (viewport == null || _state.phase != MatchPhase.playing) return;

    // **이미지 좌표로 보낸다.** 서버는 퍼즐 원본 좌표계만 안다.
    // 레터박스 바깥이면 null 이고, 그때는 보내지 않는다 — 서버에 쓰레기
    // 탭을 보내 스스로 2초 잠기게 만들 이유가 없다.
    final inImage = viewport.toImage(
        Offset(event.localPosition.x, event.localPosition.y));
    if (inImage == null) return;

    onTapImage(inImage.dx.round(), inImage.dy.round());
  }

  @override
  void render(ui.Canvas canvas) {
    super.render(canvas);
    final viewport = _viewport;
    final base = _base;
    if (viewport == null || base == null) return;

    final dst = viewport.toScreen(
        ui.Rect.fromLTWH(0, 0, _state.imageSize!.width, _state.imageSize!.height));
    canvas.drawImageRect(
      base,
      ui.Rect.fromLTWH(0, 0, base.width.toDouble(), base.height.toDouble()),
      dst,
      ui.Paint(),
    );

    for (final found in _state.found) {
      final patch = _patches[found.index];
      if (patch == null) continue;
      canvas.drawImageRect(
        patch,
        ui.Rect.fromLTWH(0, 0, patch.width.toDouble(), patch.height.toDouble()),
        viewport.toScreen(found.rect),
        ui.Paint(),
      );
    }
  }
}
