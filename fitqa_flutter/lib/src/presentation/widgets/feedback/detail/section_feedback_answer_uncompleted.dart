import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';

class SectionFeedbackAnswerUncompleted extends StatelessWidget {
  const SectionFeedbackAnswerUncompleted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildUncompleteBox("피드백 영상이 업로드되지 않았습니다", 202),
        const SizedBox(
          height: 16,
        ),
        _buildUncompleteBox("피드백이 업로드되지 않았습니다", 42),
      ],
    );
  }

  Widget _buildUncompleteBox(String text, double height) {
    return Container(
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: FColors.grey_0),
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 18, color: FColors.grey_3),
        ),
      ),
    );
  }
}
