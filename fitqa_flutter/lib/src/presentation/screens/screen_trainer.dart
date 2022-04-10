import 'package:fitqa/src/presentation/controller/screen_trainer_controller.dart';
import 'package:fitqa/src/presentation/widgets/common/fitqa_appbar.dart';
import 'package:fitqa/src/presentation/widgets/common/multi_select_chip.dart';
import 'package:fitqa/src/presentation/widgets/trainer/trainer_card_view.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:fitqa/src/theme/dimen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ScreenTrainer extends ConsumerWidget {
  const ScreenTrainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final trainers = ref.watch(trainerControllerProvider);
    return Container(
      color: FColors.white,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(children: [
        FitqaAppbar(),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: SizedBox(
              height: FDimen.defaultMultiSelectChipSize,
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child:
                      MultiSelectChip(const ['전체', '등', '어깨', '팔', '하체', '가슴'],
                          onSelectionChanged: (selectedList) {
                    print(selectedList);
                  })),
            )),
        trainers.when(
            data: (trainers) {
              return Expanded(
                  child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: trainers.length,
                itemBuilder: (context, int index) => ProviderScope(
                  child: TrainerCardView(data: trainers[index]),
                ),
              ));
            },
            error: (error, e) => Center(
                  child: Text(error.toString()),
                ),
            loading: () => const Center(
                  child: CircularProgressIndicator(),
                )),
      ]),
    );
  }
}
