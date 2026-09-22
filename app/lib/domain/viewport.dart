import 'dart:ui';

/// 이미지 좌표계 ↔ 화면 좌표계.
///
/// 서버는 퍼즐 원본 좌표계(예: 640×720)만 안다. 화면 좌표를 그대로 보내면
/// 전부 빗나가고, 빗나감은 2초 잠금이라 플레이 자체가 불가능해진다.
class ImageViewport {
  final double scale;
  final Offset offset;
  final Size image;

  const ImageViewport({required this.scale, required this.offset, required this.image});

  /// 레터박스 바깥이면 null. 서버에 쓰레기 탭을 보내 스스로 잠기게 만들
  /// 이유가 없다.
  Offset? toImage(Offset onScreen) {
    final x = (onScreen.dx - offset.dx) / scale;
    final y = (onScreen.dy - offset.dy) / scale;
    if (x < 0 || y < 0 || x > image.width || y > image.height) return null;
    return Offset(x, y);
  }

  Rect toScreen(Rect inImage) => Rect.fromLTWH(
        inImage.left * scale + offset.dx,
        inImage.top * scale + offset.dy,
        inImage.width * scale,
        inImage.height * scale,
      );
}

/// BoxFit.contain 과 같은 배치를 계산한다.
ImageViewport fitContain({required Size image, required Size box}) {
  final scale = (box.width / image.width) < (box.height / image.height)
      ? box.width / image.width
      : box.height / image.height;

  // **오프셋을 빠뜨리지 말 것.** 스케일만 되돌리면 레터박스가 있는 방향에서
  // 좌표가 통째로 밀린다.
  final offset = Offset(
    (box.width - image.width * scale) / 2,
    (box.height - image.height * scale) / 2,
  );

  return ImageViewport(scale: scale, offset: offset, image: image);
}
