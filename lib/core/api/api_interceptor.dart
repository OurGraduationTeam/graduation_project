import 'dart:developer';

import 'package:dio/dio.dart';


class ApiInterceptor extends Interceptor {
  final Dio dio;

  ApiInterceptor({required this.dio});
  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers['Accept-language'] = "ar";
    log("Request URL: ${options.baseUrl}${options.path}");
    // final token =
    //   await AppStorageHelper.getSecureData(StorageKeys.accessToken.key);
    //   if (token != null) {
    //     options.headers['Authorization'] = 'Bearer $token';
    //   }
    //   super.onRequest(options, handler);
    // }
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    super.onError(err, handler);
    log("Error: ${err.message}");
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
    log("Response: ${response.data}");
  }
}
