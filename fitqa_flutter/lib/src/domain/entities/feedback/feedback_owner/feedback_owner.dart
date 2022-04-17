import 'package:freezed_annotation/freezed_annotation.dart';

part 'feedback_owner.freezed.dart';
part 'feedback_owner.g.dart';

@freezed
abstract class FeedbackOwner with _$FeedbackOwner {
  const factory FeedbackOwner({
    required String userToken,
    required String name,
    required String email,
    required String photoURL,
    required String workOutStyle,
    required String workoutLevel,
    required String gender,
    required String provider,
  }) = _FeedbackOwner;

  factory FeedbackOwner.fromJson(Map<String, dynamic> json) =>
      _$FeedbackOwnerFromJson(json);
}
