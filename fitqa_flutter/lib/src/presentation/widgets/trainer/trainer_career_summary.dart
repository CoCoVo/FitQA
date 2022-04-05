import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';

class TrainerCareerSummary extends StatelessWidget {
  const TrainerCareerSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(17, 0, 17, 24),
      child: Column(
        children: [
          Text(
            "경력 & 학력/자격면허",
            style: TextStyle(fontSize: 16, color: FColors.black),
          ),
          SizedBox(height: 10),
          Text("Mr.Korea 클래식 보디빌딩 1위\n선수 전문 트레이너",
              style: TextStyle(fontSize: 20, height: 1.2, color: FColors.blue)),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
