import 'package:fitqa/src/repository/trainer_repository.dart';
import 'package:fitqa/src/domain/entities/trainer/trainer/trainer.dart';
import 'package:fitqa/src/domain/services/trainer/trainer_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TrainerServiceImpl implements TrainerService {
  final TrainerRepository trainerRepository;

  TrainerServiceImpl(this.trainerRepository);

  @override
  Future<List<Trainer>> getTrainers() {
    return trainerRepository.getTrainers();
  }

  @override
  Future<Trainer> getTrainerByToken(String trainerToken) {
    return trainerRepository.getTrainerByToken(trainerToken);
  }
}

final trainerServiceProvider = Provider<TrainerServiceImpl>((ref) {
  final fitQaRepository = ref.watch(fitQaRepositoryProvider);
  return TrainerServiceImpl(fitQaRepository);
});
