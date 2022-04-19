import 'package:fitqa/src/application/feedback/feedback_detail.dart';
import 'package:fitqa/src/application/storage/trainer_token_facade.dart';
import 'package:fitqa/src/presentation/widgets/feedback/detail/section_feedback_answer_other.dart';
import 'package:fitqa/src/presentation/widgets/feedback/detail/section_feedback_answer_owner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SectionFeedbackAnswer extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final feedbackDetail = ref.watch(feedbackDetailProvider).data!;
    final ownerTrainerToken = ref.watch(trainerTokenProvider);

    // 답변을 해야되는 경우. (트레이너 지정되고, 아직 답변 안했을때.
    if (ownerTrainerToken == feedbackDetail.trainer.trainerToken &&
        feedbackDetail.answer == null) return SectionFeedbackAnswerOwner();

    return const SectionFeedbackAnswerOther();
  }
}
