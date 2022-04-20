import 'package:fitqa/src/domain/entities/common/enum/account_provider.dart';
import 'package:fitqa/src/domain/entities/common/enum/gender.dart';
import 'package:fitqa/src/domain/entities/common/enum/workout_level.dart';
import 'package:fitqa/src/domain/entities/common/enum/workout_style.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  const factory User({
    required String userToken,
    required String name,
    required String email,
    required String photoURL,
    required WorkOutStyle workOutStyle,
    required WorkoutLevel workOutLevel,
    required Gender gender,
    required AccountProvider provider,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
