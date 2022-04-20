// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trainer_sns.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TrainerSns _$$_TrainerSnsFromJson(Map<String, dynamic> json) =>
    _$_TrainerSns(
      snsType: $enumDecode(_$SnsTypeEnumMap, json['snsType']),
      snsUrl: json['snsUrl'] as String,
      snsTitle: json['snsTitle'] as String,
    );

Map<String, dynamic> _$$_TrainerSnsToJson(_$_TrainerSns instance) =>
    <String, dynamic>{
      'snsType': _$SnsTypeEnumMap[instance.snsType],
      'snsUrl': instance.snsUrl,
      'snsTitle': instance.snsTitle,
    };

const _$SnsTypeEnumMap = {
  SnsType.facebook: 'FACEBOOK',
  SnsType.instagram: 'INSTAGRAM',
  SnsType.youtube: 'YOUTUBE',
};
