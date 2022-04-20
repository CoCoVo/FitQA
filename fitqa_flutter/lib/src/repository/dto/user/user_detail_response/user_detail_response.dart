import 'package:fitqa/src/domain/entities/user/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_detail_response.freezed.dart';
part 'user_detail_response.g.dart';

@freezed
abstract class UserDetailResponse with _$UserDetailResponse {
  const factory UserDetailResponse(
      {required String result,
      User? data,
      String? message,
      String? errorCode}) = _UserDetailResponse;

  factory UserDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$UserDetailResponseFromJson(json);
}
