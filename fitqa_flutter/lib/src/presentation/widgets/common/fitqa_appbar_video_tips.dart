import 'package:fitqa/src/theme/color.dart';
import 'package:fitqa/src/theme/dimen.dart';
import 'package:flutter/material.dart';

class FitqaAppbarVideoTips extends StatelessWidget {
  const FitqaAppbarVideoTips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        toolbarHeight: FDimen.defaultAppbarHeight,
        backgroundColor: FColors.grey_0,
        centerTitle: true,
        elevation: 0,
        title: RichText(
          text: const TextSpan(
            text: "영상업로드 Tip",
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18.0,
                color: FColors.black),
          ),
        ));
  }
}
