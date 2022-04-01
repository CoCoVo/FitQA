import 'package:freezed_annotation/freezed_annotation.dart';

part 'trainer_image.freezed.dart';

part 'trainer_image.g.dart';

@freezed
abstract class TrainerImage with _$TrainerImage {
  const factory TrainerImage({
    required String imageUrl,
    required String imageType,
  }) = _TrainerImage;

  factory TrainerImage.fromJson(Map<String, dynamic> json) =>
      _$TrainerImageFromJson(json);
}
