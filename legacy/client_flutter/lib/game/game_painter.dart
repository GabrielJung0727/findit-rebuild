import 'dart:math';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

import 'game_state.dart';

/// 원본 이미지를 캔버스에 그리고, 발견된 [imageCut] 영역을 시각화.
///
/// 좌표 매핑:
/// - 입력 이미지 픽셀계 (`xSize × ySize`) → 화면 좌표계로 비례 축소(letterbox).
/// - 외부 (`onTap`) 화면 좌표 → 픽셀 좌표 변환은 [GameView] 위젯이 담당.
class GamePainter extends CustomPainter {
  GamePainter({
    required this.image,
    required this.state,
    required this.flashIntensity,
  }) : super(repaint: const _AlwaysRepaint());

  /// 디코딩된 원본 이미지. null 이면 placeholder.
  final ui.Image? image;
  final GameState state;

  /// 0..1 — 오답 플래시 알파. 외부 AnimationController 가 갱신.
  final double flashIntensity;

  @override
  void paint(Canvas canvas, Size size) {
    final fit = _computeFit(size);

    // 배경
    final bg = Paint()..color = const Color(0xFFE9E0C2);
    canvas.drawRect(Offset.zero & size, bg);

    if (image != null) {
      paintImage(
        canvas: canvas,
        rect: fit.dst,
        image: image!,
        fit: BoxFit.contain,
        filterQuality: FilterQuality.medium,
      );
    } else {
      // placeholder
      final tp = TextPainter(
        text: const TextSpan(
          text: 'loading…',
          style: TextStyle(color: Colors.black54),
        ),
        textDirection: TextDirection.ltr,
      )..layout();
      tp.paint(
        canvas,
        Offset(
          (size.width - tp.width) / 2,
          (size.height - tp.height) / 2,
        ),
      );
    }

    final scale = fit.scale;
    final ox = fit.dst.left;
    final oy = fit.dst.top;

    // 발견된 영역 마킹 (자기 = 초록, 상대 = 주황)
    final foundPaint = Paint()
      ..color = Colors.green.withValues(alpha: 0.35)
      ..style = PaintingStyle.fill;
    final foundBorder = Paint()
      ..color = Colors.green.shade700
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3;
    for (var i = 0; i < state.image.cuts.length; i++) {
      if (!state.self.found[i]) continue;
      final r = _scaleRect(state.image.cuts[i].toRect(), scale, ox, oy);
      canvas.drawRect(r, foundPaint);
      canvas.drawRect(r, foundBorder);
    }

    final oppPaint = Paint()
      ..color = Colors.orange.withValues(alpha: 0.30)
      ..style = PaintingStyle.fill;
    final oppBorder = Paint()
      ..color = Colors.orange.shade700
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    for (var i = 0; i < state.image.cuts.length; i++) {
      if (state.self.found[i]) continue; // 자기 마크가 우선
      if (!state.opponent.found[i]) continue;
      final r = _scaleRect(state.image.cuts[i].toRect(), scale, ox, oy);
      canvas.drawRect(r, oppPaint);
      canvas.drawRect(r, oppBorder);
    }

    // 최근 정답 — 펄스 강조 (마지막 idx 만)
    final pulseIdx = state.lastCorrectIndex;
    if (pulseIdx != null && state.self.found[pulseIdx]) {
      final r = _scaleRect(state.image.cuts[pulseIdx].toRect(), scale, ox, oy);
      final glow = Paint()
        ..color = Colors.greenAccent.withValues(alpha: 0.4)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 6;
      canvas.drawRect(r.inflate(4), glow);
    }

    // 오답 — 마지막 터치점에 빨간 X (flash 강도)
    final wrong = state.lastWrongTouch;
    if (wrong != null && flashIntensity > 0) {
      final px = ox + wrong.dx * scale;
      final py = oy + wrong.dy * scale;
      final radius = 16.0;
      final p = Paint()
        ..color = Colors.red.withValues(alpha: 0.8 * flashIntensity)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 4;
      canvas.drawLine(
        Offset(px - radius, py - radius),
        Offset(px + radius, py + radius),
        p,
      );
      canvas.drawLine(
        Offset(px - radius, py + radius),
        Offset(px + radius, py - radius),
        p,
      );
    }
  }

  @override
  bool shouldRepaint(covariant GamePainter oldDelegate) =>
      oldDelegate.image != image ||
      oldDelegate.state != state ||
      oldDelegate.flashIntensity != flashIntensity;

  /// 원본 이미지를 letterbox 로 캔버스에 fit. 실제 그리기 영역 + scale 반환.
  _FitResult _computeFit(Size size) {
    final imgW = state.image.xSize.toDouble();
    final imgH = state.image.ySize.toDouble();
    if (imgW <= 0 || imgH <= 0) {
      return _FitResult(dst: Offset.zero & size, scale: 1);
    }
    final scale = min(size.width / imgW, size.height / imgH);
    final w = imgW * scale;
    final h = imgH * scale;
    final dx = (size.width - w) / 2;
    final dy = (size.height - h) / 2;
    return _FitResult(dst: Rect.fromLTWH(dx, dy, w, h), scale: scale);
  }

  Rect _scaleRect(Rect imgRect, double scale, double ox, double oy) {
    return Rect.fromLTWH(
      ox + imgRect.left * scale,
      oy + imgRect.top * scale,
      imgRect.width * scale,
      imgRect.height * scale,
    );
  }
}

class _FitResult {
  _FitResult({required this.dst, required this.scale});
  final Rect dst;
  final double scale;
}

class _AlwaysRepaint extends Listenable {
  const _AlwaysRepaint();
  @override
  void addListener(VoidCallback _) {}
  @override
  void removeListener(VoidCallback _) {}
}
