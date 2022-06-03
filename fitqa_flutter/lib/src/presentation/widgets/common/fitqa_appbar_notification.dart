import 'package:fitqa/src/theme/color.dart';
import 'package:fitqa/src/theme/dimen.dart';
import 'package:flutter/material.dart';

class FitqaAppbarNotification extends StatelessWidget {
  const FitqaAppbarNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        toolbarHeight: FDimen.defaultAppbarHeight,
        backgroundColor: FColors.grey_0,
        centerTitle: true,
        elevation: 0,
        title: RichText(
          text: const TextSpan(
            text: "알람",
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15,
                color: FColors.black),
          ),
        ));
  }
}
