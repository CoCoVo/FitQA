import 'package:fitqa/src/domain/entities/feedback/feedback_comment/feedback_comment.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fitqa_feedback.freezed.dart';
part 'fitqa_feedback.g.dart';

@freezed
abstract class FitqaFeedback with _$FitqaFeedback {
  const factory FitqaFeedback(
      {required String feedbackToken,
      required String ownerId,
      required String trainerId,
      required int price,
      required String title,
      required String content,
      required bool locked,
      required List<FeedbackComment> comments,
      required String status}) = _FitqaFeedback;

  factory FitqaFeedback.fromJson(Map<String, dynamic> json) =>
      _$FitqaFeedbackFromJson(json);
}
