import 'package:fitqa/widget/list_trainer.dart';
import 'package:flutter/material.dart';

class ScreenTrainerList extends StatelessWidget {
  const ScreenTrainerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTrainer(
        selectable: false,
      ),
    );
  }
}
