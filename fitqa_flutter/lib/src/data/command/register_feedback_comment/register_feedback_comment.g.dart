// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_feedback_comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterFeedbackComment _$$_RegisterFeedbackCommentFromJson(
        Map<String, dynamic> json) =>
    _$_RegisterFeedbackComment(
      feedbackToken: json['feedbackToken'] as String,
      writerId: json['writerId'] as String,
      comment: json['comment'] as String,
    );

Map<String, dynamic> _$$_RegisterFeedbackCommentToJson(
        _$_RegisterFeedbackComment instance) =>
    <String, dynamic>{
      'feedbackToken': instance.feedbackToken,
      'writerId': instance.writerId,
      'comment': instance.comment,
    };
