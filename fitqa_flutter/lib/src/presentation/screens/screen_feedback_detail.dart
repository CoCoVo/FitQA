import 'package:fitqa/src/presentation/widgets/common/ThinDivider.dart';
import 'package:fitqa/src/presentation/widgets/common/carousel_with_indicator.dart';
import 'package:fitqa/src/presentation/widgets/common/fitqa_appbar_sub.dart';
import 'package:fitqa/src/presentation/widgets/common/network_video_player.dart';
import 'package:fitqa/src/presentation/widgets/feedback/detail/section_feedback_answer.dart';
import 'package:fitqa/src/presentation/widgets/feedback/detail/section_feedback_comment.dart';
import 'package:fitqa/src/presentation/widgets/feedback/detail/section_feedback_content.dart';
import 'package:fitqa/src/presentation/widgets/feedback/detail/section_feedback_like.dart';
import 'package:fitqa/src/presentation/widgets/feedback/detail/section_user_profile.dart';
import 'package:fitqa/src/provider/feedback_provider.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:fitqa/src/theme/dimen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ScreenFeedbackDetail extends ConsumerWidget {
  ScreenFeedbackDetail({Key? key, required this.feedbackToken})
      : super(key: key);

  final List<String> videoList = [
    'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
  ];

  String feedbackToken;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final feedbackFuture = ref.watch(feedbackDetailProvider(feedbackToken));
    return Scaffold(
        backgroundColor: FColors.white,
        appBar: FitqaAppbarSub(
          title: '목록',
          onPressed: () => Navigator.pop(context),
        ),
        extendBodyBehindAppBar: true,
        body: feedbackFuture.when(
          data: (feedback) {
            return SafeArea(
              top: false,
              child: ListView(padding: EdgeInsets.zero, children: [
                CarouselWithIndicator(
                  height: 400,
                  children: videoList.map((url) {
                    return NetworkVideoPlayer(url: url);
                  }).toList(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: FDimen.defaultHorizontalPadding),
                  child: Column(
                    children: [
                      SectionUserProfile(),
                      ThinDivider(),
                      SectionFeedbackContent(
                          title: feedback.title, content: feedback.content),
                      ThinDivider(),
                      SectionFeedbackAnswer(),
                      SectionFeedbackLike(),
                      ThinDivider(),
                      SectionFeedbackComment(),
                    ],
                  ),
                )
              ]),
            );
          },
          error: (error, e) => Center(
            child: Text(error.toString()),
          ),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
        ));
  }
}
