/// 원본 안드 APK 의 시각 디자인을 모사한 공용 위젯들.
///
/// 가능한 한 원본 PNG 를 직접 사용 (`assets/legacy/`).
/// 입력박스/팝업 등 9-patch 였던 것은 `BoxDecoration` 으로 재현.
import 'package:flutter/material.dart';

import 'legacy_theme.dart';

/// 메인 배경 — `main_bg.png` 를 BoxFit.cover 로 깔고
/// 그 위에 자식 위젯을 배치.
class LegacyBackground extends StatelessWidget {
  const LegacyBackground({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Image.asset(
          'assets/legacy/main_bg.png',
          fit: BoxFit.cover,
        ),
        // 컨텐츠 가독성용 옅은 어둠 (모바일 작은 화면에서 글자 묻히는 것 방지)
        Container(color: Colors.black.withValues(alpha: 0.04)),
        SafeArea(child: child),
      ],
    );
  }
}

/// 이미지를 그대로 버튼처럼 누르는 위젯. (login_btn_login 처럼 글자가 이미지에 박혀있는 케이스)
class LegacyImageButton extends StatelessWidget {
  const LegacyImageButton({
    super.key,
    required this.asset,
    required this.onPressed,
    this.width,
    this.height,
  });

  final String asset;
  final VoidCallback? onPressed;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      behavior: HitTestBehavior.opaque,
      child: Opacity(
        opacity: onPressed == null ? 0.5 : 1.0,
        child: Image.asset(
          asset,
          width: width,
          height: height,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

/// 글자가 이미지 안에 박혀있지 않고, 코드에서 텍스트를 그릴 때 쓰는 그라데이션 버튼.
/// 메인 화면 6개 버튼은 모두 `main_btn_*.png` 로 글자가 박혀있어서 [LegacyImageButton] 사용.
/// 이건 다이얼로그/추가 화면 등에서 동적 라벨 필요할 때.
class LegacyGradientButton extends StatelessWidget {
  const LegacyGradientButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.color = LegacyButtonColor.orange,
    this.height = 52,
  });

  final String label;
  final VoidCallback? onPressed;
  final LegacyButtonColor color;
  final double height;

  @override
  Widget build(BuildContext context) {
    final (Color top, Color bot) = switch (color) {
      LegacyButtonColor.orange => (LegacyColors.orangeTop, LegacyColors.orangeBottom),
      LegacyButtonColor.yellow => (LegacyColors.yellowTop, LegacyColors.yellowBottom),
    };
    return Opacity(
      opacity: onPressed == null ? 0.5 : 1.0,
      child: GestureDetector(
        onTap: onPressed,
        behavior: HitTestBehavior.opaque,
        child: Container(
          height: height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[top, bot],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: LegacyColors.border, width: 1.5),
            boxShadow: const <BoxShadow>[
              BoxShadow(
                color: Color(0x33000000),
                offset: Offset(0, 2),
                blurRadius: 4,
              ),
            ],
          ),
          alignment: Alignment.center,
          child: Text(label, style: LegacyTextStyles.button),
        ),
      ),
    );
  }
}

enum LegacyButtonColor { orange, yellow }

/// 인풋 박스 — `inputbox_0.9.png` 모사 (라운드 + 베이지 톤 테두리)
class LegacyInputDecoration extends InputDecoration {
  const LegacyInputDecoration({
    super.hintText,
    super.hintStyle,
    super.suffixIcon,
  }) : super(
          filled: true,
          fillColor: LegacyColors.inputFill,
          contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(color: LegacyColors.inputBorder, width: 1.5),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(color: LegacyColors.inputBorder, width: 1.5),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(color: LegacyColors.orangeBottom, width: 2.0),
          ),
        );
}

/// 다이얼로그 컨테이너 — `popup_0.9.png` 모사 (베이지 + 라운드)
class LegacyPopup extends StatelessWidget {
  const LegacyPopup({super.key, required this.child, this.padding});

  final Widget child;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: LegacyColors.popupBg,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: LegacyColors.border, width: 1.5),
        boxShadow: const <BoxShadow>[
          BoxShadow(color: Color(0x55000000), offset: Offset(0, 3), blurRadius: 8),
        ],
      ),
      child: child,
    );
  }
}
