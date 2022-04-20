import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SectionFeedbackLike extends StatelessWidget {
  const SectionFeedbackLike({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            "images/like.svg",
            color: FColors.blue,
            width: 20,
            height: 20,
          ),
          SizedBox(
            width: 10,
          ),
          SvgPicture.asset(
            "images/comment.svg",
            color: FColors.blue,
            width: 20,
            height: 20,
          ),
          Expanded(
            child: RichText(
              textAlign: TextAlign.end,
              text: TextSpan(
                  text: "운동조아",
                  style: TextStyle(
                      fontSize: 14,
                      color: FColors.black,
                      fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                        text: "님 외 121명이 좋아합니다.",
                        style: TextStyle(fontWeight: FontWeight.normal))
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
