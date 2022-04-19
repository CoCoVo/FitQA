import 'package:fitqa/src/application/filtering/filter_notifier.dart';
import 'package:fitqa/src/domain/entities/common/enum/common_eunm.dart';
import 'package:fitqa/src/domain/entities/trainer/trainer/trainer.dart';
import 'package:fitqa/src/domain/services/trainer/trainer_service.dart';
import 'package:fitqa/src/domain/services/trainer/trainer_service_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../state/state.dart';

final trainerListProvider =
    StateNotifierProvider<TrainerListNotifier, State<List<Trainer>>>((ref) {
  final trainerService = ref.watch(trainerServiceProvider);
  final filters = ref.watch(trainerFilterProvider);
  return TrainerListNotifier(trainerService, filters);
});

final trainerFilterProvider =
    StateNotifierProvider<FilterNotifier, List<WorkOutArea>>((ref) {
  return FilterNotifier();
});

class TrainerListNotifier extends StateNotifier<State<List<Trainer>>> {
  TrainerListNotifier(this.trainerService, this.filters)
      : super(const State.init()) {
    getTrainerList();
  }

  TrainerService trainerService;
  List<WorkOutArea> filters;

  void getTrainerList() async {
    try {
      state = const State.loading();
      final trainers = await trainerService.getTrainers();
      final filteredTrainer =
          trainers.where((trainer) => _trainerFilter(trainer)).toList();
      state = State.success(filteredTrainer);
    } on Exception catch (e) {
      state = State.error(e);
    }
  }

  bool _trainerFilter(Trainer trainer) {
    if (filters.contains(WorkOutArea.all)) return true;
    bool isContainsArea = trainer.interestAreas
        .any((area) => filters.contains(area.interestArea));
    if (isContainsArea) return true;
    return false;
  }
}
