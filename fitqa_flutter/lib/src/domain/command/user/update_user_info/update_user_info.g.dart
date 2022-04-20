// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdateUserInfo _$$_UpdateUserInfoFromJson(Map<String, dynamic> json) =>
    _$_UpdateUserInfo(
      name: json['name'] as String,
      birthDay: json['birthDay'] as String,
      height: json['height'] as int,
      weight: json['weight'] as int,
      bodyPatPercentage: (json['bodyPatPercentage'] as num).toDouble(),
      muscleMass: (json['muscleMass'] as num).toDouble(),
      workOutStyle: $enumDecode(_$WorkOutStyleEnumMap, json['workOutStyle']),
      workOutLevel: $enumDecode(_$WorkoutLevelEnumMap, json['workOutLevel']),
    );

Map<String, dynamic> _$$_UpdateUserInfoToJson(_$_UpdateUserInfo instance) =>
    <String, dynamic>{
      'name': instance.name,
      'birthDay': instance.birthDay,
      'height': instance.height,
      'weight': instance.weight,
      'bodyPatPercentage': instance.bodyPatPercentage,
      'muscleMass': instance.muscleMass,
      'workOutStyle': _$WorkOutStyleEnumMap[instance.workOutStyle],
      'workOutLevel': _$WorkoutLevelEnumMap[instance.workOutLevel],
    };

const _$WorkOutStyleEnumMap = {
  WorkOutStyle.none: 'NONE',
  WorkOutStyle.bodyBuilding: 'BODY_BUILDING',
  WorkOutStyle.diet: 'DIET',
};

const _$WorkoutLevelEnumMap = {
  WorkoutLevel.beginner: 'BEGINNER',
  WorkoutLevel.intermediate: 'INTERMEDIATE',
  WorkoutLevel.senior: 'SENIOR',
  WorkoutLevel.superman: 'SUPER',
};
