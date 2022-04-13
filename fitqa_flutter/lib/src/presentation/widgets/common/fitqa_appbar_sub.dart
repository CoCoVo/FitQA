import 'package:fitqa/src/theme/color.dart';
import 'package:fitqa/src/theme/dimen.dart';
import 'package:flutter/material.dart';

class FitqaAppbarSub extends StatelessWidget with PreferredSizeWidget {
  FitqaAppbarSub({Key? key, required this.title, this.actions, this.onPressed})
      : super(key: key);

  String title;
  List<Widget>? actions;
  Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            color: FColors.white,
          ),
          onPressed: onPressed,
        ),
        title: Text(
          title,
          style: const TextStyle(
              fontSize: 18, color: FColors.white, fontWeight: FontWeight.bold),
        ),
        titleSpacing: 0,
        elevation: 0,
        backgroundColor: FColors.transparent,
        actions: actions);
  }

  @override
  Size get preferredSize => const Size.fromHeight(FDimen.defaultAppbarHeight);
}
