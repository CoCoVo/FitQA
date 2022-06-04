import 'package:fitqa/src/application/feedback/feedback_detail.dart';
import 'package:fitqa/src/presentation/widgets/common/ThinDivider.dart';
import 'package:fitqa/src/presentation/widgets/common/appbar/back_icon.dart';
import 'package:fitqa/src/presentation/widgets/common/carousel_with_indicator.dart';
import 'package:fitqa/src/presentation/widgets/common/network_video_player.dart';
import 'package:fitqa/src/presentation/widgets/feedback/detail/section_feedback_answer.dart';
import 'package:fitqa/src/presentation/widgets/feedback/detail/section_feedback_comment.dart';
import 'package:fitqa/src/presentation/widgets/feedback/detail/section_feedback_content.dart';
import 'package:fitqa/src/presentation/widgets/feedback/detail/section_feedback_like.dart';
import 'package:fitqa/src/presentation/widgets/feedback/detail/section_user_profile.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:fitqa/src/theme/dimen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ScreenFeedbackDetail extends ConsumerWidget {
  ScreenFeedbackDetail({Key? key}) : super(key: key);

  final List<String> videoList = [
    'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
  ];

  final List<Widget> _contentChildren = [
    SectionUserProfile(),
    ThinDivider(),
    SectionFeedbackContent(),
    ThinDivider(),
    SectionFeedbackAnswer(),
    SectionFeedbackLike(),
    ThinDivider(),
    SectionFeedbackComment(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final feedbackDetail = ref.watch(feedbackDetailProvider);

    return Scaffold(
      backgroundColor: FColors.white,
      body: feedbackDetail.maybeWhen(
          success: (_) => _buildFeedbackDetail(context),
          orElse: () => const Center(
                child: CircularProgressIndicator(),
              )),
    );
  }

  Widget _buildFeedbackDetail(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverAppBar(
        expandedHeight: 400,
        pinned: true,
        titleSpacing: 0,
        leading: BackIcon(
          onPressed: () => Navigator.pop(context),
        ),
        title: Text('목록'),
        flexibleSpace: FlexibleSpaceBar(
          background: CarouselWithIndicator(
            height: 400,
            children: videoList.map((url) {
              return NetworkVideoPlayer(url: url);
            }).toList(),
          ),
        ),
      ),
      SliverList(
          delegate: SliverChildListDelegate(_contentChildren
              .map((e) => Padding(
                  child: e,
                  padding: const EdgeInsets.symmetric(
                      horizontal: FDimen.defaultHorizontalPadding)))
              .toList()))
    ]);
  }
}
