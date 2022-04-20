import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract class InternalStorageRepository {
  Future<void> write(String key, String value);
  Future<String?> read(String key);
  Future<void> delete(String key);
  Future<void> reset();
}

class InternalStorageRepositoryAPI extends InternalStorageRepository {
  FlutterSecureStorage storage = const FlutterSecureStorage();

  @override
  Future<void> write(String key, String value) {
    return storage.write(key: key, value: value);
  }

  @override
  Future<String?> read(String key) {
    return storage.read(key: key);
  }

  @override
  Future<void> delete(String key) {
    return storage.delete(key: key);
  }

  @override
  Future<void> reset() {
    return storage.deleteAll();
  }
}
