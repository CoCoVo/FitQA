import 'package:fitqa/src/domain/entities/trainer/trainer/trainer.dart';

abstract class TrainerService {
  Future<List<Trainer>> getTrainers();

  Future<Trainer> getTrainerByToken(String trainerToken);
}
