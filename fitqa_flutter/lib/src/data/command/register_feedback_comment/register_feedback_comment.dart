import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_feedback_comment.freezed.dart';
part 'register_feedback_comment.g.dart';

@freezed
abstract class RegisterFeedbackComment with _$RegisterFeedbackComment {
  const factory RegisterFeedbackComment(
      {required String feedbackToken,
      required String writerId,
      required String comment}) = _RegisterFeedbackComment;

  factory RegisterFeedbackComment.fromJson(Map<String, dynamic> json) =>
      _$RegisterFeedbackCommentFromJson(json);
}
