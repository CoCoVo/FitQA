// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fitqa_feedback.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FitqaFeedback _$$_FitqaFeedbackFromJson(Map<String, dynamic> json) =>
    _$_FitqaFeedback(
      feedbackToken: json['feedbackToken'] as String,
      ownerId: json['ownerId'] as String,
      trainerId: json['trainerId'] as String,
      price: json['price'] as int,
      title: json['title'] as String,
      content: json['content'] as String,
      locked: json['locked'] as bool,
      comments: (json['comments'] as List<dynamic>)
          .map((e) => FeedbackComment.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String,
    );

Map<String, dynamic> _$$_FitqaFeedbackToJson(_$_FitqaFeedback instance) =>
    <String, dynamic>{
      'feedbackToken': instance.feedbackToken,
      'ownerId': instance.ownerId,
      'trainerId': instance.trainerId,
      'price': instance.price,
      'title': instance.title,
      'content': instance.content,
      'locked': instance.locked,
      'comments': instance.comments,
      'status': instance.status,
    };
