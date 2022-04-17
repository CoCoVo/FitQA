import 'package:fitqa/src/application/state/state.dart';
import 'package:fitqa/src/domain/entities/trainer/trainer/trainer.dart';
import 'package:fitqa/src/domain/services/trainer/trainer_service.dart';
import 'package:fitqa/src/domain/services/trainer/trainer_service_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final selectedTrainerTokenProvider = StateProvider<String>((ref) => "");

final trainerDetailProvider =
    StateNotifierProvider<TrainerDetailNotifier, State<Trainer>>((ref) {
  final trainerService = ref.watch(trainerServiceProvider);
  final trainerToken = ref.watch(selectedTrainerTokenProvider);
  return TrainerDetailNotifier(trainerService, trainerToken);
});

class TrainerDetailNotifier extends StateNotifier<State<Trainer>> {
  TrainerDetailNotifier(this.trainerService, this.trainerToken)
      : super(const State.init()) {
    getTrainerDetail();
  }

  TrainerService trainerService;
  String trainerToken;

  void getTrainerDetail() async {
    try {
      state = const State.loading();
      final trainerInfo = await trainerService.getTrainerByToken(trainerToken);
      state = State.success(trainerInfo);
    } on Exception catch (e) {
      state = State.error(e);
    }
  }
}
