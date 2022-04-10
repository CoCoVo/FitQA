import 'package:fitqa/src/domain/entities/feedback/feedback.dart';

abstract class FeedbackService {
  Future<List<Feedback>> getFeedbacks();
}
