import 'package:fitqa/src/domain/entities/trainer/trainer/trainer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trainer_detail_response.g.dart';

part 'trainer_detail_response.freezed.dart';

@freezed
abstract class TrainerDetailResponse with _$TrainerDetailResponse {
  const factory TrainerDetailResponse(
      {required String result,
      Trainer? data,
      String? message,
      String? errorCode}) = _TrainerDetailResponse;

  factory TrainerDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$TrainerDetailResponseFromJson(json);
}
