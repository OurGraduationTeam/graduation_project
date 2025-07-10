enum StorageKeys {
  accessToken,
  currentUserId,
}

extension StorageKeysExt on StorageKeys {
  String get key => toString().split('.').last;
}
