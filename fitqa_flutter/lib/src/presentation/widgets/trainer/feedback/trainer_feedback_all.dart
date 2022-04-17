import 'package:fitqa/src/application/feedback/feedback_detail.dart';
import 'package:fitqa/src/domain/entities/trainer/trainer/trainer.dart';
import 'package:fitqa/src/presentation/screens/screen_feedback_detail.dart';
import 'package:fitqa/src/presentation/widgets/feedback/register/feedback_listview_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TrainerFeedbackAll extends ConsumerWidget {
  const TrainerFeedbackAll({Key? key, required this.trainer}) : super(key: key);

  final Trainer trainer;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final feedbackTokenController =
        ref.watch(selectedFeedbackTokenProvider.notifier);

    return ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 8),
        itemCount: trainer.feedbacks.length,
        itemBuilder: (context, index) => FeedbackListViewItem(
              feedback: trainer.feedbacks[index],
              onPressed: () {
                feedbackTokenController.state =
                    trainer.feedbacks[index].feedbackToken;

                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ScreenFeedbackDetail()),
                );
              },
            ),
        separatorBuilder: (BuildContext context, int index) => const Divider());
  }
}
