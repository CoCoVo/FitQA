import 'package:fitqa/src/presentation/widgets/common/fitqa_appbar_sub.dart';
import 'package:fitqa/src/presentation/widgets/trainer/list/trainer_list.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';

class ScreenTrainerSelect extends StatelessWidget {
  const ScreenTrainerSelect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FitqaAppbarSub(
        title: "트레이너 선택",
        backgroundColor: FColors.blue,
        onPressed: () => Navigator.pop(context),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: TrainerList(),
      ),
    );
  }
}
