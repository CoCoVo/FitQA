import 'package:freezed_annotation/freezed_annotation.dart';

enum WorkOutArea {
  all,
  none,
  @JsonValue("LOWER")
  lower,
  @JsonValue("BACK")
  back,
  @JsonValue("CHEST")
  chest,
  @JsonValue("SHOULDER")
  shoulder,
  @JsonValue("ARM")
  arm,
}

extension WorkOutAreaConverter on WorkOutArea {
  String toStringType() {
    switch (this) {
      case WorkOutArea.all:
        return '전체';
      case WorkOutArea.none:
        return '없음';
      case WorkOutArea.lower:
        return '하체';
      case WorkOutArea.back:
        return '등';
      case WorkOutArea.chest:
        return '가슴';
      case WorkOutArea.shoulder:
        return '어깨';
      case WorkOutArea.arm:
        return '팔';
    }
  }

  static WorkOutArea fromString(String area) {
    switch (area) {
      case '전체':
        return WorkOutArea.all;
      case '하체':
        return WorkOutArea.lower;
      case '등':
        return WorkOutArea.back;
      case '가슴':
        return WorkOutArea.chest;
      case '어깨':
        return WorkOutArea.shoulder;
      case '팔':
        return WorkOutArea.arm;
    }
    return WorkOutArea.none;
  }
}
