import 'package:fitqa/src/domain/entities/feedback/feedback/feedback.dart';
import 'package:fitqa/src/repository/feedback_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final feedbackListProvider = FutureProvider<List<Feedback>>((ref) async {
  final feedbacks = ref.read(feedbackRepositoryProvider).getFeedbacks();
  return feedbacks;
});
