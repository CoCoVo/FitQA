// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_feedback.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterFeedback _$$_RegisterFeedbackFromJson(Map<String, dynamic> json) =>
    _$_RegisterFeedback(
      ownerToken: json['ownerToken'] as String,
      trainerToken: json['trainerToken'] as String,
      interestArea: json['interestArea'] as String,
      price: json['price'] as int,
      title: json['title'] as String,
      content: json['content'] as String,
      locked: json['locked'] as bool,
    );

Map<String, dynamic> _$$_RegisterFeedbackToJson(_$_RegisterFeedback instance) =>
    <String, dynamic>{
      'ownerToken': instance.ownerToken,
      'trainerToken': instance.trainerToken,
      'interestArea': instance.interestArea,
      'price': instance.price,
      'title': instance.title,
      'content': instance.content,
      'locked': instance.locked,
    };
