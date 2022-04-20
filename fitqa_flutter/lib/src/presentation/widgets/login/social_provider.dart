enum SocialProvider { GOOGLE, KAKAO, NAVER }

extension SocialProviderExtension on SocialProvider {
  String get toProviderString {
    switch (this) {
      case SocialProvider.GOOGLE:
        return "google";
      case SocialProvider.KAKAO:
        return "kakao";
      case SocialProvider.NAVER:
        return "naver";
    }
  }
}
