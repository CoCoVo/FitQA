import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';

class AreaSmallWidget extends StatelessWidget {
  final String data;
  final Color textColor;
  final Color backgroundColor;
  final Color borderColor;
  AreaSmallWidget(this.data, {required this.textColor, required this
      .backgroundColor, required this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: this.borderColor),
            color: this.backgroundColor,
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Text(
          "${data}",
          style: TextStyle(
              color: this.textColor, fontSize: 12, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
