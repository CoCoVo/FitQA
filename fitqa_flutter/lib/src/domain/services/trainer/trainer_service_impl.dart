import 'package:fitqa/src/data/repositories/fitqa_repository.dart';
import 'package:fitqa/src/domain/entities/trainer/trainer/trainer.dart';
import 'package:fitqa/src/domain/services/trainer/trainer_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TrainerServiceImpl implements TrainerService {
  final FitQaRepository fitQaRepository;

  TrainerServiceImpl(this.fitQaRepository);

  @override
  Future<List<Trainer>> getTrainers() {
    return fitQaRepository.getTrainers();
  }
}

final trainerServiceProvider = Provider<TrainerServiceImpl>((ref) {
  final fitQaRepository = ref.watch(fitQaRepositoryProvider);
  return TrainerServiceImpl(fitQaRepository);
});
