import 'package:freezed_annotation/freezed_annotation.dart';

enum MyPageArea {
  @JsonValue("LOWER")
  myBoard,
  @JsonValue("BACK")
  myTrainer,
  @JsonValue("CHEST")
  gallery,
  @JsonValue("SHOULDER")
  myHistory,
}

extension MyPageAreaConverter on MyPageArea {
  String toStringType() {
    switch (this) {
      case MyPageArea.myTrainer:
        return '찜한 트레이너';
      case MyPageArea.gallery:
        return '갤러리';
      case MyPageArea.myHistory:
        return '이용내역';
      case MyPageArea.myBoard:
        return '내가 쓴 글';
    }
  }

  static MyPageArea fromString(String area) {
    switch (area) {
      case '내가 쓴 글':
        return MyPageArea.myBoard;
      case '찜한 트레이너':
        return MyPageArea.myTrainer;
      case '갤러리':
        return MyPageArea.gallery;
      case '이용내역':
        return MyPageArea.myHistory;
    }
    return MyPageArea.myBoard;
  }
}
