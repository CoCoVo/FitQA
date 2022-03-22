import 'package:fitqa/theme/color.dart';
import 'package:fitqa/widget/login_button/social_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FacebookLoginButton extends StatelessWidget {
  FacebookLoginButton({Key? key, this.onPressed, this.text = "Continue with Facebook"})
      : super(key: key);

  Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SocialButton(
      onPressed: onPressed,
      buttonColor: FColors.buttonFacebook,
      textColor: FColors.textFacebook,
      children: [
        SvgPicture.asset(
          "images/logo/logo_facebook.svg",
          width: 24,
          height: 24,
        ),
        Padding(padding: EdgeInsets.only(left: 6, right: 10), child: Text(text))
      ],
    );
  }
}
