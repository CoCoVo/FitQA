import 'package:fitqa/listitem/listitem_feedback.dart';
import 'package:fitqa/widget/filter_chip_bar.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '운동을 시작해보세요',
                  style: TextStyle(fontSize: 22),
                ),
                FilterChipBar(items: ['전체', '#하체', '#등', '#가슴', '#어깨', '#팔']),
                FilterChipBar(items: ['조회수 높은 순', '좋아요 순', '최신순', '과거순']),
              ],
            ),
          ),
          ListItemFeedback(),
          ListItemFeedback(),
          ListItemFeedback(),
          ListItemFeedback(),
        ],
      ),
    );
  }
}
