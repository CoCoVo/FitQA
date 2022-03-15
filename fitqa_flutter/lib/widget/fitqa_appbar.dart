import 'package:fitqa/theme/color.dart';
import 'package:fitqa/widget/fitqa_icon.dart';
import 'package:flutter/material.dart';

AppBar FAppbar(String title) {
  return AppBar(
    backgroundColor: FColors.appBarBackground,
    elevation: 1,
    leading: const Padding(
      padding: EdgeInsets.all(8.0),
      child: FitqaIcon(),
    ),
    titleSpacing: 3,
    title: Text(title),
    titleTextStyle: const TextStyle(color: FColors.textPrimary),
  );
}
