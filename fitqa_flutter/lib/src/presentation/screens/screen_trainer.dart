import 'package:fitqa/src/presentation/controller/screen_trainer_controller.dart';
import 'package:fitqa/src/presentation/state/screen_trainer_state.dart';
import 'package:fitqa/src/presentation/widgets/common/fitqa_appbar.dart';
import 'package:fitqa/src/presentation/widgets/common/multi_select_chip.dart';
import 'package:fitqa/src/presentation/widgets/trainer/trainer_card_view.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:fitqa/src/theme/dimen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ScreenTrainer extends ConsumerStatefulWidget {
  const ScreenTrainer({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _ScreenTrainerState();
}

class _ScreenTrainerState extends ConsumerState<ScreenTrainer> {

  @override
  void initState() {
    super.initState();
    ref.read(screenTrainerControllerProvider).refreshTrainerList();
  }

  @override
  Widget build(BuildContext context) {
    final screenTrainerController = ref.watch(screenTrainerControllerProvider);
    final trainers = ref.watch(completedTrainersProvider);

    return Container(
      color: FColors.white,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(children: [
        OutlinedButton(
            onPressed: () => screenTrainerController.refreshTrainerList(),
            child: Text("hello")),
        FitqaAppbar(),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: SizedBox(
              height: FDimen.defaultMultiSelectChipSize,
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child:
                  MultiSelectChip(const ['전체', 'LOWER', 'BACK', '팔', '하체', '가'
                      '슴'],
                      onSelectionChanged: (selectedList) {
                        screenTrainerController.updateFilter(selectedList);
                      })),
            )),
        trainers.when(
            data: (trainers) {
              print("ui");
              print(trainers);
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