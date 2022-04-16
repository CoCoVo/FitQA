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

const List<int> feedbackGroup = [0, 1, 2];

class ScreenTrainerDetail extends ConsumerStatefulWidget {
  const ScreenTrainerDetail({Key? key, required this.trainer})
      : super(key: key);

  final Trainer trainer;

  @override
  _ScreenTrainerDetailState createState() => _ScreenTrainerDetailState();
}

class _ScreenTrainerDetailState extends ConsumerState<ScreenTrainerDetail>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [buildAppBar(context), buildContext()],
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
                      builder: (context) => ScreenEditTrainerDetail())),
              child: const Icon(FitQaIcon.modification),
            ))
      ],
      centerTitle: false,
      flexibleSpace: buildFlexibleSpace(context),
    );
  }

  Widget buildFlexibleSpace(BuildContext context) {
    String backgroundImageUrl = widget.trainer.images
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
                    child: TrainerDetailInfo(
                      trainer: widget.trainer,
                    ))),
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
              title: Text("상담하기", style: TextStyle(fontSize: 18)),
              trailing: Icon(FitQaIcon.enter),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ScreenFeedbackRequest(trainer: widget.trainer))),
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
            child: const ListTile(
              title: Text("답변내역", style: TextStyle(fontSize: 18)),
              trailing: Icon(FitQaIcon.enter),
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
            TrainerIntroduce(trainer: widget.trainer),
            TrainerSns(trainer: widget.trainer),
            const TrainerCareerSummary(),
            const TrainerCareerList(),
            const TrainerLicenseList(),
          ],
        ),
      ));
}
