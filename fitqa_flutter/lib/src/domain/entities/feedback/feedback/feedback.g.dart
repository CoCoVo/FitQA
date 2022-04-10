// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Feedback _$$_FeedbackFromJson(Map<String, dynamic> json) => _$_Feedback(
      feedbackToken: json['feedbackToken'] as String,
      ownerId: json['ownerId'] as String,
      trainerId: json['trainerId'] as String,
      price: json['price'] as int,
      title: json['title'] as String,
      content: json['content'] as String,
      locked: json['locked'] as bool,
      status: json['status'] as String,
    );

Map<String, dynamic> _$$_FeedbackToJson(_$_Feedback instance) =>
    <String, dynamic>{
      'feedbackToken': instance.feedbackToken,
      'ownerId': instance.ownerId,
      'trainerId': instance.trainerId,
      'price': instance.price,
      'title': instance.title,
      'content': instance.content,
      'locked': instance.locked,
      'status': instance.status,
    };
