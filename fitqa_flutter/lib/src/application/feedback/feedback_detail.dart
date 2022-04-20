import 'package:fitqa/src/application/feedback/feedback_list.dart';
import 'package:fitqa/src/application/state/state.dart';
import 'package:fitqa/src/domain/command/feedback/register_feedback_answer/register_feedback_answer.dart';
import 'package:fitqa/src/domain/command/feedback/register_feedback_comment/register_feedback_comment.dart';
import 'package:fitqa/src/domain/entities/feedback/fitqa_feedback/fitqa_feedback.dart';
import 'package:fitqa/src/domain/services/feedback/feedback_service.dart';
import 'package:fitqa/src/domain/services/feedback/feedback_service_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// selected feedback token to show details.
final selectedFeedbackTokenProvider = StateProvider<String>((ref) => "");

final feedbackDetailProvider =
    StateNotifierProvider<FeedbackDetailNotifier, State<FitqaFeedback>>((ref) {
  final feedbackService = ref.watch(feedbackServiceProvider);
  final feedbackToken = ref.watch(selectedFeedbackTokenProvider);
  final feedbackListController = ref.watch(feedbackListProvider.notifier);
  return FeedbackDetailNotifier(
      feedbackService, feedbackToken, feedbackListController);
});

class FeedbackDetailNotifier extends StateNotifier<State<FitqaFeedback>> {
  FeedbackDetailNotifier(
      this.feedbackService, this.feedbackToken, this.feedbackListController)
      : super(const State.init()) {
    getFeedbackDetail();
  }

  FeedbackService feedbackService;
  String feedbackToken;
  FeedbackListNotifier feedbackListController;

  void getFeedbackDetail() async {
    try {
      state = const State.loading();
      final feedback = await feedbackService.getFeedbackDetail(feedbackToken);
      state = State.success(feedback);
    } on Exception catch (e) {
      state = State.error(e);
    }
  }

  void addComment(String writerToken, String comment) async {
    try {
      state = const State.loading();
      final feedback = await feedbackService.registerFeedbackComment(
          feedbackToken,
          RegisterFeedbackComment(writerToken: writerToken, comment: comment));
      state = State.success(feedback);
    } on Exception catch (e) {
      state = State.error(e);
    }
  }

  void answer(String trainerToken, String description) async {
    try {
      state = const State.loading();
      await feedbackService.registerFeedbackAnswer(
          feedbackToken,
          RegisterFeedbackAnswer(
              trainerToken: trainerToken,
              videoUrl:
                  'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
              description: description));
    } on Exception catch (e) {
      state = State.error(e);
    }
    getFeedbackDetail();
    feedbackListController.getFeedbackList();
  }
}
