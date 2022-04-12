import 'package:fitqa/src/domain/entities/feedback/feedback/feedback.dart';

abstract class FeedbackService {
  Future<Feedback> getFeedbackDetail(String feedbackToken);
  Future<List<Feedback>> getFeedbackAll();
}
