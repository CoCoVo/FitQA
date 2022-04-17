// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_trainer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FeedbackTrainer _$$_FeedbackTrainerFromJson(Map<String, dynamic> json) =>
    _$_FeedbackTrainer(
      trainerToken: json['trainerToken'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      style: json['style'] as String,
      introduceTitle: json['introduceTitle'] as String,
      introduceContext: json['introduceContext'] as String,
      representativeCareer: json['representativeCareer'] as String,
      representativeFootprints: json['representativeFootprints'] as String,
      likesCount: json['likesCount'] as int,
      images: (json['images'] as List<dynamic>)
          .map((e) => FeedbackTrainerImage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FeedbackTrainerToJson(_$_FeedbackTrainer instance) =>
    <String, dynamic>{
      'trainerToken': instance.trainerToken,
      'name': instance.name,
      'email': instance.email,
      'style': instance.style,
      'introduceTitle': instance.introduceTitle,
      'introduceContext': instance.introduceContext,
      'representativeCareer': instance.representativeCareer,
      'representativeFootprints': instance.representativeFootprints,
      'likesCount': instance.likesCount,
      'images': instance.images,
    };
