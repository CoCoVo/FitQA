import 'package:fitqa/src/application/feedback/feedback_detail.dart';
import 'package:fitqa/src/common/TimeUtils.dart';
import 'package:fitqa/src/presentation/widgets/common/small_info_box.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SectionUserProfile extends ConsumerWidget {
  const SectionUserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final feedbackDetail = ref.watch(feedbackDetailProvider).data!;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 26),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 23,
            backgroundColor: FColors.grey_2,
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "운동조아",
                  style: TextStyle(
                      fontSize: 16,
                      color: FColors.black,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  TimeUtils.timeAgo(feedbackDetail.createdAt),
                  style: TextStyle(
                    fontSize: 12,
                    color: FColors.black,
                  ),
                )
              ],
            ),
          ),
          SmallInfoBox(text: "답변대기")
        ],
      ),
    );
  }
}
