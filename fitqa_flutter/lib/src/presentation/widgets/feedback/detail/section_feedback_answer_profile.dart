import 'package:fitqa/src/application/feedback/feedback_detail.dart';
import 'package:fitqa/src/common/image_utils.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SectionFeedbackAnswerProfile extends ConsumerWidget {
  const SectionFeedbackAnswerProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final feedbackDetail = ref.watch(feedbackDetailProvider).data!;

    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 22),
      child: Row(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundImage: NetworkImage(
                ImageUtils.getTrainerProfile(feedbackDetail.trainer.images)),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${feedbackDetail.trainer.name}님 답변",
                style: const TextStyle(
                  fontSize: 18,
                  color: FColors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  const Text(
                    "대표이력",
                    style: TextStyle(
                        fontSize: 12,
                        color: FColors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    "|",
                    style: TextStyle(color: FColors.black),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    feedbackDetail.trainer.representativeFootprints,
                    style: const TextStyle(fontSize: 12, color: FColors.black),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
