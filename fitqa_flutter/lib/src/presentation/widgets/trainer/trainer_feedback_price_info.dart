import 'package:fitqa/src/domain/entities/trainer/trainer/trainer.dart';
import 'package:fitqa/src/presentation/widgets/trainer/feedback_price_info_item.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';

class TrainerFeedbackPriceInfo extends StatelessWidget {
  const TrainerFeedbackPriceInfo({Key? key, required this.trainer})
      : super(key: key);

  final Trainer trainer;

  @override
  Widget build(BuildContext context) {
    List<Widget> priceInfoItems = [];
    trainer.feedbackPrices.forEach((element) {
      priceInfoItems.add(const SizedBox(height: 16));
      priceInfoItems.add(FeedbackPriceInfoItem(
          title: element.interestArea, price: element.price));
    });

    return Container(
        padding: EdgeInsets.fromLTRB(17, 0, 17, 40),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text("상담안내", style: TextStyle(fontSize: 14)),
          const SizedBox(height: 18),
          const Divider(color: FColors.line, height: 1, thickness: 1),
          ...priceInfoItems,
        ]));
  }
}
