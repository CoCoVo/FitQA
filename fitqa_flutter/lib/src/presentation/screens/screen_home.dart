import 'package:fitqa/src/presentation/screens/screen_feedback_detail.dart';
import 'package:fitqa/src/presentation/widgets/common/fitqa_appbar.dart';
import 'package:fitqa/src/presentation/widgets/common/multi_select_chip.dart';
import 'package:fitqa/src/presentation/widgets/feedback/register/feedback_listview_item.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:fitqa/src/theme/dimen.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  ScreenHome({Key? key}) : super(key: key);

  final feedbackList = [
    FeedbackListViewItem(
      locked: false,
      complete: true,
    ),
    FeedbackListViewItem(
      locked: true,
      complete: false,
    ),
    FeedbackListViewItem(
      locked: false,
      complete: false,
    ),
    FeedbackListViewItem(
      locked: true,
      complete: true,
    ),
    FeedbackListViewItem(
      locked: true,
      complete: true,
    ),
    FeedbackListViewItem(
      locked: false,
      complete: false,
    ),
    FeedbackListViewItem(
      locked: false,
      complete: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        color: FColors.white,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          const FitqaAppbar(),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: SizedBox(
                height: FDimen.defaultMultiSelectChipSize,
                child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: MultiSelectChip(
                        const ['전체', '등', '어깨', '팔', '하체', '가슴'],
                        onSelectionChanged: (selectedList) {
                      print(selectedList);
                    })),
              )),
          Expanded(
            child: ListView.separated(
              itemCount: feedbackList.length,
              itemBuilder: (context, index) => InkWell(
                child: feedbackList[index],
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ScreenFeedbackDetail())),
              ),
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
            ),
          ),
        ]));
  }
}
