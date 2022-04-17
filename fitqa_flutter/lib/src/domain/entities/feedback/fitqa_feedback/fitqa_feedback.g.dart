// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fitqa_feedback.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FitqaFeedback _$$_FitqaFeedbackFromJson(Map<String, dynamic> json) =>
    _$_FitqaFeedback(
      feedbackToken: json['feedbackToken'] as String,
      ownerToken: json['ownerToken'] as String,
      trainerToken: json['trainerToken'] as String,
      interestArea: $enumDecode(_$WorkOutAreaEnumMap, json['interestArea']),
      price: json['price'] as int,
      title: json['title'] as String,
      content: json['content'] as String,
      locked: json['locked'] as bool,
      answer: json['answer'] == null
          ? null
          : FeedbackAnswer.fromJson(json['answer'] as Map<String, dynamic>),
      comments: (json['comments'] as List<dynamic>)
          .map((e) => FeedbackComment.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: $enumDecode(_$FeedbackStatusEnumMap, json['status']),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_FitqaFeedbackToJson(_$_FitqaFeedback instance) =>
    <String, dynamic>{
      'feedbackToken': instance.feedbackToken,
      'ownerToken': instance.ownerToken,
      'trainerToken': instance.trainerToken,
      'interestArea': _$WorkOutAreaEnumMap[instance.interestArea],
      'price': instance.price,
      'title': instance.title,
      'content': instance.content,
      'locked': instance.locked,
      'answer': instance.answer,
      'comments': instance.comments,
      'status': _$FeedbackStatusEnumMap[instance.status],
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$WorkOutAreaEnumMap = {
  WorkOutArea.all: 'all',
  WorkOutArea.none: 'none',
  WorkOutArea.lower: 'LOWER',
  WorkOutArea.back: 'BACK',
  WorkOutArea.chest: 'CHEST',
  WorkOutArea.shoulder: 'SHOULDER',
  WorkOutArea.arm: 'ARM',
};

const _$FeedbackStatusEnumMap = {
  FeedbackStatus.prepare: 'PREPARE',
  FeedbackStatus.complete: 'COMPLETE',
};
