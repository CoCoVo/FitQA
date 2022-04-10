import 'package:fitqa/src/provider/feedback_provider.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SectionFeedbackComment extends ConsumerWidget {
  SectionFeedbackComment({Key? key, this.feedbackToken}) : super(key: key);

  String? feedbackToken;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          FeedbackComment(),
          FeedbackComment(),
          FeedbackWrite(feedbackToken: feedbackToken),
        ],
      ),
    );
  }
}

class FeedbackComment extends StatelessWidget {
  const FeedbackComment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "운동조아",
            style: TextStyle(
                fontSize: 14,
                color: FColors.black,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "운동 얼마나 하셨나요?",
                style: TextStyle(fontSize: 14, color: FColors.black),
              ),
              Row(
                children: [
                  Text(
                    "3일 전",
                    style: TextStyle(fontSize: 10, color: FColors.black),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    "좋아요 1개",
                    style: TextStyle(fontSize: 10, color: FColors.black),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class FeedbackWrite extends ConsumerWidget {
  FeedbackWrite({Key? key, this.feedbackToken}) : super(key: key);

  String? feedbackToken;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 50,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 12,
            backgroundColor: FColors.grey_2,
          ),
          SizedBox(
            width: 8,
          ),
          Expanded(
            child: TextField(
              onChanged: (value) =>
                  {ref.read(commentProvider.notifier).state = value},
              decoration: const InputDecoration(
                  border: UnderlineInputBorder(), hintText: "댓글쓰기"),
            ),
          ),
          TextButton(
              onPressed: () {
                if (feedbackToken != null) {
                  ref.read(registerFeedbackCommentProvider(feedbackToken!));
                }
              },
              child: Text("게시"))
        ],
      ),
    );
  }
}
