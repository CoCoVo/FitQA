import 'package:fitqa/src/theme/color.dart';
import 'package:fitqa/src/theme/dimen.dart';
import 'package:flutter/material.dart';

class FitqaAppbarSub extends StatelessWidget with PreferredSizeWidget {
  FitqaAppbarSub({
    Key? key,
    required this.title,
    this.actions,
    this.onPressed,
    this.foregroundColor,
    this.centerTitle = false,
    this.backgroundColor = FColors.transparent,
  }) : super(key: key);

  String title;
  List<Widget>? actions;
  Function()? onPressed;

  Color? foregroundColor;
  Color? backgroundColor;
  bool centerTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios_rounded,
          color: foregroundColor,
        ),
        onPressed: onPressed,
      ),
      title: Text(
        title,
        style: TextStyle(
            fontSize: 18, color: foregroundColor, fontWeight: FontWeight.bold),
      ),
      centerTitle: centerTitle,
      titleSpacing: 0,
      elevation: 0,
      backgroundColor: backgroundColor,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(FDimen.defaultAppbarHeight);
}
