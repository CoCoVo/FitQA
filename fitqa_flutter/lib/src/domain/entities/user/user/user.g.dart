// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      userToken: json['userToken'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      photoURL: json['photoURL'] as String,
      workOutStyle: $enumDecode(_$WorkOutStyleEnumMap, json['workOutStyle']),
      workOutLevel: $enumDecode(_$WorkoutLevelEnumMap, json['workOutLevel']),
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
      provider: $enumDecode(_$AccountProviderEnumMap, json['provider']),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'userToken': instance.userToken,
      'name': instance.name,
      'email': instance.email,
      'photoURL': instance.photoURL,
      'workOutStyle': _$WorkOutStyleEnumMap[instance.workOutStyle],
      'workOutLevel': _$WorkoutLevelEnumMap[instance.workOutLevel],
      'gender': _$GenderEnumMap[instance.gender],
      'provider': _$AccountProviderEnumMap[instance.provider],
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

const _$GenderEnumMap = {
  Gender.female: 'FEMALE',
  Gender.male: 'MALE',
};

const _$AccountProviderEnumMap = {
  AccountProvider.google: 'GOOGLE',
  AccountProvider.naver: 'NAVER',
  AccountProvider.kakao: 'KAKAO',
};
