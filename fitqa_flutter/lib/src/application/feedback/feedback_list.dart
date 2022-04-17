import 'package:fitqa/src/application/state/state.dart';
import 'package:fitqa/src/domain/command/feedback/register_feedback/register_feedback.dart';
import 'package:fitqa/src/domain/entities/common/enum/common_eunm.dart';
import 'package:fitqa/src/domain/entities/feedback/fitqa_feedback/fitqa_feedback.dart';
import 'package:fitqa/src/domain/services/feedback/feedback_service.dart';
import 'package:fitqa/src/domain/services/feedback/feedback_service_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final feedbackListProvider =
    StateNotifierProvider<FeedbackListNotifier, State<List<FitqaFeedback>>>(
        (ref) {
  final feedbackService = ref.watch(feedbackServiceProvider);
  return FeedbackListNotifier(feedbackService);
});

class FeedbackListNotifier extends StateNotifier<State<List<FitqaFeedback>>> {
  FeedbackListNotifier(this.feedbackService) : super(const State.init()) {
    getFeedbackList();
  }

  FeedbackService feedbackService;

  void getFeedbackList() async {
    try {
      state = const State.loading();
      final feedback = await feedbackService.getFeedbackAll();
      state = State.success(feedback);
    } on Exception catch (e) {
      state = State.error(e);
    }
  }

  void registerFeedback(
      String ownerToken,
      String trainerToken,
      WorkOutArea area,
      int price,
      String title,
      String content,
      bool locked) async {
    try {
      state = const State.loading();
      await feedbackService.registerFeedback(RegisterFeedback(
          ownerToken: ownerToken,
          trainerToken: trainerToken,
          interestArea: area.name.toUpperCase(),
          price: price,
          title: title,
          content: content,
          locked: locked));
      getFeedbackList();
    } on Exception catch (e) {
      state = State.error(e);
    }
  }
}