import 'package:freezed_annotation/freezed_annotation.dart';

part 'feedback_trainer_image.freezed.dart';
part 'feedback_trainer_image.g.dart';

@freezed
abstract class FeedbackTrainerImage with _$FeedbackTrainerImage {
  const factory FeedbackTrainerImage({
    required String imageUrl,
    required String imageType,
  }) = _FeedbackTrainerImage;

  factory FeedbackTrainerImage.fromJson(Map<String, dynamic> json) =>
      _$FeedbackTrainerImageFromJson(json);
}
