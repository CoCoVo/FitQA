import 'package:fitqa/src/application/trainer/trainer_list.dart';
import 'package:fitqa/src/domain/entities/trainer/trainer/trainer.dart';
import 'package:fitqa/src/presentation/widgets/trainer/list/trainer_card_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/fitqa_workout_area_filter.dart';

class TrainerList extends ConsumerWidget {
  TrainerList({
    Key? key,
    this.onTrainerTap,
    this.onButtonTap,
  }) : super(key: key);

  Function(Trainer)? onTrainerTap, onButtonTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final trainers = ref.watch(trainerListProvider);
    final trainerFilters = ref.watch(trainerFilterProvider);

    final trainerFilterController = ref.watch(trainerFilterProvider.notifier);

    return Column(mainAxisSize: MainAxisSize.min, children: [
      FitqaWorkoutAreaFilter(
        selected: trainerFilters,
        onSelected: (area, selected) {
          trainerFilterController.update(area, selected);
        },
      ),
      trainers.maybeWhen(
        success: (trainers) => Expanded(
            child: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 8),
          scrollDirection: Axis.vertical,
          itemCount: trainers.length,
          itemBuilder: (context, int index) => TrainerCardView(
            trainer: trainers[index],
            onTrainerTap: onTrainerTap,
            onButtonTap: onButtonTap,
          ),
        )),
        error: (err) => Center(
          child: Text(err.toString()),
        ),
        orElse: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
      // trainers.when(
      //     data: (trainers) {
      //       return Expanded(
      //           child: ListView.builder(
      //         padding: const EdgeInsets.symmetric(vertical: 8),
      //         scrollDirection: Axis.vertical,
      //         itemCount: trainers.length,
      //         itemBuilder: (context, int index) => TrainerCardView(
      //           trainer: trainers[index],
      //           onTrainerTap: onTrainerTap,
      //           onButtonTap: onButtonTap,
      //         ),
      //       ));
      //     },
      //     error: (error, e) => Center(
      //           child: Text(error.toString()),
      //         ),
      //     loading: () => const Center(
      //           child: CircularProgressIndicator(),
      //         )),
    ]);
  }
}
