import 'package:fitqa/src/theme/color.dart';
import 'package:fitqa/src/theme/dimen.dart';
import 'package:flutter/material.dart';

class FitqaAppbarMyPage extends StatelessWidget {
  const FitqaAppbarMyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        toolbarHeight: FDimen.defaultAppbarHeight,
        backgroundColor: FColors.blue,
        centerTitle: true,
        elevation: 0,
        title: RichText(
          text: const TextSpan(
              text: "마이페이지",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: FColors.white),
        ),
      )
    );
  }
}
