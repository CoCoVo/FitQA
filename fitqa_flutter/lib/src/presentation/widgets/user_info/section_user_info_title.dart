import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';

class SectionUserInfoTitle extends StatelessWidget {
  const SectionUserInfoTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              text: "운동 성향 파악",
              style: TextStyle(
                  color: FColors.blue,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                    text: "을 위한\n정보를 입력해주세요",
                    style: TextStyle(color: FColors.black))
              ])),
    );
  }
}
