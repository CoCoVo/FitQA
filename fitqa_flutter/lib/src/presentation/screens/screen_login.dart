import 'package:fitqa/src/config/remote_server_domain.dart';
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
              Expanded(
                flex: 2,
                child: SafeArea(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      RichText(
                        text: const TextSpan(
                            text: "Fit ",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 48,
                                color: FColors.blue),
                            children: [
                              TextSpan(
                                  text: "QA",
                                  style: TextStyle(color: FColors.black))
                            ]),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        '로그인',
                        style: TextStyle(
                            fontSize: 36.0,
                            fontWeight: FontWeight.w900,
                            color: FColors.black),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: loginList(),
                flex: 2,
              ),
              Expanded(
                child: Container(
                  child: TextButton(
                    child: Text('건너뛰기'),
                    onPressed: () {
                      Navigator.popAndPushNamed(context, '/Home');
                    },
                  ),
                ),
                flex: 1,
              )
            ],
          ),
        ),
      )),
    );
  }

  Widget _buildLoginButton(SocialProvider socialProvider) {
    return Builder(
      builder: (BuildContext context) {
        return SocialLoginButton(
            onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => OAuthLoginMobile(
                            baseURL: RemoteServerDomain.oauthBaseURL,
                            socialProvider: socialProvider,
                          )),
                ),
            title: titles[socialProvider]!,
            color: colors[socialProvider]!,
            icon: Icons.comment);
      },
    );
  }

  Widget loginList() {
    return Column(
      children: [
        _buildLoginButton(SocialProvider.GOOGLE),
        const SizedBox(
          height: 16,
        ),
        _buildLoginButton(SocialProvider.KAKAO),
        const SizedBox(
          height: 16,
        ),
        _buildLoginButton(SocialProvider.NAVER)
      ],
    );
  }
}
