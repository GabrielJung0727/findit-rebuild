import 'package:flutter/widgets.dart';

/// 레거시 비트맵 한 장. `assets/legacy/<name>.png` 를 그린다.
///
/// 이 위젯은 ui/legacy 에만 있다. Material 3 화면(로그인·로비)에서 쓰지 않는다 —
/// 두 디자인 언어가 한 파일에서 섞이면 결국 둘 다 아닌 것이 된다 (스펙 §7.2).
class LegacyBitmap extends StatelessWidget {
  final String name;
  final double? width;
  final double? height;

  const LegacyBitmap(this.name, {super.key, this.width, this.height});

  @override
  Widget build(BuildContext context) => Image.asset(
        'assets/legacy/$name.png',
        width: width,
        height: height,
        // 레거시 에셋은 hdpi 시대 해상도다 (스펙 §5.2). 확대할 때 뭉개지는
        // 것보다 각진 편이 원작에 가깝다.
        filterQuality: FilterQuality.none,
      );
}
