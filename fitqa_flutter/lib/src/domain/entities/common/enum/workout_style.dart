import 'package:freezed_annotation/freezed_annotation.dart';

enum WorkOutStyle {
  @JsonValue("NONE")
  none,
  @JsonValue("BODY_BUILDING")
  bodyBuilding,
  @JsonValue("DIET")
  diet,
}

extension WorkOutStyleConverter on WorkOutStyle {
  String toStringType() {
    switch (this) {
      case WorkOutStyle.none:
        return '없음';
      case WorkOutStyle.bodyBuilding:
        return '보디빌딩';
      case WorkOutStyle.diet:
        return '다이어트';
    }
  }

  static WorkOutStyle fromString(String value) {
    switch (value) {
      case "보디빌딩":
        return WorkOutStyle.bodyBuilding;
      case "다이어트":
        return WorkOutStyle.diet;
    }
    return WorkOutStyle.none;
  }
}
