import 'package:fitqa/src/presentation/widgets/trainer/trainer_career_item.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';

class TrainerCareerList extends StatelessWidget {
  const TrainerCareerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(17, 0, 17, 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("경력", style: TextStyle(fontSize: 14)),
          SizedBox(height: 18),
          Divider(color: FColors.line, height: 1, thickness: 1),
          SizedBox(height: 16),
          TrainerCareerItem(career: "1997년 미스터 유니버시티 1위"),
          TrainerCareerItem(career: "1999년 미스터 코리아 우승"),
          TrainerCareerItem(career: "2002년 부산 아시안 게임 보디빌딩(-85kg) 금메달"),
          TrainerCareerItem(career: "2015년 Europa Dallas Pro 212 보디빌딩 - 1위")
        ],
      ),
    );
  }
}
