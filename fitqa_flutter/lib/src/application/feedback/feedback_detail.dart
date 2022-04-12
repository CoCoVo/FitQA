import 'package:fitqa/src/application/state/state.dart';
import 'package:fitqa/src/domain/entities/feedback/feedback/feedback.dart';
import 'package:fitqa/src/domain/services/feedback/feedback_service.dart';
import 'package:fitqa/src/domain/services/feedback/feedback_service_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// selected feedback token to show details.
final selectedFeedbackDetailToken = StateProvider<String>((ref) => "");

final feedbackDetailProvider =
    StateNotifierProvider<FeedbackDetailNotifier, State<Feedback>>((ref) {
  final feedbackService = ref.watch(feedbackServiceProvider);
  return FeedbackDetailNotifier(feedbackService);
});

class FeedbackDetailNotifier extends StateNotifier<State<Feedback>> {
  FeedbackDetailNotifier(this.feedbackService) : super(const State.init());
  FeedbackService feedbackService;

  void getFeedback(String feedbackToken) async {
    try {
      state = const State.loading();
      final feedback = await feedbackService.getFeedbackDetail(feedbackToken);
      state = State.success(feedback);
    } on Exception catch (e) {
      state = State.error(e);
    }
  }
}