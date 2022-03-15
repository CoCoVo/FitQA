import 'package:fitqa/theme/color.dart';
import 'package:fitqa/widget/fitqa_appbar.dart';
import 'package:fitqa/widget/list_trainer.dart';
import 'package:flutter/material.dart';

class ScreenTrainerSelect extends StatelessWidget {
  const ScreenTrainerSelect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: FColors.appBackground,
            appBar: FAppbar('FitQA'),
            body: Container(
              child: ListTrainer(
                selectable: true,
              ),
            )));
  }
}
