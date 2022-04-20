import 'package:fitqa/src/application/feedback/feedback_detail.dart';
import 'package:fitqa/src/domain/entities/common/enum/workout_area.dart';
import 'package:fitqa/src/presentation/widgets/common/area_small_widget.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SectionFeedbackContent extends ConsumerWidget {
  const SectionFeedbackContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final feedbackDetail = ref.watch(feedbackDetailProvider);

    return feedbackDetail.maybeWhen(
        success: (feedback) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  feedback.title,
                  style: TextStyle(
                      fontSize: 20,
                      color: FColors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 12,
                ),
                AreaSmallWidget(
                  feedback.interestArea.toStringType(),
                  textColor: FColors.black,
                  borderColor: FColors.black,
                  backgroundColor: FColors.white,
                ),
                SizedBox(
                  height: 32,
                ),
                Text(
                  feedback.content,
                  style: TextStyle(fontSize: 18, color: FColors.black),
                ),
              ],
            ),
          );
        },
        orElse: () => const SizedBox());
  }
}
