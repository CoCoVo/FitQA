// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FeedbackComment _$$_FeedbackCommentFromJson(Map<String, dynamic> json) =>
    _$_FeedbackComment(
      writer: json['writer'] as String,
      comment: json['comment'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_FeedbackCommentToJson(_$_FeedbackComment instance) =>
    <String, dynamic>{
      'writer': instance.writer,
      'comment': instance.comment,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
