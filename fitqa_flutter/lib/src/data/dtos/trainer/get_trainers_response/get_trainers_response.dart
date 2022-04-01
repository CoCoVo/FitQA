import 'package:fitqa/src/domain/entities/trainer/trainer/trainer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_trainers_response.g.dart';

part 'get_trainers_response.freezed.dart';

@freezed
abstract class GetTrainersResponse with _$GetTrainersResponse {
  const factory GetTrainersResponse(
      {required String result,
      List<Trainer>? data,
      String? message,
      String? errorCode}) = _GetTrainersResponse;

  factory GetTrainersResponse.fromJson(Map<String, dynamic> json) =>
      _$GetTrainersResponseFromJson(json);
}
