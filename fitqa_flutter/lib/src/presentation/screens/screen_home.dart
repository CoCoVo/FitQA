import 'package:fitqa/src/presentation/controller/feedback_controller.dart';
import 'package:fitqa/src/presentation/screens/screen_feedback_detail.dart';
import 'package:fitqa/src/presentation/widgets/common/fitqa_appbar.dart';
import 'package:fitqa/src/presentation/widgets/common/multi_select_chip.dart';
import 'package:fitqa/src/presentation/widgets/feedback/register/feedback_listview_item.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:fitqa/src/theme/dimen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ScreenHome extends ConsumerWidget {
  ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final feedbacks = ref.watch(feedbackControllerProvider);
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
                        onSelectionChanged: (selectedList) {})),
              )),
          feedbacks.when(
              data: (feedbacks) {
                return Expanded(
                  child: ListView.separated(
                    itemCount: feedbacks.length,
                    itemBuilder: (context, index) => InkWell(
                      child: FeedbackListViewItem(
                        feedback: feedbacks[index],
                      ),
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ScreenFeedbackDetail())),
                    ),
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
                  ),
                );
              },
              error: (error, e) => Center(
                    child: Text(error.toString()),
                  ),
              loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ))
        ]));
  }
}
