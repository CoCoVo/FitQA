import 'package:freezed_annotation/freezed_annotation.dart';

enum AccountProvider {
  @JsonValue("GOOGLE")
  google,
  @JsonValue("NAVER")
  naver,
  @JsonValue("KAKAO")
  kakao,
}

extension AccountProviderConverter on AccountProvider {
  String toStringType() {
    switch (this) {
      case AccountProvider.google:
        return "구글";
      case AccountProvider.naver:
        return "네이버";
      case AccountProvider.kakao:
        return "카카오";
    }
  }
}
