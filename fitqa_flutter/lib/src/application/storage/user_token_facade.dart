import 'package:fitqa/src/domain/services/storage/storage_service.dart';
import 'package:fitqa/src/domain/services/storage/storage_service_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userTokenProvider =
    StateNotifierProvider<UserTokenNotifier, String>((ref) {
  final storageService = ref.watch(storageServiceProvider);
  return UserTokenNotifier(storageService);
});

class UserTokenNotifier extends StateNotifier<String> {
  UserTokenNotifier(this.storageService) : super("") {
    getUserToken();
  }

  StorageService storageService;

  void getUserToken() async {
    state = await storageService.getUserToken() ?? "";
  }

  void setUserToken(String? userToken) {
    storageService.storeUserToken(userToken ?? "");
    getUserToken();
  }
}
