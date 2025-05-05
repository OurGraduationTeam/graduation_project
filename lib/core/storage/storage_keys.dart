enum StorageKeys {
  accessToken,
}

extension StorageKeysExt on StorageKeys {
  String get key => toString().split('.').last;
}
