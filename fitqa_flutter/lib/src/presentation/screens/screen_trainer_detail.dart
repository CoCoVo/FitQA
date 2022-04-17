import 'package:fitqa/src/common/fitqa_icon.dart';
import 'package:fitqa/src/domain/entities/trainer/trainer/trainer.dart';
import 'package:fitqa/src/domain/entities/trainer/trainer_image/trainer_image.dart';
import 'package:fitqa/src/presentation/screens/screen_edit_trainer_detail.dart';
import 'package:fitqa/src/presentation/screens/screen_feedback_request.dart';
import 'package:fitqa/src/presentation/widgets/trainer/detail/trainer_career_list.dart';
import 'package:fitqa/src/presentation/widgets/trainer/detail/trainer_career_summary.dart';
import 'package:fitqa/src/presentation/widgets/trainer/detail/trainer_detail_info.dart';
import 'package:fitqa/src/presentation/widgets/trainer/detail/trainer_introduce.dart';
import 'package:fitqa/src/presentation/widgets/trainer/detail/trainer_license_list.dart';
import 'package:fitqa/src/presentation/widgets/trainer/detail/trainer_sns.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:fitqa/src/theme/dimen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final selectedTrainerTokenProvider = StateProvider<String>((ref) => "");

class ScreenTrainerDetail extends ConsumerWidget {
  ScreenTrainerDetail({Key? key, required this.trainer}) : super(key: key);

  final Trainer trainer;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [buildAppBar(context), buildContext(), /*buildFeedbackListView()*/],
      ),
    );
  }

  Widget buildAppBar(BuildContext context) {
    return SliverAppBar(
      backgroundColor: FColors.black,
      expandedHeight: FDimen.trainerDetailExpandedHeight,
      title: Transform(
        transform: Matrix4.translationValues(-20, 0, 0),
        child: const Text('목록'),
      ),
      leading: InkWell(
        onTap: () => Navigator.of(context).pop(),
        child: const Icon(FitQaIcon.back),
      ),
      actions: [
        Padding(
            padding: const EdgeInsets.only(right: 10, top: 10),
            child: InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ScreenEditTrainerDetail())),
              child: const Icon(FitQaIcon.modification),
            ))
      ],
      centerTitle: false,
      flexibleSpace: buildFlexibleSpace(context),
    );
  }

  Widget buildFlexibleSpace(BuildContext context) {
    String backgroundImageUrl = trainer.images
        .firstWhere((element) => element.imageType == ImageType.background)
        .imageUrl;
    return FlexibleSpaceBar(
        collapseMode: CollapseMode.pin,
        background: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              color: FColors.white,
            ),
            Positioned.fill(
                bottom: FDimen.trainerDetailExpandedHeight -
                    FDimen.trainerDetailBackgroundHeight,
                child: Container(
                    height: FDimen.trainerDetailBackgroundHeight,
                    padding: const EdgeInsets.fromLTRB(15, 60, 0, 0),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(backgroundImageUrl),
                            fit: BoxFit.cover)),
                    child: TrainerDetailInfo())),
            Positioned(
                top: FDimen.trainerDetailBackgroundHeight - 40,
                left: 20,
                right: 20,
                child: buildFeedbackRequester(context))
          ],
        ));
  }

  Widget buildFeedbackRequester(BuildContext context) {
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
                        text: " /${trainer.feedbackPrices.length}종류",
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
                        text: " /${trainer.feedbacks.length}건",
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

  Widget buildContext() => SliverToBoxAdapter(
          child: Container(
        color: FColors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TrainerIntroduce(trainer: trainer),
            TrainerSns(trainer: trainer),
            TrainerCareerSummary(
                representativeCareer: trainer.representativeCareer),
            TrainerCareerList(trainerCareers: trainer.careers),
            TrainerLicenseList(trainerLicenses: trainer.careers),
          ],
        ),
      ));
/*
  Widget buildFeedbackListView() => SliverFillRemaining(
    hasScrollBody: true,
    child: TrainerFeedbackTab()
  );*/
}
