import 'package:freezed_annotation/freezed_annotation.dart';

enum Gender {
  @JsonValue("FEMALE")
  female,
  @JsonValue("MALE")
  male,
}

extension GenderConverter on Gender {
  String toStringType() {
    switch (this) {
      case Gender.female:
        return "여성";
      case Gender.male:
        return "남성";
    }
  }
}
