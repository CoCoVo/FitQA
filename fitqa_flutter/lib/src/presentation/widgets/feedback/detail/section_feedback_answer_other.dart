import 'package:fitqa/src/application/feedback/feedback_detail.dart';
import 'package:fitqa/src/presentation/widgets/feedback/detail/section_feedback_answer_completed.dart';
import 'package:fitqa/src/presentation/widgets/feedback/detail/section_feedback_answer_profile.dart';
import 'package:fitqa/src/presentation/widgets/feedback/detail/section_feedback_answer_uncompleted.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SectionFeedbackAnswerOther extends ConsumerWidget {
  const SectionFeedbackAnswerOther({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final feedbackDetail = ref.watch(feedbackDetailProvider);

    return feedbackDetail.maybeWhen(
        success: (feedback) {
          return Column(
            children: [
              SectionFeedbackAnswerProfile(),
              if (feedback.answer == null)
                SectionFeedbackAnswerUncompleted()
              else
                SectionFeedbackAnswerCompleted()
            ],
          );
        },
        orElse: () => const SizedBox());
  }
}
