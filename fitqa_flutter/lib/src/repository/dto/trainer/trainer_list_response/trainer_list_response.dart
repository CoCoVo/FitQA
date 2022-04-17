import 'package:fitqa/src/domain/entities/trainer/trainer/trainer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trainer_list_response.g.dart';

part 'trainer_list_response.freezed.dart';

@freezed
abstract class TrainerListResponse with _$TrainerListResponse {
  const factory TrainerListResponse(
      {required String result,
      List<Trainer>? data,
      String? message,
      String? errorCode}) = _TrainerListResponse;

  factory TrainerListResponse.fromJson(Map<String, dynamic> json) =>
      _$TrainerListResponseFromJson(json);
}
