// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FeedbackDetailResponse _$$_FeedbackDetailResponseFromJson(
        Map<String, dynamic> json) =>
    _$_FeedbackDetailResponse(
      result: json['result'] as String,
      data: json['data'] == null
          ? null
          : Feedback.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
      errorCode: json['errorCode'] as String?,
    );

Map<String, dynamic> _$$_FeedbackDetailResponseToJson(
        _$_FeedbackDetailResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'data': instance.data,
      'message': instance.message,
      'errorCode': instance.errorCode,
    };
