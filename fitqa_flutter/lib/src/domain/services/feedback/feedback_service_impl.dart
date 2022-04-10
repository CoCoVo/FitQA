import 'package:fitqa/src/data/repositories/fitqa_repository.dart';
import 'package:fitqa/src/domain/entities/feedback/feedback.dart';
import 'package:fitqa/src/domain/services/feedback/feedback_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FeedbackServiceImpl implements FeedbackService {
  final FitQaRepository fitQaRepository;

  FeedbackServiceImpl(this.fitQaRepository);

  @override
  Future<List<Feedback>> getFeedbacks() {
    return fitQaRepository.getFeedbacks();
  }
}

final feedbackServiceProvider = Provider<FeedbackServiceImpl>((ref) {
  final fitQaRepository = ref.watch(fitQaRepositoryProvider);
  return FeedbackServiceImpl(fitQaRepository);
});
