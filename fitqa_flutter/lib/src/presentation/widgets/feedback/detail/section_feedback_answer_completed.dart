import 'package:fitqa/src/application/feedback/feedback_detail.dart';
import 'package:fitqa/src/presentation/widgets/common/network_video_player.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SectionFeedbackAnswerCompleted extends ConsumerWidget {
  const SectionFeedbackAnswerCompleted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final feedbackDetail = ref.watch(feedbackDetailProvider);

    return feedbackDetail.maybeWhen(
        success: (feedback) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 202,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: NetworkVideoPlayer(
                      url:
                          'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4'),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                feedback.answer!.description,
                style: TextStyle(fontSize: 18, color: FColors.black),
              )
            ],
          );
        },
        orElse: () => const SizedBox());
  }
}
