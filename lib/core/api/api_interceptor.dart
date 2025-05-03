import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:gradution_project/core/api/api_keys.dart';
import 'package:gradution_project/core/api/end_points.dart';
import 'package:gradution_project/core/errors/failures.dart';

class ApiInterceptor extends Interceptor {
  final Dio dio;

  ApiInterceptor({required this.dio});
  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers['Accept-language'] = "ar";
    final token =
        await AppStorageHelper.getSecureData(StorageKeys.accessToken.key);
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    super.onError(err, handler);

    log("error: ApiInterceptor.onError()");
    if (err.response?.statusMessage == "Unable to verify token") {
      try {
        final refreshResponse = await dio.post(EndPoints.refreshToken);

        final newAccessToken = refreshResponse.data[ApiKeys.accessToken];
        await AppStorageHelper.setSecureData(
            StorageKeys.accessToken.key, newAccessToken);

        final opts = err.requestOptions;
        opts.headers['Authorization'] = 'Bearer $newAccessToken';

        final clonedRequest = await dio.fetch(opts);
        return handler.resolve(clonedRequest);
      } catch (e) {
        await AppStorageHelper.deleteSecureData(StorageKeys.accessToken.key);
        throw UnAuthorizedException();
      }
    }

    // return handler.next(err);
  }
}
