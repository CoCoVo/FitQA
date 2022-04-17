// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trainer_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TrainerListResponse _$$_TrainerListResponseFromJson(
        Map<String, dynamic> json) =>
    _$_TrainerListResponse(
      result: json['result'] as String,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Trainer.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String?,
      errorCode: json['errorCode'] as String?,
    );

Map<String, dynamic> _$$_TrainerListResponseToJson(
        _$_TrainerListResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'data': instance.data,
      'message': instance.message,
      'errorCode': instance.errorCode,
    };
