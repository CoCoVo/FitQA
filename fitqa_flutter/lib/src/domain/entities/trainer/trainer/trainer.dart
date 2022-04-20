import 'package:fitqa/src/domain/entities/common/enum/workout_style.dart';
import 'package:fitqa/src/domain/entities/feedback/fitqa_feedback/fitqa_feedback.dart';
import 'package:fitqa/src/domain/entities/trainer/trainer_career/trainer_career.dart';
import 'package:fitqa/src/domain/entities/trainer/trainer_feedback_price/trainer_feedback_price.dart';
import 'package:fitqa/src/domain/entities/trainer/trainer_image/trainer_image.dart';
import 'package:fitqa/src/domain/entities/trainer/trainer_interest/trainer_interest.dart';
import 'package:fitqa/src/domain/entities/trainer/trainer_sns/trainer_sns.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trainer.freezed.dart';
part 'trainer.g.dart';

@freezed
abstract class Trainer with _$Trainer {
  const factory Trainer(
      {required String trainerToken,
      required String name,
      required String email,
      required WorkOutStyle style,
      required String introduceTitle,
      required String introduceContext,
      required String representativeCareer,
      required String representativeFootprints,
      required int likesCount,
      required List<TrainerImage> images,
      required List<TrainerCareer> careers,
      required List<TrainerFeedbackPrice> feedbackPrices,
      required List<TrainerInterestArea> interestAreas,
      required List<TrainerSns> sns,
      required List<FitqaFeedback> feedbacks}) = _Trainer;

  factory Trainer.fromJson(Map<String, dynamic> json) =>
      _$TrainerFromJson(json);
}
