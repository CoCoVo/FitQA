import 'package:fitqa/src/application/feedback/feedback_detail.dart';
import 'package:fitqa/src/application/trainer/trainer_detail.dart';
import 'package:fitqa/src/domain/entities/feedback/fitqa_feedback/fitqa_feedback.dart';
import 'package:fitqa/src/presentation/screens/screen_feedback_detail.dart';
import 'package:fitqa/src/presentation/widgets/feedback/register/feedback_listview_item.dart';
import 'package:fitqa/src/presentation/widgets/trainer/detail/trainer_feedback_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TrainerFeedbackList extends ConsumerWidget {
  const TrainerFeedbackList({Key? key, this.category = FeedbackCategory.all})
      : super(key: key);

  final FeedbackCategory category;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final trainerDetail = ref
        .watch(trainerDetailProvider)
        .data!;
    final feedbackTokenController =
    ref.watch(selectedFeedbackTokenProvider.notifier);

    final List<FitqaFeedback> filteredFeedbacks = filterFeedbacks(
        trainerDetail.feedbacks, category);

    return ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 8),
        itemCount: filteredFeedbacks.length,
        itemBuilder: (context, index) =>
            FeedbackListViewItem(
              feedback: filteredFeedbacks[index],
              onPressed: () {
                feedbackTokenController.state =
                    filteredFeedbacks[index].feedbackToken;

                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ScreenFeedbackDetail()),
                );
              },
            ),
        separatorBuilder: (BuildContext context, int index) => const Divider());
  }

  List<FitqaFeedback> filterFeedbacks(List<FitqaFeedback> feedbacks,
      FeedbackCategory category) {
    switch (category) {
      case FeedbackCategory.all:
        return feedbacks;
      case FeedbackCategory.notComplete:
        return feedbacks
            .where((element) => element.answer == null)
            .toList();
      case FeedbackCategory.complete:
        return feedbacks
            .where((element) => element.answer != null)
            .toList();
    }
  }
}