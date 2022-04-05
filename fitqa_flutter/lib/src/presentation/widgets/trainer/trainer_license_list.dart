import 'package:fitqa/src/presentation/widgets/trainer/trainer_career_item.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';

class TrainerLicenseList extends StatelessWidget {
  const TrainerLicenseList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(17, 45, 17, 40),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("학력 & 자격면허", style: TextStyle(fontSize: 14)),
          SizedBox(height: 18),
          Divider(color: FColors.line, height: 1, thickness: 1),
          SizedBox(height: 16),
          TrainerCareerItem(career: "건강운동관리사 - 문화체육관광부"),
          TrainerCareerItem(career: "생활스포츠지도사 2급 보디빌딩 - 문화체육관광부"),
          TrainerCareerItem(career: "Personal Trainer - 대한예방운동협회"),
          TrainerCareerItem(career: "Conditioning care Specialist - 대한예방운동협회")
        ]));
  }
}
