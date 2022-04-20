import 'package:fitqa/src/domain/entities/feedback/feedback_answer/feedback_answer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'feedback_answer_response.freezed.dart';
part 'feedback_answer_response.g.dart';

@freezed
abstract class FeedbackAnswerResponse with _$FeedbackAnswerResponse {
  const factory FeedbackAnswerResponse(
      {required String result,
      FeedbackAnswer? data,
      String? message,
      String? errorCode}) = _FeedbackAnswerResponse;

  factory FeedbackAnswerResponse.fromJson(Map<String, dynamic> json) =>
      _$FeedbackAnswerResponseFromJson(json);
}
