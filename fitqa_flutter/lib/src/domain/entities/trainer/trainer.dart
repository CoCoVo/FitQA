import 'package:fitqa/src/domain/entities/trainer/trainer_career.dart';
import 'package:fitqa/src/domain/entities/trainer/trainer_feedback_price.dart';
import 'package:fitqa/src/domain/entities/trainer/trainer_image.dart';
import 'package:fitqa/src/domain/entities/trainer/trainer_interest.dart';
import 'package:fitqa/src/domain/entities/trainer/trainer_sns.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trainer.g.dart';

part 'trainer.freezed.dart';

@freezed
abstract class Trainer with _$Trainer {
  const factory Trainer(
      {required String trainerToken,
      required String name,
      required String style,
      required String introduceTitle,
      required String introduceContext,
      required int likesCount,
      required List<TrainerImage> images,
      required List<TrainerCareer> careers,
      required List<TrainerFeedbackPrice> feedbackPrices,
      required List<TrainerInterestArea> interestAreas,
      required List<TrainerSns> sns}) = _Trainer;

  factory Trainer.fromJson(Map<String, dynamic> json) =>
      _$TrainerFromJson(json);
}
