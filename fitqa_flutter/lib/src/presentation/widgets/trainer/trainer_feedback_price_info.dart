import 'package:fitqa/src/presentation/widgets/trainer/feedback_price_info_item.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:fitqa/src/theme/dimen.dart';
import 'package:flutter/material.dart';

class TrainerFeedbackPriceInfo extends StatelessWidget {
  const TrainerFeedbackPriceInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(17, 0, 17, 40),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("상담안내", style: TextStyle(fontSize: 14)),
          SizedBox(height: 18),
          Divider(color: FColors.line, height: 1, thickness: 1),
          SizedBox(height: 16),
          FeedbackPriceInfoItem(title: "하체 상담 (스쿼트, 레그프레스 등)", price: 11000),
          SizedBox(height: 16),
          FeedbackPriceInfoItem(title: "어깨 상담 (스쿼트, 레그프레스 등)", price: 6000),
        ]));
  }
}
