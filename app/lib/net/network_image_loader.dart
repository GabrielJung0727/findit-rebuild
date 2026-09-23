import 'dart:ui' as ui;

import 'package:http/http.dart' as http;

import '../core/config.dart';
import '../features/battle/battle_scene.dart';

/// 서명 URL 은 상대 경로로 온다 (`/content/<matchId>/base/0?exp=&sig=`).
/// 쿼리스트링을 잃으면 서명이 깨져 403 이 된다 — 문자열 이어붙이기로
/// 충분하고, Uri 조립으로 다시 인코딩하면 오히려 망가진다.
ImageLoader networkImageLoader({http.Client? client}) {
  final http.Client httpClient = client ?? http.Client();
  return (String url) async {
    final res = await httpClient.get(Uri.parse('${AppConfig.apiBase}$url'));
    if (res.statusCode != 200) {
      throw StateError('이미지 실패 (${res.statusCode}): $url');
    }
    final codec = await ui.instantiateImageCodec(res.bodyBytes);
    return (await codec.getNextFrame()).image;
  };
}
