import 'package:fitqa/src/domain/services/storage/storage_key.dart';
import 'package:fitqa/src/domain/services/storage/storage_service.dart';
import 'package:fitqa/src/repository/internal_storage_repository.dart';
import 'package:fitqa/src/repository/repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final storageServiceProvider = Provider<StorageService>((ref) {
  final storageRepository = ref.read(internalStorageProvider);
  return StorageServiceImpl(storageRepository);
});

class StorageServiceImpl extends StorageService {
  StorageServiceImpl(this.storage);
  InternalStorageRepository storage;

  @override
  Future<String?> getUserToken() {
    return storage.read(StorageKey.USER_ID);
  }

  @override
  Future<void> storeUserToken(String userToken) {
    return storage.write(StorageKey.USER_ID, userToken);
  }
}
