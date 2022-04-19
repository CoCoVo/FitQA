import 'package:fitqa/src/application/feedback/feedback_detail.dart';
import 'package:fitqa/src/application/feedback/feedback_list.dart';
import 'package:fitqa/src/domain/entities/feedback/fitqa_feedback/fitqa_feedback.dart';
import 'package:fitqa/src/presentation/screens/screen_feedback_detail.dart';
import 'package:fitqa/src/presentation/widgets/common/fitqa_appbar.dart';
import 'package:fitqa/src/presentation/widgets/common/fitqa_workout_area_filter.dart';
import 'package:fitqa/src/presentation/widgets/feedback/register/feedback_listview_item.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ScreenHome extends ConsumerWidget {
  ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final feedbacks = ref.watch(feedbackListProvider);

    final feedbackTokenController =
        ref.watch(selectedFeedbackTokenProvider.notifier);
    final feedbackFilterController = ref.watch(feedbackFilterProvider.notifier);

    return Container(
        color: FColors.white,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          const FitqaAppbar(),
          FitqaWorkoutAreaFilter(
            onSelectionChanged: (selectedFilter) {
              feedbackFilterController.update(selectedFilter);
            },
          ),
          feedbacks.maybeWhen(
              success: (feedbacks) => _buildFeedbackListView(
                  context, feedbacks, feedbackTokenController),
              error: (err) => Center(
                    child: Text(err.toString()),
                  ),
              orElse: () => const Expanded(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  ))
        ]));
  }

  Widget _buildFeedbackListView(
      final BuildContext context,
      List<FitqaFeedback> feedbacks,
      StateController<String> feedbackTokenController) {
    return Expanded(
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 8),
        itemCount: feedbacks.length,
        itemBuilder: (context, index) => FeedbackListViewItem(
          feedback: feedbacks[index],
          onPressed: () {
            feedbackTokenController.state = feedbacks[index].feedbackToken;

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ScreenFeedbackDetail()),
            );
          },
        ),
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
