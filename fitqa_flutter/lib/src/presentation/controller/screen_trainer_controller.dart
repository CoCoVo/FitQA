import 'package:dio/dio.dart';
import 'package:fitqa/src/application/trainer/trainer_facade.dart';
import 'package:fitqa/src/common/exceptions.dart';
import 'package:fitqa/src/domain/entities/trainer/trainer/trainer.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TrainerController extends StateNotifier<AsyncValue<List<Trainer>>> {
  TrainerController(this.trainerFacade) : super(const AsyncValue.loading()) {
    getTrainers();
  }

  final TrainerFacade trainerFacade;

  Future<void> getTrainers() async {
    try {
      state = const AsyncValue.loading();
      final trainers = await trainerFacade.getTrainers();
      state = AsyncValue.data(trainers);
    } on DioError catch (error) {
      throw DataException.fromDioError(error);
    }
  }
}

final trainerControllerProvider = StateNotifierProvider.autoDispose<
    TrainerController, AsyncValue<List<Trainer>>>((ref) {
  final trainerFacade = ref.watch(trainerFacadeProvider);
  return TrainerController(trainerFacade);
});
