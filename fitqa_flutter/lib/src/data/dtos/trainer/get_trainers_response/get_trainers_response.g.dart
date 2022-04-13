// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_trainers_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetTrainersResponse _$$_GetTrainersResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetTrainersResponse(
      result: json['result'] as String,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Trainer.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String?,
      errorCode: json['errorCode'] as String?,
    );

Map<String, dynamic> _$$_GetTrainersResponseToJson(
        _$_GetTrainersResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'data': instance.data,
      'message': instance.message,
      'errorCode': instance.errorCode,
    };
