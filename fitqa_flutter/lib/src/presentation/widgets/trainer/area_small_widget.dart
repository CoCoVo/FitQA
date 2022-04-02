import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';

class AreaSmallWidget extends StatelessWidget {
  final String data;

  AreaSmallWidget(this.data);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: FColors.black),
            color: FColors.white,
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Text(
          "${data}",
          style: const TextStyle(
              color: FColors.black, fontSize: 12, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
