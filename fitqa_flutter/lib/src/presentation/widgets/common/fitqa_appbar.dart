import 'package:fitqa/src/theme/color.dart';
import 'package:fitqa/src/theme/dimen.dart';
import 'package:flutter/material.dart';

class FitqaAppbar extends StatelessWidget {
  const FitqaAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: FDimen.defaultTabBarSize,
      backgroundColor: FColors.white,
      centerTitle: false,
      elevation: 0,
      title: const Text(
        "Fit QA",
        style: TextStyle(
            fontWeight: FontWeight.w700, fontSize: 24, color: FColors.blue),
      ),
    );
  }
}

