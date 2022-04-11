import 'package:fitqa/src/domain/entities/feedback/feedback/feedback.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final selectedFeedbackDetailToken = StateProvider<String>((ref) => "");

final feedbackDetailProvider =
    StateNotifierProvider<FeedbackDetailNotifier, Feedback>((ref) {
  return FeedbackDetailNotifier();
});

class FeedbackDetailNotifier extends StateNotifier<Feedback> {
  FeedbackDetailNotifier()
      : super(const Feedback(
            feedbackToken: "",
            ownerId: "",
            trainerId: "",
            price: 0,
            title: "",
            content: "",
            locked: false,
            status: ""));

  void addComment(String comment) {
    state = state.copyWith(title: comment);
  }
}
