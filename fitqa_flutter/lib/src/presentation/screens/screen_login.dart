import 'package:fitqa/src/presentation/widgets/common/social_login_button.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';

class ScreenLogin extends StatelessWidget {
  const ScreenLogin({Key? key}) : super(key: key);

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
                SocialLoginButton(
                    onTap: () => _launchURL(
                        "http://localhost:8080/oauth2/authorization/kakao"),
                    title: "Login with Google",
                    color: FColors.socialGoogleColor,
                    icon: Icons.comment)
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _launchURL(String provider) async {
    final oauthURL = "http://localhost:8080/oauth2/authorization/$provider";
  }
}
