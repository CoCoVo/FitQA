import 'package:fitqa/src/presentation/screens/screen_feedback_request.dart';
import 'package:fitqa/src/presentation/widgets/common/fitqa_appbar.dart';
import 'package:fitqa/src/presentation/widgets/trainer/list/trainer_list.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ScreenTrainer extends ConsumerWidget {
  const ScreenTrainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: FColors.white,
      child: Column(children: [
        FitqaAppbar(),
        Expanded(
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: TrainerList(
                  onTrainerSelect: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ScreenFeedbackRequest())),
                ))),
      ]),
    );
  }
}
