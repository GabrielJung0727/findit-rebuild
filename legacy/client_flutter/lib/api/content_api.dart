import 'package:dio/dio.dart';

import 'api_client.dart';

/// 스테이지 이미지 / 광고 이미지 / 공지사항 — 콘텐츠 fetch.
///
/// 서버 [routes/member.js](../../../../server/src/routes/member.js)
/// `newImageList`, `newAdImageList`, `notice`.
class ContentApi {
  ContentApi(this._client);

  final ApiClient _client;
  Dio get _dio => _client.dio;

  /// 스테이지 이미지 목록 (`imgId` 이후 분만 incremental).
  ///
  /// 응답 list 항목: `{imgId, img, xSize, ySize, x, y, imgType, imageCut(JSON string),
  /// urlDownload, urlDetail, urlVideo, adCaption, view, viewCount, regDate}`.
  Future<List<Map<String, dynamic>>> newImageList({int sinceImgId = 0}) async {
    final res = await _dio.get<Map<String, dynamic>>(
      'app/member/newImageList.json',
      queryParameters: <String, dynamic>{'imgId': sinceImgId},
    );
    final body = unwrapResult(res.data);
    return _list(body);
  }

  /// 광고 이미지 목록.
  ///
  /// 응답 list 항목: `{adId, adImage, adName, adUrl, expireDate}`.
  Future<List<Map<String, dynamic>>> newAdImageList({int sinceAdId = 0}) async {
    final res = await _dio.get<Map<String, dynamic>>(
      'app/member/newAdImageList.json',
      queryParameters: <String, dynamic>{'adId': sinceAdId},
    );
    final body = unwrapResult(res.data);
    return _list(body);
  }

  /// 공지사항 — 서버가 HTML 을 직접 반환. `flutter_html` 위젯에 그대로 주입.
  Future<String> noticeHtml() async {
    final res = await _dio.get<String>(
      'app/member/notice.json',
      options: Options(responseType: ResponseType.plain),
    );
    return res.data ?? '';
  }

  List<Map<String, dynamic>> _list(Map<String, dynamic> body) {
    final raw = body['list'];
    if (raw is! List) return <Map<String, dynamic>>[];
    return raw
        .whereType<Map<dynamic, dynamic>>()
        .map((e) => e.cast<String, dynamic>())
        .toList(growable: false);
  }
}
