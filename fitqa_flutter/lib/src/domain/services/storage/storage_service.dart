abstract class StorageService {
  Future<void> storeUserToken(String userToken);
  Future<String?> getUserToken();
}
