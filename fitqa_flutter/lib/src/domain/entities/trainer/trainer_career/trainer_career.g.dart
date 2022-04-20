// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trainer_career.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TrainerCareer _$$_TrainerCareerFromJson(Map<String, dynamic> json) =>
    _$_TrainerCareer(
      description: json['description'] as String,
      type: $enumDecode(_$CareerTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$_TrainerCareerToJson(_$_TrainerCareer instance) =>
    <String, dynamic>{
      'description': instance.description,
      'type': _$CareerTypeEnumMap[instance.type],
    };

const _$CareerTypeEnumMap = {
  CareerType.career: 'CAREER',
  CareerType.license: 'LICENSE',
};
