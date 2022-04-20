import 'package:fitqa/src/domain/entities/common/enum/workout_level.dart';
import 'package:fitqa/src/domain/entities/common/enum/workout_style.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_user_info.freezed.dart';
part 'update_user_info.g.dart';

@freezed
abstract class UpdateUserInfo with _$UpdateUserInfo {
  const factory UpdateUserInfo({
    required String name,
    required String birthDay,
    required int height,
    required int weight,
    required double bodyPatPercentage,
    required double muscleMass,
    required WorkOutStyle workOutStyle,
    required WorkoutLevel workOutLevel,
  }) = _UpdateUserInfo;

  factory UpdateUserInfo.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserInfoFromJson(json);
}
