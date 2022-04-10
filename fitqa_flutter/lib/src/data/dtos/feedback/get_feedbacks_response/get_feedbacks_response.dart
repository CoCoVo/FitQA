import 'package:fitqa/src/domain/entities/feedback/feedback.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_feedbacks_response.freezed.dart';
part 'get_feedbacks_response.g.dart';

@freezed
abstract class GetFeedbacksResponse with _$GetFeedbacksResponse {
  const factory GetFeedbacksResponse(
      {required String result,
      List<Feedback>? data,
      String? message,
      String? errorCode}) = _GetFeedbacksResponse;

  factory GetFeedbacksResponse.fromJson(Map<String, dynamic> json) =>
      _$GetFeedbacksResponseFromJson(json);
}
