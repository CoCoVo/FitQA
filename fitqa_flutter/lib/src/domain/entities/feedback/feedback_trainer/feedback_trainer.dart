import 'package:fitqa/src/domain/entities/feedback/feedback_trainer_image/feedback_trainer_image.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'feedback_trainer.freezed.dart';
part 'feedback_trainer.g.dart';

@freezed
abstract class FeedbackTrainer with _$FeedbackTrainer {
  const factory FeedbackTrainer({
    required String trainerToken,
    required String name,
    required String email,
    required String style,
    required String introduceTitle,
    required String introduceContext,
    required String representativeCareer,
    required String representativeFootprints,
    required int likesCount,
    required List<FeedbackTrainerImage> images,
  }) = _FeedbackTrainer;

  factory FeedbackTrainer.fromJson(Map<String, dynamic> json) =>
      _$FeedbackTrainerFromJson(json);
}
