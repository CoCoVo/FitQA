import 'package:fitqa/src/theme/color.dart';
import 'package:fitqa/src/theme/dimen.dart';
import 'package:flutter/material.dart';

class FitqaAppbarSub extends StatelessWidget with PreferredSizeWidget {
  FitqaAppbarSub(
      {Key? key,
      required this.title,
      this.actions,
      this.onPressed,
      this.foreground,
      this.centerTitle = false})
      : super(key: key);

  String title;
  List<Widget>? actions;
  Function()? onPressed;

  Color? foreground;
  bool centerTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: foreground,
          ),
          onPressed: onPressed,
        ),
        title: Text(
          title,
          style: TextStyle(
              fontSize: 18, color: foreground, fontWeight: FontWeight.bold),
        ),
        centerTitle: centerTitle,
        titleSpacing: 0,
        elevation: 0,
        backgroundColor: FColors.transparent,
        actions: actions);
  }

  @override
  Size get preferredSize => const Size.fromHeight(FDimen.defaultAppbarHeight);
}
