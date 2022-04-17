import 'package:freezed_annotation/freezed_annotation.dart';

part 'feedback_comment.freezed.dart';
part 'feedback_comment.g.dart';

@freezed
abstract class FeedbackComment with _$FeedbackComment {
  const factory FeedbackComment({
    required String writer,
    required String comment,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _FeedbackComment;

  factory FeedbackComment.fromJson(Map<String, dynamic> json) =>
      _$FeedbackCommentFromJson(json);
}
