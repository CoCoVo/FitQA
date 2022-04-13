import 'package:fitqa/src/application/feedback/feedback_detail.dart';
import 'package:fitqa/src/presentation/widgets/common/area_small_widget.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SectionFeedbackContent extends ConsumerWidget {
  const SectionFeedbackContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final feedbackDetail = ref.watch(feedbackDetailProvider).data!;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            feedbackDetail.title,
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
            feedbackDetail.content,
            style: TextStyle(fontSize: 18, color: FColors.black),
          ),
        ],
      ),
    );
  }
}
