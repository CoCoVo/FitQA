import 'package:fitqa/theme/color.dart';
import 'package:fitqa/widget/fitqa_appbar.dart';
import 'package:fitqa/widget/login_button/apple_login_button.dart';
import 'package:fitqa/widget/login_button/facebook_login_button.dart';
import 'package:fitqa/widget/login_button/google_login_button.dart';
import 'package:flutter/material.dart';

class ScreenLogin extends StatelessWidget {
  const ScreenLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: FColors.appBackground,
            appBar: FAppbar('FitQA'),
            body: Container(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FacebookLoginButton(),
                GoogleLoginButton(),
                AppleLoginButton(),
                TextButton(
                  onPressed: () {},
                  child: Text("로그인 없이 둘러보기"),
                ),
              ],
            ))));
  }
}
