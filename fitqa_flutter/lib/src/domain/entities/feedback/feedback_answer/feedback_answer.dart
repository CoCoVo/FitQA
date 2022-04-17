import 'package:freezed_annotation/freezed_annotation.dart';

part 'feedback_answer.freezed.dart';
part 'feedback_answer.g.dart';

@freezed
abstract class FeedbackAnswer with _$FeedbackAnswer {
  const factory FeedbackAnswer({
    required String videoUrl,
    required String description,
  }) = _FeedbackAnswer;

  factory FeedbackAnswer.fromJson(Map<String, dynamic> json) =>
      _$FeedbackAnswerFromJson(json);
}
