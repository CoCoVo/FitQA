import 'package:fitqa/src/domain/command/feedback/register_feedback/register_feedback.dart';
import 'package:fitqa/src/domain/command/feedback/register_feedback_answer/register_feedback_answer.dart';
import 'package:fitqa/src/domain/command/feedback/register_feedback_comment/register_feedback_comment.dart';
import 'package:fitqa/src/domain/entities/feedback/fitqa_feedback/fitqa_feedback.dart';
import 'package:fitqa/src/domain/services/feedback/feedback_service.dart';
import 'package:fitqa/src/repository/feedback_repository.dart';
import 'package:fitqa/src/repository/repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final feedbackServiceProvider = Provider<FeedbackService>((ref) {
  final feedbackRepository = ref.read(feedbackRepositoryProvider);
  return FeedbackServiceImpl(feedbackRepository);
});

class FeedbackServiceImpl implements FeedbackService {
  FeedbackServiceImpl(this.repo);
  FeedbackRepository repo;

  @override
  Future<FitqaFeedback> getFeedbackDetail(String feedbackToken) {
    final response = repo.getFeedbackByToken(feedbackToken);
    return response;
  }

  @override
  Future<List<FitqaFeedback>> getFeedbackAll() {
    final response = repo.getFeedbacks();
    return response;
  }

  @override
  Future<FitqaFeedback> registerFeedbackComment(
      String feedbackToken, RegisterFeedbackComment command) {
    final response = repo.registerComment(feedbackToken, command);
    return response;
  }

  @override
  Future<FitqaFeedback> registerFeedback(RegisterFeedback command) {
    final response = repo.registerFeedback(command);
    return response;
  }

  @override
  Future<FitqaFeedback> registerFeedbackAnswer(
      String feedbackToken, RegisterFeedbackAnswer command) {
    final response = repo.registerFeedbackAnswer(feedbackToken, command);
    return response;
  }
}
