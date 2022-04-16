import 'package:freezed_annotation/freezed_annotation.dart';

part 'trainer_image.freezed.dart';

part 'trainer_image.g.dart';

@freezed
abstract class TrainerImage with _$TrainerImage {
  const factory TrainerImage({
    required String imageUrl,
    required ImageType imageType,
  }) = _TrainerImage;

  factory TrainerImage.fromJson(Map<String, dynamic> json) =>
      _$TrainerImageFromJson(json);
}

enum ImageType {
  @JsonValue("BACKGROUND")
  background,
  @JsonValue("GALLERY")
  gallery,
  @JsonValue("PROFILE")
  profile,
}

extension Converter on ImageType {
  String toStringType() {
    switch (this) {
      case ImageType.background:
        return '배경';
      case ImageType.gallery:
        return '갤러리';
      case ImageType.profile:
        return '프로필';
    }
  }
}
