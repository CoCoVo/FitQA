import 'package:fitqa/src/domain/entities/common/enum/common_eunm.dart';
import 'package:fitqa/src/domain/entities/feedback/feedback_answer/feedback_answer.dart';
import 'package:fitqa/src/domain/entities/feedback/feedback_comment/feedback_comment.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fitqa_feedback.freezed.dart';
part 'fitqa_feedback.g.dart';

@freezed
abstract class FitqaFeedback with _$FitqaFeedback {
  const factory FitqaFeedback({
    required String feedbackToken,
    required String ownerToken,
    required String trainerToken,
    required WorkOutArea interestArea,
    required int price,
    required String title,
    required String content,
    required bool locked,
    required FeedbackAnswer? answer,
    required List<FeedbackComment> comments,
    required FeedbackStatus status,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _FitqaFeedback;

  factory FitqaFeedback.fromJson(Map<String, dynamic> json) =>
      _$FitqaFeedbackFromJson(json);
}

enum FeedbackStatus {
  @JsonValue("PREPARE")
  prepare,
  @JsonValue("COMPLETE")
  complete,
}

extension Converter on FeedbackStatus {
  String toStringType() {
    switch (this) {
      case FeedbackStatus.prepare:
        return "답변대기";
      case FeedbackStatus.complete:
        return "답변완료";
    }
  }
}
