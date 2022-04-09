import 'dart:collection';

import 'package:dio/dio.dart';
import 'package:fitqa/src/application/trainer/trainer_facade.dart';
import 'package:fitqa/src/common/exceptions.dart';
import 'package:fitqa/src/domain/entities/trainer/trainer/trainer.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final filteredAreasProvider = StateProvider<List<String>>((ref) => []);

final updatedTrainersProvider =
    StateNotifierProvider<TrainerListNotifier, AsyncValue<List<Trainer>>>(
        (ref) => TrainerListNotifier(ref.read));

final completedTrainersProvider = Provider<AsyncValue<List<Trainer>>>((ref) {
  final filterAreas = ref.watch(InterestAreasNotifier.provider);
  final updatedTrainers = ref.watch(updatedTrainersProvider);

  return updatedTrainers.whenData((trainers) => trainers.where((trainer) {
        HashSet<String> filtering = HashSet.of(filterAreas);
        filtering.retainAll(
            trainer.interestAreas.map((e) => e.interestArea).toList());
        return filtering.isNotEmpty;
      }).toList());
});

class InterestAreasNotifier extends StateNotifier<List<String>> {
  static final provider =
      StateNotifierProvider<InterestAreasNotifier, List<String>>(
          (ref) => InterestAreasNotifier());

  InterestAreasNotifier() : super([]);

  String get last {
    return state.last;
  }

  update(List<String> newInterestAreas) {
    state = [...state, newInterestAreas.last];
  }
}

class TrainerListNotifier extends StateNotifier<AsyncValue<List<Trainer>>> {
  TrainerListNotifier(this.reader, [AsyncValue<List<Trainer>>? trainers])
      : super(trainers ?? const AsyncValue.loading());

  final Reader reader;

  Future<void> retrieveTrainers() async {
    try {
      state = const AsyncValue.loading();
      final trainers = await reader(trainerFacadeProvider).getTrainers();
      state = AsyncValue.data(trainers);
    } on DioError catch (error) {
      throw DataException.fromDioError(error);
    }
  }
}
