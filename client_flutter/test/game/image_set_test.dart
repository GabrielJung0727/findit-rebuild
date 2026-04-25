import 'package:findit/game/image_set.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('parseImageCutJson', () {
    test('parses JSON string into ImageCut list', () {
      final cuts = parseImageCutJson(
        '[{"x":195,"y":66,"w":100,"h":100},{"x":445,"y":6,"w":130,"h":130}]',
      );
      expect(cuts, hasLength(2));
      expect(cuts.first.x, 195);
      expect(cuts.last.w, 130);
    });

    test('accepts already-decoded List input', () {
      final cuts = parseImageCutJson(<Map<String, dynamic>>[
        <String, dynamic>{'x': 0, 'y': 0, 'w': 10, 'h': 10},
      ]);
      expect(cuts, hasLength(1));
    });

    test('returns empty on null/empty/malformed', () {
      expect(parseImageCutJson(null), isEmpty);
      expect(parseImageCutJson(''), isEmpty);
      expect(parseImageCutJson('garbage'), isEmpty);
      expect(parseImageCutJson('[1,2,3]'), isEmpty);
    });
  });

  group('ImageCut.contains', () {
    test('point inside rectangle', () {
      const c = ImageCut(x: 10, y: 20, w: 30, h: 40);
      expect(c.contains(15, 25), true);
      expect(c.contains(40, 60), true); // on the boundary
      expect(c.contains(9, 25), false);
      expect(c.contains(15, 19), false);
      expect(c.contains(41, 60), false);
    });
  });

  group('ImageSet.fromJson', () {
    test('full row from server newImageList', () {
      final s = ImageSet.fromJson(<String, dynamic>{
        'imgId': 1,
        'img': 'market001.png',
        'xSize': 640,
        'ySize': 720,
        'imageCut': '[{"x":0,"y":0,"w":100,"h":100}]',
        'urlDownload': 'https://cdn/market001.png',
        'urlDetail': 'https://example.com',
        'adCaption': '광고 문구',
      });
      expect(s.imgId, 1);
      expect(s.cuts, hasLength(1));
      expect(s.adCaption, '광고 문구');
    });
  });
}
