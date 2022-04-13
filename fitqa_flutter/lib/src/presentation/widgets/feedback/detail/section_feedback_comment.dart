import 'package:fitqa/src/application/feedback/feedback_detail.dart';
import 'package:fitqa/src/domain/entities/feedback/feedback_comment/feedback_comment.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SectionFeedbackComment extends ConsumerWidget {
  SectionFeedbackComment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final feedback = ref.watch(feedbackDetailProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          feedback.maybeWhen(
              success: (feedback) {
                return Column(
                    children: feedback.comments
                        .map((comment) =>
                            _SectionFeedbackComment(comment: comment))
                        .toList());
              },
              orElse: () => const Center(
                    child: CircularProgressIndicator(),
                  )),
          _SectionFeedbackWrite(),
        ],
      ),
    );
  }
}

class _SectionFeedbackComment extends StatelessWidget {
  _SectionFeedbackComment({Key? key, required this.comment}) : super(key: key);

  FeedbackComment comment;

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
                comment.comment,
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

class _SectionFeedbackWrite extends ConsumerWidget {
  _SectionFeedbackWrite({Key? key}) : super(key: key);

  final _commentProvider = StateProvider<String>((ref) => "");

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final feedbackController = ref.watch(feedbackDetailProvider.notifier);
    final commentContentController = ref.watch(_commentProvider.notifier);

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
              onChanged: (value) => {commentContentController.state = value},
              decoration: const InputDecoration(
                  border: UnderlineInputBorder(), hintText: "댓글쓰기"),
            ),
          ),
          TextButton(
              onPressed: () {
                feedbackController.addComment(commentContentController.state);
              },
              child: Text("게시"))
        ],
      ),
    );
  }
}
