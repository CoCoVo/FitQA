import 'package:fitqa/src/presentation/widgets/common/carousel_with_indicator.dart';
import 'package:fitqa/src/presentation/widgets/common/fitqa_appbar_sub.dart';
import 'package:fitqa/src/presentation/widgets/common/network_video_player.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';

class ScreenFeedbackDetail extends StatelessWidget {
  ScreenFeedbackDetail({Key? key}) : super(key: key);

  final List<String> videoList = [
    'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: FColors.white,
        appBar: FitqaAppbarSub(
          title: '목록',
          onPressed: () => Navigator.pop(context),
        ),
        extendBodyBehindAppBar: true,
        body: ListView(padding: EdgeInsets.zero, children: [
          CarouselWithIndicator(
            height: 400,
            children: videoList.map((url) {
              return NetworkVideoPlayer(url: url);
            }).toList(),
          ),
        ]));
  }
}
