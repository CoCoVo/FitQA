import 'package:fitqa/src/theme/color.dart';
import 'package:fitqa/src/theme/dimen.dart';
import 'package:flutter/material.dart';

class FeedbackPriceInfoItem extends StatelessWidget {
  const FeedbackPriceInfoItem({required this.title, required this.price});

  final String title;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: FDimen.trainerDetailFeedbackPriceInfoSize,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: ListTile(
          title: Text("${this.title}",
              style: TextStyle(fontSize: 14, color: FColors.black)),
          subtitle: Text("${this.price} 원",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: FColors.black)),
        ),
      ),
    );
  }
}
