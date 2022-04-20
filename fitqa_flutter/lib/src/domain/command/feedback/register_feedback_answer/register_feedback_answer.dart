import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_feedback_answer.freezed.dart';
part 'register_feedback_answer.g.dart';

@freezed
abstract class RegisterFeedbackAnswer with _$RegisterFeedbackAnswer {
  const factory RegisterFeedbackAnswer({
    required String trainerToken,
    required String videoUrl,
    required String description,
  }) = _RegisterFeedbackAnswer;

  factory RegisterFeedbackAnswer.fromJson(Map<String, dynamic> json) =>
      _$RegisterFeedbackAnswerFromJson(json);
}
