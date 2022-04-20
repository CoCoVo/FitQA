import 'package:freezed_annotation/freezed_annotation.dart';

enum WorkOutStyle {
  @JsonValue("NONE")
  none,
  @JsonValue("BODY_BUILDING")
  bodyBuilding,
  @JsonValue("DIET")
  diet,
}

extension Converter on WorkOutStyle {
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
}
