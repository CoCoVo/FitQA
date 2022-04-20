import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_feedback.freezed.dart';
part 'register_feedback.g.dart';

@freezed
abstract class RegisterFeedback with _$RegisterFeedback {
  const factory RegisterFeedback({
    required String ownerToken,
    required String trainerToken,
    required String interestArea,
    required int price,
    required String title,
    required String content,
    required bool locked,
  }) = _RegisterFeedback;

  factory RegisterFeedback.fromJson(Map<String, dynamic> json) =>
      _$RegisterFeedbackFromJson(json);
}
