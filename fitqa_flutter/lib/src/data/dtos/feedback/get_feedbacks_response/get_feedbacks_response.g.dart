// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_feedbacks_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetFeedbacksResponse _$$_GetFeedbacksResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetFeedbacksResponse(
      result: json['result'] as String,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Feedback.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String?,
      errorCode: json['errorCode'] as String?,
    );

Map<String, dynamic> _$$_GetFeedbacksResponseToJson(
        _$_GetFeedbacksResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'data': instance.data,
      'message': instance.message,
      'errorCode': instance.errorCode,
    };
