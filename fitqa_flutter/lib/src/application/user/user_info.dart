import 'package:fitqa/src/domain/entities/common/enum/workout_level.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userInfoNameProvider = StateProvider((ref) => "");
final userInfoBirthProvider = StateProvider<DateTime>((ref) => DateTime.now());
final userInfoWorkoutLevelProvider =
    StateProvider<WorkoutLevel>((ref) => WorkoutLevel.beginner);
final userInfoWorkoutStyleProvider = StateProvider<String?>((ref) => null);
final userInfoHeightProvider = StateProvider<int>((ref) => 160);
final userInfoWeightProvider = StateProvider<int>((ref) => 60);
final userInfoFatProvider = StateProvider<double>((ref) => 0);
final userInfoMuscleMassProvider = StateProvider<double>((ref) => 0);
