import 'package:freezed_annotation/freezed_annotation.dart';

part 'trainer_sns.freezed.dart';

part 'trainer_sns.g.dart';

@freezed
abstract class TrainerSns with _$TrainerSns {
  const factory TrainerSns({required String snsType, required String snsUrl}) =
      _TrainerSns;

  factory TrainerSns.fromJson(Map<String, dynamic> json) =>
      _$TrainerSnsFromJson(json);
}
