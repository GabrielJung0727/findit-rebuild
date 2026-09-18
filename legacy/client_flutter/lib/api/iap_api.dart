import 'package:dio/dio.dart';

import 'api_client.dart';

/// IAP 영수증 검증 + 재화 지급.
///
/// 서버 [routes/iap.js](../../../../server/src/routes/iap.js) `verifyIap`.
///
/// 현재 서버 지원: `'google'` / `'samsung'`.
/// **Apple StoreKit 분기는 §10 작업 — `'apple'` 추가 시 서버 `iap_receipts.store`
/// enum + `iap.js` `productMap` + Apple App Store Server API 검증 동시 추가.**
class IapApi {
  IapApi(this._client);

  final ApiClient _client;
  Dio get _dio => _client.dio;

  /// 결제 완료 직후 호출. 서버가 토큰 진위 검증 후 verified=true 면 재화 지급.
  ///
  /// [store]: `'google' | 'samsung' | 'apple'` (apple 은 §10 후속).
  /// [purchaseToken]: Google `purchaseToken` / Samsung `purchaseId` /
  ///                  Apple `transactionReceipt` (base64 또는 JWS).
  ///
  /// 응답: `{orderId, granted: {coin, gem}, coin, gem}`
  Future<Map<String, dynamic>> verifyIap({
    required String userId,
    required String store,
    required String productId,
    required String purchaseToken,
  }) async {
    final res = await _dio.post<Map<String, dynamic>>(
      'app/member/verifyIap.json',
      data: <String, dynamic>{
        'userId': userId,
        'store': store,
        'productId': productId,
        'purchaseToken': purchaseToken,
      },
    );
    return unwrapResult(res.data);
  }
}
