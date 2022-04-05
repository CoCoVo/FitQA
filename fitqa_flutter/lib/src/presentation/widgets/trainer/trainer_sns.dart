import 'package:fitqa/src/common/fitqa_icon.dart';
import 'package:fitqa/src/presentation/widgets/trainer/trainer_sns_item.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:fitqa/src/theme/dimen.dart';
import 'package:flutter/material.dart';

class TrainerSns extends StatelessWidget {
  const TrainerSns({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(17, 0, 17, 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("연관링크", style: TextStyle(fontSize: 16)),
          SizedBox(height: 16),
          Divider(height: 1, color: FColors.line, thickness: 1),
          SizedBox(height: 19),
          TrainerSnsItem(Icon(FitQaIcon.facebook), "강경원"),
          SizedBox(height: 14),
          TrainerSnsItem(Icon(FitQaIcon.instagram), "dr.kangkyungwon"),
          SizedBox(height: 14),
          TrainerSnsItem(Icon(FitQaIcon.facebook), "강경원"),
          SizedBox(height: 31),
          Divider(color: FColors.black, height: 1, thickness: 3),
        ],
      ),
    );
  }
}
