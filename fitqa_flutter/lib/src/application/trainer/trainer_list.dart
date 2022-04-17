import 'package:fitqa/src/domain/entities/trainer/trainer/trainer.dart';
import 'package:fitqa/src/domain/services/trainer/trainer_service.dart';
import 'package:fitqa/src/domain/services/trainer/trainer_service_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../state/state.dart';

final trainerListProvider =
    StateNotifierProvider<TrainerListNotifier, State<List<Trainer>>>((ref) {
  final trainerService = ref.watch(trainerServiceProvider);
  return TrainerListNotifier(trainerService);
});

class TrainerListNotifier extends StateNotifier<State<List<Trainer>>> {
  TrainerListNotifier(this.trainerService) : super(const State.init()) {
    getTrainerList();
  }

  TrainerService trainerService;

  void getTrainerList() async {
    try {
      state = const State.loading();
      final trainers = await trainerService.getTrainers();
      state = State.success(trainers);
    } on Exception catch (e) {
      state = State.error(e);
    }
  }
}
