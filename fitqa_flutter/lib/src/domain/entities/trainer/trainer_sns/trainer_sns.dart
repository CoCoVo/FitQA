import 'package:freezed_annotation/freezed_annotation.dart';

part 'trainer_sns.freezed.dart';

part 'trainer_sns.g.dart';

@freezed
abstract class TrainerSns with _$TrainerSns {
  const factory TrainerSns({required SnsType snsType, required String snsUrl, required String snsTitle}) =
      _TrainerSns;

  factory TrainerSns.fromJson(Map<String, dynamic> json) =>
      _$TrainerSnsFromJson(json);
}

enum SnsType {
  @JsonValue("FACEBOOK")
  facebook,
  @JsonValue("INSTAGRAM")
  instagram,
  @JsonValue("YOUTUBE")
  youtube,
}

extension Converter on SnsType {
  String toStringType() {
    switch (this) {
      case SnsType.facebook:
        return '페이스북';
      case SnsType.instagram:
        return '인스타그램';
      case SnsType.youtube:
        return '유튜브';
    }
  }
}
