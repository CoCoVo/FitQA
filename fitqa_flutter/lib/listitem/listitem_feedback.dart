import 'package:fitqa/theme/color.dart';
import 'package:flutter/material.dart';

class ListItemFeedback extends StatelessWidget {
  const ListItemFeedback({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(0), color: FColors.white),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://img.etimg.com/photo/msid-74747053,quality-100/for-miles-a-great-bodyweight-workout-would-include-squats-push-ups-walking-lunges-.jpg"))),
          ),
          SizedBox(
            width: 8,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '데드리프트 500kg 언제 도달할까요?',
                  style: TextStyle(fontSize: 14),
                ),
                const Text(
                  '남성 42세 178cm 75kg',
                  style: TextStyle(fontSize: 12),
                ),
                const Text(
                  '2021-11-28 조회수 14,234',
                  style: TextStyle(fontSize: 10),
                )
              ],
            ),
          ),
          const Chip(
            label: const Text(
              '답변완료',
              style: TextStyle(color: FColors.white),
            ),
            backgroundColor: FColors.buttonAccent,
          )
        ],
      ),
    );
  }
}
