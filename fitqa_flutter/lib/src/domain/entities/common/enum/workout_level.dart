import 'package:freezed_annotation/freezed_annotation.dart';

enum WorkoutLevel {
  @JsonValue("BEGINNER")
  beginner,
  @JsonValue("INTERMEDIATE")
  intermediate,
  @JsonValue("SENIOR")
  senior,
  @JsonValue("SUPER")
  superman
}

extension WorkoutLevelConverter on WorkoutLevel {
  String toStringType() {
    switch (this) {
      case WorkoutLevel.beginner:
        return "초보자";
      case WorkoutLevel.intermediate:
        return "중급자";
      case WorkoutLevel.senior:
        return "상급자";
      case WorkoutLevel.superman:
        return "초고수";
    }
  }
}
