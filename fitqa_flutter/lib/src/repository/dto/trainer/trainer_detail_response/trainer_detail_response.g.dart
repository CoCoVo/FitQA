// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trainer_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TrainerDetailResponse _$$_TrainerDetailResponseFromJson(
        Map<String, dynamic> json) =>
    _$_TrainerDetailResponse(
      result: json['result'] as String,
      data: json['data'] == null
          ? null
          : Trainer.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
      errorCode: json['errorCode'] as String?,
    );

Map<String, dynamic> _$$_TrainerDetailResponseToJson(
        _$_TrainerDetailResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'data': instance.data,
      'message': instance.message,
      'errorCode': instance.errorCode,
    };
