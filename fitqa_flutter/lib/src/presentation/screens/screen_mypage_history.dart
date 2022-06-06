import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:fitqa/src/application/feedback/feedback_detail.dart';
import 'package:fitqa/src/application/feedback/feedback_list.dart';
import 'package:fitqa/src/domain/entities/feedback/fitqa_feedback/fitqa_feedback.dart';
import 'package:fitqa/src/presentation/screens/screen_feedback_detail.dart';
import 'package:fitqa/src/presentation/widgets/feedback/register/feedback_listview_item.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ScreenMyPageHistory extends ConsumerWidget {
  const ScreenMyPageHistory({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final feedbacks = ref.watch(feedbackListProvider);
    // final feedbackFilters = ref.watch(feedbackFilterProvider);
    final feedbackTokenController =
        ref.watch(selectedFeedbackTokenProvider.notifier);
    // final feedbackFilterController = ref.watch(feedbackFilterProvider.notifier);

    return Column(children: [
      /// 총 지출금액
      Padding(
        padding: EdgeInsets.all(15.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: FColors.grey_2, width: 4),
            borderRadius: BorderRadius.circular(7.0),
          ),
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('총 지출금액'),
                RichText(
                  text: const TextSpan(
                      text: "107,820 ",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                          color: FColors.blue),
                      children: [
                        TextSpan(
                            text: "원",
                            style: TextStyle(
                              color: FColors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.normal,
                            ))
                      ]),
                )
              ],
            ),
          ),
        ),
      ),

      const Divider(height: 1),
      Expanded(
        child: ContainedTabBarView(
          tabs: const [
            Text('전체보기'),
            Text('답변대기'),
            Text('답변완료'),
          ],
          tabBarProperties: const TabBarProperties(
            height: 40.0,
            indicatorColor: FColors.grey_0,
            indicatorWeight: 6.0,
            labelColor: FColors.black,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
          ),
          views: [
            Column(children: [
              const Divider(height: 1),
              feedbacks.maybeWhen(
                  success: (feedbacks) => _buildFeedbackListView(
                      context, feedbacks, feedbackTokenController),
                  error: (err) => Center(
                        child: Text(err.toString()),
                      ),
                  orElse: () => const Expanded(
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      )),
            ]),
            Column(children: [
              const Divider(height: 1),
              feedbacks.maybeWhen(
                  success: (feedbacks) => _buildFeedbackListView(
                      context, feedbacks, feedbackTokenController),
                  error: (err) => Center(
                        child: Text(err.toString()),
                      ),
                  orElse: () => const Expanded(
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      )),
            ]),
            Column(children: [
              const Divider(height: 1),
              feedbacks.maybeWhen(
                  success: (feedbacks) => _buildFeedbackListView(
                      context, feedbacks, feedbackTokenController),
                  error: (err) => Center(
                        child: Text(err.toString()),
                      ),
                  orElse: () => const Expanded(
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      )),
            ]),
          ],
          onChange: (index) => print(index),
        ),
      ),
    ]);
  }

  Widget _buildFeedbackListView(
      final BuildContext context,
      List<FitqaFeedback> feedbacks,
      StateController<String> feedbackTokenController) {
    return Expanded(
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 8),
        itemCount: feedbacks.length,
        itemBuilder: (context, index) => FeedbackListViewItem(
          feedback: feedbacks[index],
          onPressed: () {
            feedbackTokenController.state = feedbacks[index].feedbackToken;

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ScreenFeedbackDetail()),
            );
          },
        ),
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
