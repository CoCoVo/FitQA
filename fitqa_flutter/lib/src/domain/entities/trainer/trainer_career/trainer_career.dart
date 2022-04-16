import 'package:freezed_annotation/freezed_annotation.dart';

part 'trainer_career.freezed.dart';

part 'trainer_career.g.dart';

@freezed
abstract class TrainerCareer with _$TrainerCareer {
  const factory TrainerCareer({
    required String description,
    required CareerType type,
  }) = _TrainerCareer;

  factory TrainerCareer.fromJson(Map<String, dynamic> json) =>
      _$TrainerCareerFromJson(json);
}

enum CareerType {
  @JsonValue("CAREER")
  career,
  @JsonValue("LICENSE")
  license,
}
