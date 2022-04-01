import 'package:freezed_annotation/freezed_annotation.dart';

part 'trainer_career.freezed.dart';

part 'trainer_career.g.dart';

@freezed
abstract class TrainerCareer with _$TrainerCareer {
  const factory TrainerCareer({
    required int contestId,
    required String awards,
  }) = _TrainerCareer;

  factory TrainerCareer.fromJson(Map<String, dynamic> json) =>
      _$TrainerCareerFromJson(json);
}
