import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';

class SmallInfoBox extends StatelessWidget {

  SmallInfoBox({
    Key? key,
    required this.text,
    this.width = 44,
    this.outlined = true
  }) : super(key: key);

  String text;
  double width;
  bool outlined;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
      child: FittedBox(
          child: Text(text,
            style: const TextStyle(color: FColors.blue, fontWeight: FontWeight.bold),)),
      decoration: BoxDecoration(
        color: (outlined) ? null : FColors.grey_1,
        border: (outlined) ? Border.all(
          color: FColors.blue
        )
          : null,
        borderRadius: BorderRadius.circular(4)
      ),
    );
  }
}
