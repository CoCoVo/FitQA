import 'package:freezed_annotation/freezed_annotation.dart';

part 'feedback_comment.freezed.dart';
part 'feedback_comment.g.dart';

@freezed
abstract class FeedbackComment with _$FeedbackComment {
  const factory FeedbackComment({
    required String feedbackCommentToken,
    required String writer,
    required String content,
  }) = _FeedbackComment;

  factory FeedbackComment.fromJson(Map<String, dynamic> json) =>
      _$FeedbackCommentFromJson(json);
}
