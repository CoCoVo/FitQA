import 'package:fitqa/src/domain/entities/feedback/feedback/feedback.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'feedback_list_response.freezed.dart';
part 'feedback_list_response.g.dart';

@freezed
abstract class FeedbackListResponse with _$FeedbackListResponse {
  const factory FeedbackListResponse(
      {required String result,
      List<Feedback>? data,
      String? message,
      String? errorCode}) = _FeedbackListResponse;

  factory FeedbackListResponse.fromJson(Map<String, dynamic> json) =>
      _$FeedbackListResponseFromJson(json);
}
