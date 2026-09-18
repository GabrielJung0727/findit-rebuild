import 'package:dio/dio.dart';

import 'api_client.dart';

/// 정적 메타데이터 — 스킬 카탈로그 / 레벨 테이블.
///
/// 서버 [routes/skills.js](../../../../server/src/routes/skills.js).
/// 클라 로그인 직후 1회만 받아서 캐싱하는 것을 권장.
class CatalogApi {
  CatalogApi(this._client);

  final ApiClient _client;
  Dio get _dio => _client.dio;

  /// 44개 스킬 마스터 데이터.
  ///
  /// 응답 list 항목: `{skillId, code, nameKo, nameEn, groupCode, tier, unlockLevel,
  /// attackDuration, pointCost, requiredSkillIds[], assetGroup}`.
  Future<List<Map<String, dynamic>>> skillCatalog() async {
    final res = await _dio.get<Map<String, dynamic>>('app/member/skillCatalog.json');
    final body = unwrapResult(res.data);
    final raw = body['list'];
    if (raw is! List) return <Map<String, dynamic>>[];
    return raw
        .whereType<Map<dynamic, dynamic>>()
        .map((e) => e.cast<String, dynamic>())
        .toList(growable: false);
  }

  /// 0~100 레벨 누적 점수 + 능력치 + 등급.
  ///
  /// 응답 list 항목: `{level, cumScore, attack, defense, hp, grade}`.
  Future<List<Map<String, dynamic>>> levelTable() async {
    final res = await _dio.get<Map<String, dynamic>>('app/member/levelTable.json');
    final body = unwrapResult(res.data);
    final raw = body['list'];
    if (raw is! List) return <Map<String, dynamic>>[];
    return raw
        .whereType<Map<dynamic, dynamic>>()
        .map((e) => e.cast<String, dynamic>())
        .toList(growable: false);
  }
}
