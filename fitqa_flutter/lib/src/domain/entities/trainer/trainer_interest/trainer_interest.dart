import 'package:fitqa/src/domain/entities/common/enum/workout_area.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trainer_interest.freezed.dart';
part 'trainer_interest.g.dart';

@freezed
abstract class TrainerInterestArea with _$TrainerInterestArea {
  const factory TrainerInterestArea({required WorkOutArea interestArea}) =
      _TrainerInterest;

  factory TrainerInterestArea.fromJson(Map<String, dynamic> json) =>
      _$TrainerInterestAreaFromJson(json);
}
