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
}
