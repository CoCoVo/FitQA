import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:fitqa/src/application/feedback/feedback_detail.dart';
import 'package:fitqa/src/application/feedback/feedback_list.dart';
import 'package:fitqa/src/domain/entities/feedback/fitqa_feedback/fitqa_feedback.dart';
import 'package:fitqa/src/presentation/screens/screen_feedback_detail.dart';
import 'package:fitqa/src/presentation/screens/screen_mypage_myfeedback.dart';
import 'package:fitqa/src/presentation/widgets/feedback/register/feedback_listview_item.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ScreenMyPageDetail extends ConsumerWidget {
  const ScreenMyPageDetail({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final controller = PageController();
    int currentPageIndex=0;

    return Expanded(
      child: ContainedTabBarView(
          tabs: const [
            Text('내가 쓴 글'),
            Text('찜한 트레이너'),
            Text('갤러리'),
            Text('이용내역'),
          ],
        tabBarProperties: const TabBarProperties(
          height: 50.0,
          indicatorColor: FColors.grey_0,
          indicatorWeight: 5.0,
          labelColor: FColors.blue,
          unselectedLabelColor: FColors.black,
          labelStyle: TextStyle(fontWeight: FontWeight.bold),
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
        ),
          views: [
            const ScreenMyPageMyFeedback(),
            Container(color: Colors.green),
            Container(color: Colors.yellow),
            Container(color: Colors.blue),
          ],
          onChange: (index) => print(index),
        ),
    );
  }
}
