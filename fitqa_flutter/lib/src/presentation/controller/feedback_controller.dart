import 'package:dio/dio.dart';
import 'package:fitqa/src/application/feedback/feedback_facade.dart';
import 'package:fitqa/src/common/exceptions.dart';
import 'package:fitqa/src/domain/entities/feedback/feedback.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FeedbackController extends StateNotifier<AsyncValue<List<Feedback>>> {
  FeedbackController(this.feedbackFacade) : super(const AsyncValue.loading()) {
    getFeedbacks();
  }

  final FeedbackFacade feedbackFacade;

  Future<void> getFeedbacks() async {
    try {
      state = const AsyncValue.loading();
      final feedbacks = await feedbackFacade.getFeedbacks();
      state = AsyncValue.data(feedbacks);
    } on DioError catch (error) {
      throw DataException.fromDioError(error);
    }
  }
}

final feedbackControllerProvider = StateNotifierProvider.autoDispose<
    FeedbackController, AsyncValue<List<Feedback>>>((ref) {
  final trainerFacade = ref.watch(feedbackFacadeProvider);
  return FeedbackController(trainerFacade);
});
