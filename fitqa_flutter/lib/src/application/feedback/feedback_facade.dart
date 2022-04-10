import 'package:fitqa/src/domain/entities/feedback/feedback.dart';
import 'package:fitqa/src/domain/services/feedback/feedback_service.dart';
import 'package:fitqa/src/domain/services/feedback/feedback_service_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FeedbackFacade {
  final FeedbackService feedbackService;

  FeedbackFacade(this.feedbackService);

  Future<List<Feedback>> getFeedbacks() {
    return feedbackService.getFeedbacks();
  }
}

final feedbackFacadeProvider = Provider<FeedbackFacade>((ref) {
  final feedbackService = ref.watch(feedbackServiceProvider);
  return FeedbackFacade(feedbackService);
});
