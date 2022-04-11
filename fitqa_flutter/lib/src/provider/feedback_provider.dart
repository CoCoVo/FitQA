import 'package:fitqa/src/data/command/register_feedback/register_feedback.dart';
import 'package:fitqa/src/data/command/register_feedback_comment/register_feedback_comment.dart';
import 'package:fitqa/src/domain/entities/feedback/feedback/feedback.dart';
import 'package:fitqa/src/repository/feedback_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final feedbackListProvider = FutureProvider<List<Feedback>>((ref) async {
  final feedbacks = ref.read(feedbackRepositoryProvider).getFeedbacks();
  return feedbacks;
});

final feedbackDetailProvider =
    FutureProvider.family<Feedback, String>((ref, feedbackToken) async {
  final feedback =
      ref.read(feedbackRepositoryProvider).getFeedbackByToken(feedbackToken);
  return feedback;
});

final commentProvider = StateProvider((ref) => "");
final registerFeedbackCommentProvider =
    FutureProvider.family<Feedback, String>((ref, feedbackToken) async {
  final comment = ref.watch(commentProvider);
  final response = ref.read(feedbackRepositoryProvider).writeComment(
      RegisterFeedbackComment(
          feedbackToken: feedbackToken, writerId: "1", comment: comment));
  return response;
});

final registerFeedbackProvider =
    FutureProvider.family<Feedback, RegisterFeedback>((ref, req) async {
  final response = ref.read(feedbackRepositoryProvider).registerFeedback(req);
  return response;
});
