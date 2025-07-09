import 'dart:developer';

import 'package:gradution_project/core/storage/app_storage_helper.dart';
import 'package:gradution_project/core/storage/storage_keys.dart';

int getCurrentUserId() {
  final int userId = int.parse(
      AppStorageHelper.getString(StorageKeys.currentUserId.toString()) ?? "0");

  log("current user id: $userId");
  return userId;
}
