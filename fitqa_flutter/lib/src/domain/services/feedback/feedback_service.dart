import 'package:fitqa/src/domain/entities/feedback/fitqa_feedback/fitqa_feedback.dart';

abstract class FeedbackService {
  Future<FitqaFeedback> getFeedbackDetail(String feedbackToken);
  Future<List<FitqaFeedback>> getFeedbackAll();
}
