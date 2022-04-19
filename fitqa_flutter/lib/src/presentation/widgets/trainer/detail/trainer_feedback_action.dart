import 'package:fitqa/src/application/trainer/trainer_detail.dart';
import 'package:fitqa/src/common/fitqa_icon.dart';
import 'package:fitqa/src/presentation/screens/screen_feedback_request.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:fitqa/src/theme/dimen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TrainerFeedbackAction extends ConsumerWidget {
  const TrainerFeedbackAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final trainerDetail = ref.watch(trainerDetailProvider).data!;

    return Card(
        child: SizedBox(
      height: FDimen.trainerDetailFeedbackRequesterSize,
      child: Column(
        children: [
          Container(
            height: FDimen.trainerDetailFeedbackRequestItemSize,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: ListTile(
              title: RichText(
                  text: TextSpan(
                      text: "상담하기",
                      style:
                          const TextStyle(fontSize: 18, color: FColors.black),
                      children: [
                    TextSpan(
                        text: " /${trainerDetail.feedbackPrices.length}종류",
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: FColors.blue))
                  ])),
              trailing: const Icon(FitQaIcon.enter),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ScreenFeedbackRequest())),
            ),
          ),
          const Divider(
              color: FColors.line,
              height: 1,
              thickness: 1,
              indent: 16,
              endIndent: 16),
          Container(
            height: FDimen.trainerDetailFeedbackRequestItemSize,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: ListTile(
              title: RichText(
                  text: TextSpan(
                      text: "답변하기",
                      style:
                          const TextStyle(fontSize: 18, color: FColors.black),
                      children: [
                    TextSpan(
                        text: " /${trainerDetail.feedbacks.length}건",
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: FColors.blue))
                  ])),
              trailing: const Icon(FitQaIcon.enter),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ScreenFeedbackRequest())),
            ),
          ),
        ],
      ),
    ));
  }
}
