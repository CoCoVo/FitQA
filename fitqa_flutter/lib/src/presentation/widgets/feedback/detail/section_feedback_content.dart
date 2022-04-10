import 'package:fitqa/src/presentation/widgets/common/area_small_widget.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';

class SectionFeedbackContent extends StatelessWidget {
  const SectionFeedbackContent(
      {Key? key, required this.title, required this.content})
      : super(key: key);

  final title;
  final content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 20,
                color: FColors.black,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 12,
          ),
          AreaSmallWidget("등",
              textColor: FColors.black,
              borderColor: FColors.black,
              backgroundColor: FColors.white),
          SizedBox(
            height: 32,
          ),
          Text(
            content,
            style: TextStyle(fontSize: 18, color: FColors.black),
          ),
        ],
      ),
    );
  }
}
