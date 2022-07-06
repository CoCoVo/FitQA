import 'package:fitqa/src/application/feedback/feedback_selected_trainer.dart';
import 'package:fitqa/src/application/trainer/trainer_detail.dart';
import 'package:fitqa/src/presentation/screens/screen_trainer_detail.dart';
import 'package:fitqa/src/presentation/widgets/common/appbar/fitqa_appbar_sub.dart';
import 'package:fitqa/src/presentation/widgets/trainer/list/trainer_list.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ScreenTrainerSelect extends ConsumerWidget {
  const ScreenTrainerSelect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedTrainerController =
        ref.watch(selectedTrainerProvider.notifier);
    final selectedTrainerTokenController =
        ref.watch(selectedTrainerTokenProvider.notifier);

    return Scaffold(
      appBar: FitqaAppbarSub(
        title: "트레이너 선택",
        backgroundColor: FColors.blue,
        onPressed: () => Navigator.pop(context),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: TrainerList(
          onTrainerTap: (trainer) {
            selectedTrainerTokenController.state = trainer.trainerToken;
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ScreenTrainerDetail()));
          },
          onButtonTap: (trainer) {
            selectedTrainerController.state = trainer;
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
