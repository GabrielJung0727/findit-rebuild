import 'dart:convert';

import 'package:http/http.dart' as http;

import '../core/config.dart';

class RestException implements Exception {
  final String message;
  const RestException(this.message);
  @override
  String toString() => 'RestException: $message';
}

/// 클라이언트가 아는 퍼즐 정보의 전부다.
///
/// **좌표를 담을 자리가 없다** (스펙 §6.3). 서버는 싣지 않지만, 모델에
/// 자리를 만들어 두면 언젠가 채워져 화면으로 흘러나간다.
class PuzzleMeta {
  final String id;
  final int width;
  final int height;

  const PuzzleMeta({required this.id, required this.width, required this.height});

  factory PuzzleMeta.fromJson(Map<String, dynamic> json) => PuzzleMeta(
        id: json['id'] as String,
        width: json['width'] as int,
        height: json['height'] as int,
      );

  Map<String, dynamic> toJson() => {'id': id, 'width': width, 'height': height};
}

class Manifest {
  final String version;
  final List<PuzzleMeta> puzzles;
  const Manifest({required this.version, required this.puzzles});
}

abstract interface class RestClient {
  Future<String> guestToken();
  Future<Manifest> manifest();
}

RestClient createRestClient({http.Client? httpClient, String? base}) =>
    _HttpRestClient(httpClient ?? http.Client(), base ?? AppConfig.apiBase);

class _HttpRestClient implements RestClient {
  final http.Client _http;
  final String _base;
  Manifest? _cached;

  _HttpRestClient(this._http, this._base);

  @override
  Future<String> guestToken() async {
    final res = await _http.post(Uri.parse('$_base/auth/guest'));
    if (res.statusCode != 200) {
      // 조용히 빈 토큰을 쓰면 WS 가 AUTH 에서 끊기고, 원인이 여기가 아니라
      // 소켓처럼 보인다.
      throw RestException('게스트 발급 실패 (${res.statusCode})');
    }
    return (jsonDecode(res.body) as Map<String, dynamic>)['token'] as String;
  }

  @override
  Future<Manifest> manifest() async {
    final cached = _cached;
    if (cached != null) return cached;

    final res = await _http.get(Uri.parse('$_base/content/manifest'));
    if (res.statusCode != 200) {
      throw RestException('매니페스트 실패 (${res.statusCode})');
    }

    final json = jsonDecode(res.body) as Map<String, dynamic>;
    final manifest = Manifest(
      version: json['version'] as String,
      puzzles: [
        for (final p in json['puzzles'] as List<dynamic>)
          PuzzleMeta.fromJson(p as Map<String, dynamic>),
      ],
    );
    return _cached = manifest;
  }
}
