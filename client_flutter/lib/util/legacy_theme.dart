/// 원본 안드로이드 APK (`decoded_apk/res/drawable-hdpi-v4/`) 의 색감과 톤을
/// Flutter 에 매핑한 토큰. 디자이너 신규 에셋 도입 전 임시 정합성 유지용.
import 'package:flutter/material.dart';

class LegacyColors {
  LegacyColors._();

  /// 메인 배경 하늘색 (main_bg.png 의 상단 톤)
  static const Color sky = Color(0xFFB8E0EC);

  /// 메인 배경 잔디색 (main_bg.png 의 언덕)
  static const Color grass = Color(0xFF9AD06D);

  /// 오렌지 버튼 그라데이션 (main_btn / GAME START)
  static const Color orangeTop = Color(0xFFFFA84A);
  static const Color orangeBottom = Color(0xFFF7861A);

  /// 노랑 버튼 (GUEST / JOIN)
  static const Color yellowTop = Color(0xFFFFCD4A);
  static const Color yellowBottom = Color(0xFFF6B514);

  /// 텍스트 — 다크 브라운 (원본 폰트 색)
  static const Color textBrown = Color(0xFF54443B);

  /// 버튼 테두리 (다크 브라운, 1.5dp)
  static const Color border = Color(0xFF6B4F3A);

  /// 인풋 박스 외곽 (inputbox_0.9.png 톤)
  static const Color inputBorder = Color(0xFFA98770);
  static const Color inputFill = Colors.white;

  /// 다이얼로그 베이지 (popup_0.9.png 톤)
  static const Color popupBg = Color(0xFFF8EBD5);
}

class LegacyTextStyles {
  LegacyTextStyles._();

  static const TextStyle title = TextStyle(
    fontWeight: FontWeight.w900,
    color: Colors.white,
    fontSize: 22,
    shadows: <Shadow>[
      Shadow(
        offset: Offset(1, 1),
        blurRadius: 0,
        color: LegacyColors.border,
      ),
    ],
    letterSpacing: 1.0,
  );

  static const TextStyle button = TextStyle(
    fontWeight: FontWeight.w900,
    color: Colors.white,
    fontSize: 18,
    shadows: <Shadow>[
      Shadow(
        offset: Offset(1, 1),
        blurRadius: 0,
        color: LegacyColors.border,
      ),
    ],
    letterSpacing: 1.0,
  );

  static const TextStyle body = TextStyle(
    color: LegacyColors.textBrown,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
}
