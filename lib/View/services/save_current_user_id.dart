import 'dart:developer';

import 'package:gradution_project/model/models/storage/app_storage_helper.dart';
import 'package:gradution_project/model/models/storage/storage_keys.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

Future<int?> saveCurrentUserId() async {
  int? userId;
  String? accessToken =
      await AppStorageHelper.getSecureData(StorageKeys.accessToken.toString());

  if (accessToken != null) {
    log(accessToken);
    Map<String, dynamic> decodedToken = JwtDecoder.decode(accessToken);
    final id = decodedToken[
        'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/nameidentifier'];

    userId = int.parse(id);
    log(JwtDecoder.isExpired(accessToken).toString());
    log("decoded token: $decodedToken");
  }

  if (userId != null) {
    await AppStorageHelper.setString(
        StorageKeys.currentUserId.toString(), userId.toString());
  }

  return userId;
}
