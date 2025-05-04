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
    // final token =
    //   await AppStorageHelper.getSecureData(StorageKeys.accessToken.key);
    //   if (token != null) {
    //     options.headers['Authorization'] = 'Bearer $token';
    //   }
    //   super.onRequest(options, handler);
    // }
  }
}
