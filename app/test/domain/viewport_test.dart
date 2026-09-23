import 'dart:ui';
import 'package:flutter_test/flutter_test.dart';
import 'package:findit/domain/viewport.dart';

void main() {
  group('fitContain — 가로가 남는 경우 (세로 맞춤)', () {
    // 640x720 이미지를 800x720 상자에. scale=1, 좌우에 80 씩 남는다.
    final v = fitContain(image: const Size(640, 720), box: const Size(800, 720));

    test('중앙이 중앙으로', () {
      expect(v.toImage(const Offset(400, 360)), const Offset(320, 360));
    });

    test('이미지 좌상단은 레터박스 오프셋만큼 안쪽이다', () {
      expect(v.toImage(const Offset(80, 0)), const Offset(0, 0));
    });

    test('레터박스 바깥은 null — 서버에 쓰레기 탭을 보내지 않는다', () {
      expect(v.toImage(const Offset(10, 360)), isNull);
      expect(v.toImage(const Offset(790, 360)), isNull);
    });

    test('rect 를 화면 좌표로 되돌린다', () {
      expect(v.toScreen(const Rect.fromLTWH(0, 0, 130, 130)),
          const Rect.fromLTWH(80, 0, 130, 130));
    });
  });

  group('fitContain — 세로가 남는 경우 (가로 맞춤, 축소)', () {
    // 640x720 을 320x720 상자에. scale=0.5, 위아래에 180 씩 남는다.
    final v = fitContain(image: const Size(640, 720), box: const Size(320, 720));

    test('스케일을 되돌린다', () {
      // 화면 (160, 360) = 상자 중앙 → 이미지 중앙 (320, 360)
      expect(v.toImage(const Offset(160, 360)), const Offset(320, 360));
    });

    test('오프셋과 스케일을 둘 다 되돌린다', () {
      // 세로 오프셋 180, scale 0.5 → 화면 (0, 180) 이 이미지 (0, 0)
      expect(v.toImage(const Offset(0, 180)), const Offset(0, 0));
    });

    test('스케일만 되돌리고 오프셋을 빼먹으면 여기서 걸린다', () {
      // 오프셋을 무시하면 (0, 360) → (0, 720) 으로 이미지 밖이 된다.
      expect(v.toImage(const Offset(0, 360)), const Offset(0, 360));
    });

    test('rect 도 스케일과 오프셋을 함께 받는다', () {
      expect(v.toScreen(const Rect.fromLTWH(100, 100, 130, 130)),
          const Rect.fromLTWH(50, 230, 65, 65));
    });
  });

  test('딱 맞으면 오프셋이 없다', () {
    final v = fitContain(image: const Size(640, 720), box: const Size(640, 720));
    expect(v.toImage(const Offset(1, 1)), const Offset(1, 1));
  });
}
