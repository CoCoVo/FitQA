import 'package:fitqa/src/domain/services/storage/storage_service.dart';
import 'package:fitqa/src/domain/services/storage/storage_service_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final trainerTokenProvider =
    StateNotifierProvider<TrainerTokenNotifier, String>((ref) {
  final storageService = ref.watch(storageServiceProvider);
  return TrainerTokenNotifier(storageService);
});

class TrainerTokenNotifier extends StateNotifier<String> {
  TrainerTokenNotifier(this.storageService) : super("") {
    getTrainerToken();
  }

  StorageService storageService;

  void getTrainerToken() async {
    state = await storageService.getTrainerToken() ?? "";
  }

  void setUserToken(String trainerToken) {
    storageService.storeTrainerToken(trainerToken);
    getTrainerToken();
  }
}
