import 'package:fitqa/src/presentation/widgets/common/fitqa_appbar_sub.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';

class ScreenFeedbackDetail extends StatelessWidget {
  const ScreenFeedbackDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: FColors.white,
        appBar: FitqaAppbarSub(
          title: '목록',
        ),
        extendBodyBehindAppBar: true, // overlay appbar with body.
        body: ListView(children: []));
  }
}
