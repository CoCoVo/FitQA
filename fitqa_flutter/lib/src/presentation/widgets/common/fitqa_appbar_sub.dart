import 'package:fitqa/src/theme/color.dart';
import 'package:fitqa/src/theme/dimen.dart';
import 'package:flutter/material.dart';

class FitqaAppbarSub extends StatelessWidget with PreferredSizeWidget {
  FitqaAppbarSub({Key? key, required this.title, this.actions})
      : super(key: key);

  String title;
  List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        leading: const Icon(
          Icons.arrow_back_ios_rounded,
          color: FColors.white,
        ),
        title: Text(title),
        titleSpacing: 0,
        elevation: 0,
        backgroundColor: FColors.transparent,
        actions: actions);
  }

  @override
  Size get preferredSize => const Size.fromHeight(FDimen.defaultAppbarHeight);
}
