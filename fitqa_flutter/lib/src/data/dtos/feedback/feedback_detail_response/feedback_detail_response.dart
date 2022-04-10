import 'package:fitqa/src/domain/entities/feedback/feedback/feedback.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'feedback_detail_response.freezed.dart';
part 'feedback_detail_response.g.dart';

@freezed
abstract class FeedbackDetailResponse with _$FeedbackDetailResponse {
  const factory FeedbackDetailResponse(
      {required String result,
      Feedback? data,
      String? message,
      String? errorCode}) = _FeedbackDetailResponse;

  factory FeedbackDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$FeedbackDetailResponseFromJson(json);
}
