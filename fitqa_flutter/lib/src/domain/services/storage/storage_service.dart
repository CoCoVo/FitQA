abstract class StorageService {
  Future<void> storeUserToken(String userToken);
  Future<String?> getUserToken();

  Future<void> storeTrainerToken(String trainerToken);
  Future<String?> getTrainerToken();
}
