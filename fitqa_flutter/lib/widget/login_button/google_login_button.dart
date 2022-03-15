import 'package:fitqa/theme/color.dart';
import 'package:fitqa/widget/login_button/social_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GoogleLoginButton extends StatelessWidget {
  const GoogleLoginButton({Key? key, this.text = "Continue with Facebook"}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return SocialButton(
      buttonColor: FColors.buttonGoogle,
      textColor: FColors.textGoogle,
      children: [
        SvgPicture.asset(
          "images/logo/logo_google.svg",
          width: 24,
          height: 24,
        ),
        Padding(padding: EdgeInsets.only(left: 6, right: 10), child: Text(text))
      ],
    );
  }
}
