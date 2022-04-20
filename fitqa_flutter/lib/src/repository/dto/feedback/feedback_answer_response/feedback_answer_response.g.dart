// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_answer_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FeedbackAnswerResponse _$$_FeedbackAnswerResponseFromJson(
        Map<String, dynamic> json) =>
    _$_FeedbackAnswerResponse(
      result: json['result'] as String,
      data: json['data'] == null
          ? null
          : FeedbackAnswer.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
      errorCode: json['errorCode'] as String?,
    );

Map<String, dynamic> _$$_FeedbackAnswerResponseToJson(
        _$_FeedbackAnswerResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'data': instance.data,
      'message': instance.message,
      'errorCode': instance.errorCode,
    };
