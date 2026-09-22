import 'dart:convert';
import 'dart:ui' show Rect;

import 'package:flutter/foundation.dart';

/// 틀린 부위 1개 — `(x, y)` 좌상단 + `(w, h)` 사각형. 좌표계는 원본 이미지 픽셀.
///
/// 서버 [`images.image_cut`](../../../../server/sql/schema.sql) JSON 배열의 한 항목.
/// 콘텐츠 가이드: [`docs/CONTENT_PRODUCTION_GUIDE.md`](../../../../docs/CONTENT_PRODUCTION_GUIDE.md).
@immutable
class ImageCut {
  const ImageCut({required this.x, required this.y, required this.w, required this.h});

  final int x;
  final int y;
  final int w;
  final int h;

  Rect toRect() => Rect.fromLTWH(
        x.toDouble(),
        y.toDouble(),
        w.toDouble(),
        h.toDouble(),
      );

  bool contains(double px, double py) =>
      px >= x && px <= x + w && py >= y && py <= y + h;

  factory ImageCut.fromJson(Map<String, dynamic> j) => ImageCut(
        x: (j['x'] as num).toInt(),
        y: (j['y'] as num).toInt(),
        w: (j['w'] as num).toInt(),
        h: (j['h'] as num).toInt(),
      );
}

/// 한 스테이지 — 원본 이미지 + 7개 틀린 부위 + 광고 메타.
///
/// `newImageList.json` 응답의 한 row. `imageCut` 은 서버에서 JSON **문자열**로
/// 옴 — 클라가 [parseImageCutJson] 으로 파싱.
@immutable
class ImageSet {
  const ImageSet({
    required this.imgId,
    required this.img,
    required this.xSize,
    required this.ySize,
    required this.cuts,
    this.urlDownload,
    this.urlDetail,
    this.adCaption,
  });

  final int imgId;
  final String img;
  final int xSize;
  final int ySize;
  final List<ImageCut> cuts;
  final String? urlDownload;
  final String? urlDetail;
  final String? adCaption;

  factory ImageSet.fromJson(Map<String, dynamic> j) => ImageSet(
        imgId: (j['imgId'] as num?)?.toInt() ?? 0,
        img: j['img'] as String? ?? '',
        xSize: (j['xSize'] as num?)?.toInt() ?? 0,
        ySize: (j['ySize'] as num?)?.toInt() ?? 0,
        cuts: parseImageCutJson(j['imageCut']),
        urlDownload: j['urlDownload'] as String?,
        urlDetail: j['urlDetail'] as String?,
        adCaption: j['adCaption'] as String?,
      );
}

/// 서버 응답의 `imageCut` 필드를 [ImageCut] 리스트로 파싱.
///
/// - 문자열(JSON 인코딩): `'[{"x":0,"y":0,"w":10,"h":10}, ...]'`
/// - 또는 이미 List 인 경우 그대로
///
/// 파싱 실패 / 잘못된 항목은 무시 — 경계 검증은 §5 `validateImageCut` 가 서버에서 수행.
List<ImageCut> parseImageCutJson(Object? raw) {
  if (raw == null) return const <ImageCut>[];
  Object? decoded = raw;
  if (raw is String) {
    if (raw.isEmpty) return const <ImageCut>[];
    try {
      decoded = jsonDecode(raw);
    } catch (_) {
      return const <ImageCut>[];
    }
  }
  if (decoded is! List) return const <ImageCut>[];
  final out = <ImageCut>[];
  for (final item in decoded) {
    if (item is Map) {
      final m = item.cast<String, dynamic>();
      if (m['x'] is num && m['y'] is num && m['w'] is num && m['h'] is num) {
        out.add(ImageCut.fromJson(m));
      }
    }
  }
  return out;
}
