// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FeedbackListResponse _$$_FeedbackListResponseFromJson(
        Map<String, dynamic> json) =>
    _$_FeedbackListResponse(
      result: json['result'] as String,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Feedback.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String?,
      errorCode: json['errorCode'] as String?,
    );

Map<String, dynamic> _$$_FeedbackListResponseToJson(
        _$_FeedbackListResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'data': instance.data,
      'message': instance.message,
      'errorCode': instance.errorCode,
    };
