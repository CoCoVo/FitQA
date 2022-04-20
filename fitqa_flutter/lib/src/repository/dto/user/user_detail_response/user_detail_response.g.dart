// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDetailResponse _$$_UserDetailResponseFromJson(
        Map<String, dynamic> json) =>
    _$_UserDetailResponse(
      result: json['result'] as String,
      data: json['data'] == null
          ? null
          : User.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
      errorCode: json['errorCode'] as String?,
    );

Map<String, dynamic> _$$_UserDetailResponseToJson(
        _$_UserDetailResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'data': instance.data,
      'message': instance.message,
      'errorCode': instance.errorCode,
    };
