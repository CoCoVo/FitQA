// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trainer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Trainer _$$_TrainerFromJson(Map<String, dynamic> json) => _$_Trainer(
      trainerToken: json['trainerToken'] as String,
      name: json['name'] as String,
      style: json['style'] as String,
      introduceTitle: json['introduceTitle'] as String,
      introduceContext: json['introduceContext'] as String,
      likesCount: json['likesCount'] as int,
      images: (json['images'] as List<dynamic>)
          .map((e) => TrainerImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      careers: (json['careers'] as List<dynamic>)
          .map((e) => TrainerCareer.fromJson(e as Map<String, dynamic>))
          .toList(),
      feedbackPrices: (json['feedbackPrices'] as List<dynamic>)
          .map((e) => TrainerFeedbackPrice.fromJson(e as Map<String, dynamic>))
          .toList(),
      interestAreas: (json['interestAreas'] as List<dynamic>)
          .map((e) => TrainerInterestArea.fromJson(e as Map<String, dynamic>))
          .toList(),
      sns: (json['sns'] as List<dynamic>)
          .map((e) => TrainerSns.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TrainerToJson(_$_Trainer instance) =>
    <String, dynamic>{
      'trainerToken': instance.trainerToken,
      'name': instance.name,
      'style': instance.style,
      'introduceTitle': instance.introduceTitle,
      'introduceContext': instance.introduceContext,
      'likesCount': instance.likesCount,
      'images': instance.images,
      'careers': instance.careers,
      'feedbackPrices': instance.feedbackPrices,
      'interestAreas': instance.interestAreas,
      'sns': instance.sns,
    };
