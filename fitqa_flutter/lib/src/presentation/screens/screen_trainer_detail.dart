import 'package:fitqa/src/common/fitqa_icon.dart';
import 'package:fitqa/src/domain/entities/trainer/trainer/trainer.dart';
import 'package:fitqa/src/presentation/widgets/trainer/detail/trainer_career_list.dart';
import 'package:fitqa/src/presentation/widgets/trainer/detail/trainer_career_summary.dart';
import 'package:fitqa/src/presentation/widgets/trainer/detail/trainer_detail_info.dart';
import 'package:fitqa/src/presentation/widgets/trainer/detail/trainer_feedback_price_info.dart';
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
        slivers: [
          buildAppBar(),
          buildContext(),
          buildFeedbackListTab(),
          buildFeedbackListDivider(),
          buildFeedbackListView()
        ],
      ),
    );
  }

  Widget buildAppBar() {
    return SliverAppBar(
      backgroundColor: FColors.black,
      expandedHeight: FDimen.trainerDetailExpandedHeight,
      title: const Text('목록'),
      leading: InkWell(
        onTap: () => Navigator.of(context).pop(),
        child: const Icon(FitQaIcon.back),
      ),
      actions: [
        InkWell(
          onTap: () => {},
          child: const Icon(FitQaIcon.modification),
        )
      ],
      centerTitle: false,
      flexibleSpace: buildFlexibleSpace(),
    );
  }

  Widget buildFlexibleSpace() {
    String backgroundImageUrl = widget.trainer.images
        .firstWhere((element) => element.imageType == "BACKGROUND")
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
                            fit: BoxFit.fitHeight)),
                    child: TrainerDetailInfo(
                      trainer: widget.trainer,
                    ))),
            Positioned(
                top: FDimen.trainerDetailBackgroundHeight - 40,
                left: 20,
                right: 20,
                child: buildFeedbackRequester())
          ],
        ));
  }

  Widget buildFeedbackRequester() {
    return Card(
        child: SizedBox(
      height: FDimen.trainerDetailFeedbackRequesterSize,
      child: Column(
        children: [
          Container(
            height: FDimen.trainerDetailFeedbackRequestItemSize,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: const ListTile(
              title: Text("상담하기", style: TextStyle(fontSize: 18)),
              trailing: Icon(FitQaIcon.enter),
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
            TrainerFeedbackPriceInfo(trainer: widget.trainer),
            buildFeedbackListHeader()
          ],
        ),
      ));

  Widget buildFeedbackListHeader() => Container(
      padding: const EdgeInsets.fromLTRB(17, 0, 17, 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
        Text("답변 내역", style: TextStyle(fontSize: 14)),
        SizedBox(height: 18),
        Divider(color: FColors.line, height: 1, thickness: 1),
      ]));

  Widget buildFeedbackListTab() => SliverPersistentHeader(
      pinned: true, delegate: FeedbackTabBar(tabController));

  Widget buildFeedbackListDivider() => SliverToBoxAdapter(
      child: Container(
          padding: const EdgeInsets.fromLTRB(17, 10, 17, 0),
          color: FColors.white,
          child: const Divider(color: FColors.line, height: 1, thickness: 1)));

  Widget buildFeedbackListView() => SliverFillRemaining(
        hasScrollBody: true,
        child: TabBarView(
          controller: tabController,
          children: [
            CustomScrollView(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              slivers: [
                SliverList(
                    delegate: SliverChildBuilderDelegate(
                        (context, index) => Container(
                              padding: const EdgeInsets.all(16),
                              child: const Text("Hello 1"),
                            ),
                        childCount: 3))
              ],
            ),
            CustomScrollView(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              slivers: [
                SliverList(
                    delegate: SliverChildBuilderDelegate(
                        (context, index) => Container(
                              padding: const EdgeInsets.all(16),
                              child: const Text("Hello 2"),
                            ),
                        childCount: 3))
              ],
            ),
            CustomScrollView(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              slivers: [
                SliverList(
                    delegate: SliverChildBuilderDelegate(
                        (context, index) => Container(
                              padding: const EdgeInsets.all(16),
                              child: const Text("Hello 3"),
                            ),
                        childCount: 3))
              ],
            ),
          ],
        ),
      );
}

class FeedbackTabBar extends SliverPersistentHeaderDelegate {
  final TabController tabController;

  const FeedbackTabBar(this.tabController);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: FColors.white,
      child: TabBar(
        tabs: [
          Tab(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              color: Colors.white,
              child: const Text(
                "전체보기",
              ),
            ),
          ),
          Tab(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              color: Colors.white,
              child: const Text(
                "답변대기",
              ),
            ),
          ),
          Tab(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              color: Colors.white,
              child: const Text(
                "답변완료",
              ),
            ),
          ),
        ],
        controller: tabController,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        unselectedLabelColor: Colors.grey,
        labelColor: Colors.black,
        indicatorColor: Colors.transparent,
      ),
    );
  }

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }

  @override
  double get maxExtent => 48;

  @override
  double get minExtent => 48;
}
