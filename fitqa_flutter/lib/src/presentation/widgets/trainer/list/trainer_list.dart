import 'package:fitqa/src/domain/entities/common/enum/common_eunm.dart';
import 'package:fitqa/src/presentation/controller/screen_trainer_controller.dart';
import 'package:fitqa/src/presentation/widgets/common/multi_select_chip.dart';
import 'package:fitqa/src/presentation/widgets/trainer/list/trainer_card_view.dart';
import 'package:fitqa/src/theme/dimen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TrainerList extends ConsumerWidget {
  const TrainerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final trainers = ref.watch(trainerControllerProvider);

    return Column(mainAxisSize: MainAxisSize.min, children: [
      SizedBox(
        height: FDimen.defaultMultiSelectChipSize,
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: MultiSelectChip(
                WorkOutArea.values
                    .where((element) => element != WorkOutArea.none)
                    .map((e) => e.toStringType())
                    .toList(),
                spacing: 8,
                onSelectionChanged: (selectedList) {})),
      ),
      trainers.when(
          data: (trainers) {
            return Expanded(
                child: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 8),
              scrollDirection: Axis.vertical,
              itemCount: trainers.length,
              itemBuilder: (context, int index) => ProviderScope(
                child: TrainerCardView(trainer: trainers[index]),
              ),
            ));
          },
          error: (error, e) => Center(
                child: Text(error.toString()),
              ),
          loading: () => const Center(
                child: CircularProgressIndicator(),
              )),
    ]);
  }
}
