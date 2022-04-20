import 'package:fitqa/src/domain/entities/common/enum/workout_area.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trainer_feedback_price.freezed.dart';
part 'trainer_feedback_price.g.dart';

@freezed
abstract class TrainerFeedbackPrice with _$TrainerFeedbackPrice {
  const factory TrainerFeedbackPrice({
    required WorkOutArea area,
    required int price,
  }) = _TrainerFeedbackPrice;

  factory TrainerFeedbackPrice.fromJson(Map<String, dynamic> json) =>
      _$TrainerFeedbackPriceFromJson(json);
}
