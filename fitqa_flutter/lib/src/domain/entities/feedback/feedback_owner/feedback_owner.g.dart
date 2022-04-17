// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_owner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FeedbackOwner _$$_FeedbackOwnerFromJson(Map<String, dynamic> json) =>
    _$_FeedbackOwner(
      userToken: json['userToken'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      photoURL: json['photoURL'] as String,
      workOutStyle: json['workOutStyle'] as String?,
      workOutLevel: json['workOutLevel'] as String?,
      gender: json['gender'] as String?,
      provider: json['provider'] as String?,
    );

Map<String, dynamic> _$$_FeedbackOwnerToJson(_$_FeedbackOwner instance) =>
    <String, dynamic>{
      'userToken': instance.userToken,
      'name': instance.name,
      'email': instance.email,
      'photoURL': instance.photoURL,
      'workOutStyle': instance.workOutStyle,
      'workOutLevel': instance.workOutLevel,
      'gender': instance.gender,
      'provider': instance.provider,
    };
