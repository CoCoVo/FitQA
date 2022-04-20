import 'package:flutter_riverpod/flutter_riverpod.dart';

final userInfoNameProvider = StateProvider((ref) => "");
final userInfoBirthProvider = StateProvider((ref) => "");
final userInfoWorkoutLevelProvider = StateProvider((ref) => "");
final userInfoWorkoutStyleProvider = StateProvider((ref) => "");
final userInfoHeightProvider = StateProvider((ref) => 170);
final userInfoWeightProvider = StateProvider((ref) => 70);
final userInfoFatProvider = StateProvider((ref) => 0.0);
final userInfoMuscleMassProvider = StateProvider((ref) => 0.0);
