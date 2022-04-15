import 'package:fitqa/src/presentation/widgets/login/oauth_login_mobile.dart';
import 'package:fitqa/src/presentation/widgets/login/social_login_button.dart';
import 'package:fitqa/src/presentation/widgets/login/social_provider.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';

class ScreenLogin extends StatelessWidget {
  ScreenLogin({Key? key}) : super(key: key);

  Map<SocialProvider, String> titles = {
    SocialProvider.GOOGLE: "구글로 로그인",
    SocialProvider.KAKAO: "카카오로 로그인",
    SocialProvider.NAVER: "네이버로 로그인",
  };

  Map<SocialProvider, Color> colors = {
    SocialProvider.GOOGLE: FColors.socialGoogleColor,
    SocialProvider.KAKAO: FColors.socialKakaoColor,
    SocialProvider.NAVER: FColors.socialNaverColor,
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildLoginButton(context, SocialProvider.GOOGLE),
                SizedBox(
                  height: 16,
                ),
                _buildLoginButton(context, SocialProvider.KAKAO),
                SizedBox(
                  height: 16,
                ),
                _buildLoginButton(context, SocialProvider.NAVER)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLoginButton(
      BuildContext context, SocialProvider socialProvider) {
    return Builder(
      builder: (BuildContext context) {
        return SocialLoginButton(
            onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => OAuthLoginMobile(
                            baseURL:
                                "http://118.220.102.116:8080/oauth2/authorization",
                            socialProvider: socialProvider,
                          )),
                ),
            title: titles[socialProvider]!,
            color: colors[socialProvider]!,
            icon: Icons.comment);
      },
    );
  }
}
