import 'package:fitqa/src/domain/entities/trainer/trainer/trainer.dart';
import 'package:fitqa/src/domain/services/trainer/trainer_service.dart';
import 'package:fitqa/src/domain/services/trainer/trainer_service_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TrainerFacade {
  final TrainerService trainerService;

  TrainerFacade(this.trainerService);

  Future<List<Trainer>> getTrainers() {
    print("Hello facade");
    return trainerService.getTrainers();
  }
}

final trainerFacadeProvider = Provider<TrainerFacade>((ref) {
  final trainerService = ref.watch(trainerServiceProvider);
  return TrainerFacade(trainerService);
});