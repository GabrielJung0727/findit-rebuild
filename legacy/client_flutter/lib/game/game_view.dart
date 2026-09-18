import 'dart:async';
import 'dart:math';
import 'dart:ui' as ui;

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'game_painter.dart';
import 'game_state.dart';

/// 게임 화면 본체 — 원본 이미지를 painter 로 그리고, 터치를 픽셀 좌표로 변환해
/// [onTap] 으로 전달.
///
/// 이미지 로드:
/// - `image.urlDownload` 가 http(s) URL → cached_network_image 의 ImageProvider 활용
/// - 실패 / null → placeholder
///
/// 터치 좌표 변환: painter 의 letterbox fit 과 동일한 scale 을 GestureDetector 측에서
/// 한 번 더 계산. (painter 가 fit 결과를 publish 하면 더 깔끔하지만 단순화 위해 중복.)
class GameView extends StatefulWidget {
  const GameView({
    super.key,
    required this.state,
    required this.onTap,
  });

  final GameState state;

  /// 터치 콜백. 인자는 **원본 이미지 픽셀계** 좌표 (x, y).
  final ValueChanged<Offset> onTap;

  @override
  State<GameView> createState() => _GameViewState();
}

class _GameViewState extends State<GameView>
    with SingleTickerProviderStateMixin {
  ui.Image? _image;
  StreamSubscription<dynamic>? _imageSub;
  late final AnimationController _flashCtrl;

  @override
  void initState() {
    super.initState();
    _flashCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 320),
    );
    _loadImage(widget.state.image.urlDownload);
  }

  @override
  void didUpdateWidget(covariant GameView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.state.image.urlDownload != widget.state.image.urlDownload) {
      _loadImage(widget.state.image.urlDownload);
    }
    if (oldWidget.state.lastWrongTouch != widget.state.lastWrongTouch &&
        widget.state.lastWrongTouch != null) {
      _flashCtrl.forward(from: 1).then((_) => _flashCtrl.reverse());
      HapticFeedback.lightImpact();
    }
    if (oldWidget.state.lastCorrectIndex != widget.state.lastCorrectIndex &&
        widget.state.lastCorrectIndex != null) {
      HapticFeedback.mediumImpact();
    }
  }

  Future<void> _loadImage(String? url) async {
    if (url == null || url.isEmpty || !url.startsWith('http')) {
      setState(() => _image = null);
      return;
    }
    final provider = CachedNetworkImageProvider(url);
    final stream = provider.resolve(const ImageConfiguration());
    final completer = Completer<ui.Image>();
    final listener = ImageStreamListener(
      (info, _) => completer.complete(info.image),
      onError: (e, _) {
        if (!completer.isCompleted) completer.completeError(e);
      },
    );
    stream.addListener(listener);
    try {
      final img = await completer.future
          .timeout(const Duration(seconds: 8), onTimeout: () => throw 'timeout');
      if (mounted) setState(() => _image = img);
    } catch (_) {
      if (mounted) setState(() => _image = null);
    } finally {
      stream.removeListener(listener);
    }
  }

  @override
  void dispose() {
    _imageSub?.cancel();
    _flashCtrl.dispose();
    super.dispose();
  }

  void _handleTap(TapUpDetails d, Size size) {
    final px = _toImagePixel(d.localPosition, size);
    if (px == null) return;
    widget.onTap(px);
  }

  Offset? _toImagePixel(Offset local, Size canvasSize) {
    final imgW = widget.state.image.xSize.toDouble();
    final imgH = widget.state.image.ySize.toDouble();
    if (imgW <= 0 || imgH <= 0) return null;
    final scale = min(canvasSize.width / imgW, canvasSize.height / imgH);
    final w = imgW * scale;
    final h = imgH * scale;
    final ox = (canvasSize.width - w) / 2;
    final oy = (canvasSize.height - h) / 2;
    final px = (local.dx - ox) / scale;
    final py = (local.dy - oy) / scale;
    if (px < 0 || py < 0 || px > imgW || py > imgH) return null;
    return Offset(px, py);
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, constraints) {
        final size = Size(constraints.maxWidth, constraints.maxHeight);
        return GestureDetector(
          onTapUp: (d) => _handleTap(d, size),
          child: AnimatedBuilder(
            animation: _flashCtrl,
            builder: (_, __) => CustomPaint(
              painter: GamePainter(
                image: _image,
                state: widget.state,
                flashIntensity: _flashCtrl.value,
              ),
              size: size,
            ),
          ),
        );
      },
    );
  }
}
