import 'package:fitqa/src/domain/entities/feedback/feedback_comment/feedback_comment.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'feedback.freezed.dart';
part 'feedback.g.dart';

@freezed
abstract class Feedback with _$Feedback {
  const factory Feedback(
      {required String feedbackToken,
      required String ownerId,
      required String trainerId,
      required int price,
      required String title,
      required String content,
      required bool locked,
      required List<FeedbackComment> feedbackComments,
      required String status}) = _Feedback;

  factory Feedback.fromJson(Map<String, dynamic> json) =>
      _$FeedbackFromJson(json);
}
