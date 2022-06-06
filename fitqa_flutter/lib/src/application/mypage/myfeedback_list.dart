import 'package:fitqa/src/application/filtering/filter_notifier.dart';
import 'package:fitqa/src/application/state/state.dart';
import 'package:fitqa/src/domain/command/feedback/register_feedback/register_feedback.dart';
import 'package:fitqa/src/domain/entities/common/enum/workout_area.dart';
import 'package:fitqa/src/domain/entities/feedback/fitqa_feedback/fitqa_feedback.dart';
import 'package:fitqa/src/domain/services/feedback/feedback_service.dart';
import 'package:fitqa/src/domain/services/feedback/feedback_service_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final myFeedbackListProvider =
    StateNotifierProvider<MyFeedbackListNotifier, State<List<FitqaFeedback>>>(
        (ref) {
  final feedbackService = ref.watch(feedbackServiceProvider);
  final filters = ref.watch(feedbackFilterProvider);
  return MyFeedbackListNotifier(feedbackService, filters);
});

final feedbackFilterProvider =
    StateNotifierProvider<FilterNotifier, List<WorkOutArea>>((ref) {
  return FilterNotifier();
});

class MyFeedbackListNotifier extends StateNotifier<State<List<FitqaFeedback>>> {
  MyFeedbackListNotifier(this.feedbackService, this.filters)
      : super(const State.init()) {
    getFeedbackList();
  }

  FeedbackService feedbackService;
  List<WorkOutArea> filters;

  void getFeedbackList() async {
    try {
      state = const State.loading();
      final feedbacks = await feedbackService.getFeedbackAll();
      final filteredFeedbacks =
          feedbacks.where((feedback) => _feedbackFilter(feedback)).toList();
      state = State.success(filteredFeedbacks);
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

  bool _feedbackFilter(FitqaFeedback feedback) {
    if (filters.contains(WorkOutArea.all)) return true;
    if (feedback.locked) return false;
    if (filters.contains(feedback.interestArea)) return true;
    return false;
  }
}
