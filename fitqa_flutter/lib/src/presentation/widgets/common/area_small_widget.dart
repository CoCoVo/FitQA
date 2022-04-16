import 'package:fitqa/src/theme/dimen.dart';
import 'package:flutter/material.dart';

class AreaSmallWidget extends StatelessWidget {
  AreaSmallWidget(this.data,
      {Key? key,
      required this.textColor,
      required this.backgroundColor,
      required this.borderColor,
      this.padding = const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      this.fontSize = 12,
      this.cornerRadius = 12})
      : super(key: key);

  final String data;
  final Color textColor;
  final Color backgroundColor;
  final Color borderColor;

  EdgeInsets padding;
  double fontSize;
  double cornerRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
          border: Border.all(width: 1.5, color: borderColor),
          color: backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(cornerRadius))),
      child: Text(
        data,
        style: TextStyle(
            color: textColor,
            fontSize: fontSize,
            fontWeight: FontWeight.w500,
            height: FDimen.workOutAreaWidgetLineHeightPx / fontSize),
      ),
    );
  }
}
