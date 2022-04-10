import 'package:fitqa/src/common/fitqa_icon.dart';
import 'package:fitqa/src/presentation/widgets/trainer/area_small_widget.dart';
import 'package:fitqa/src/presentation/widgets/trainer/trainer_career_list.dart';
import 'package:fitqa/src/presentation/widgets/trainer/trainer_career_summary.dart';
import 'package:fitqa/src/presentation/widgets/trainer/trainer_detail_info.dart';
import 'package:fitqa/src/presentation/widgets/trainer/trainer_feedback_price_info.dart';
import 'package:fitqa/src/presentation/widgets/trainer/trainer_introduce.dart';
import 'package:fitqa/src/presentation/widgets/trainer/trainer_license_list.dart';
import 'package:fitqa/src/presentation/widgets/trainer/trainer_sns.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:fitqa/src/theme/dimen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const String mockBackgroundImg = 'https://s3-alpha-sig.figma'
    '.com/img/657b/7dac/944c3b3bb5032a2e1708d02eb0362be5?Expires=1649635200&Signature=SIOSvholFBxzhtVDR5BunPjsIabsKlSp4NgFjo9~C-klVGYVh1IS-N2B0xXilNq4Sma5C~W5FylEQizLqzpNQNZWHevbx8jz1zq55zluny6idt19XwTozSBH5ALS4Fc0W05BNUpuAlX1QbpuqkrsrD7Sc~hDUyH3a0f372KABPT44C-D8AO-2n4Pp3qQO6jnGBXBcmXu2KES1CPAnxjo4EAwCQVBbXsxUhY-PKfrNYo8fc62WdmmI-QjCEGJRfMOjJ7Jfing0XfTQwpXGQnwZcKEJqnLTXwMPDBaffcldpbp-vFRc3IvlEaNdbd94iIx~OG6dE7gKwzNnPylAfv2xw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA';

const String mockTrainerImage_2 =
    'https://s3-alpha-sig.figma.com/img/ac38/00a5/1cb4dbc07970132c01ccc8b55649cc22?Expires=1649635200&Signature=E3ScKCZzktmHyUsEHdyo5mSp3FgNDyiO9coAlhATxbSk5xmc2P5f5TZ4L2QgRdrgsDJcvPNB0WyvtUXUJeQO8iQ8oclyd80oAyrOjePQv5nBmqvcbUcFWpCzw0~KYyzKpKFnzWM8m8dLa9VNd9zwXeDbPyR3rVHzsM41EXJq11akS~aoZiLKi4xIMxg~VmLXUrwY3E4~YryMJFBjgzsoMBJCIShlAa6jP1SJNOuSaOuEuFube9y8j-J32rHrs4peDJ8fvF5biGEjnq1AfNwHPsdq3XmNyZ~PHxLoip7jfth8sSkDQd8V~pULsF6WNkwMgbn9IhNDx1ep5CKQljCUxQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA';

const List<int> feedbackGroup = [0, 1, 2];

class ScreenTrainerDetail extends ConsumerStatefulWidget {
  const ScreenTrainerDetail({Key? key}) : super(key: key);

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
      title: Text('목록'),
      leading: Icon(FitQaIcon.back),
      actions: [Icon(FitQaIcon.modification)],
      centerTitle: false,
      flexibleSpace: buildFlexibleSpace(),
    );
  }

  Widget buildFlexibleSpace() {
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
                    padding: EdgeInsets.fromLTRB(15, 60, 0, 0),
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(mockBackgroundImg),
                            fit: BoxFit.fitHeight)),
                    child: TrainerDetailInfo(
                        profileImageUrl: mockTrainerImage_2,
                        name: "강경원",
                        style: "보디빌딩",
                        interestAreas: ["팔", "어깨"]))),
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
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: ListTile(
              title: Text("상담하기", style: TextStyle(fontSize: 18)),
              trailing: Icon(FitQaIcon.enter),
            ),
          ),
          Divider(
              color: FColors.line,
              height: 1,
              thickness: 1,
              indent: 16,
              endIndent: 16),
          Container(
            height: FDimen.trainerDetailFeedbackRequestItemSize,
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: ListTile(
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
            TrainerIntroduce(),
            TrainerSns(),
            TrainerCareerSummary(),
            TrainerCareerList(),
            TrainerLicenseList(),
            TrainerFeedbackPriceInfo(),
            buildFeedbackListHeader()
          ],
        ),
      ));

  Widget buildFeedbackListHeader() => Container(
      padding: EdgeInsets.fromLTRB(17, 0, 17, 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text("답변 내역", style: TextStyle(fontSize: 14)),
        SizedBox(height: 18),
        Divider(color: FColors.line, height: 1, thickness: 1),
      ]));

  Widget buildFeedbackListTab() => SliverPersistentHeader(
      pinned: true, delegate: FeedbackTabBar(this.tabController));

  Widget buildFeedbackListDivider() => SliverToBoxAdapter(
      child: Container(
          padding: EdgeInsets.fromLTRB(17, 10, 17, 0),
          color: FColors.white,
          child: Divider(color: FColors.line, height: 1, thickness: 1)));

  Widget buildFeedbackListView() => SliverFillRemaining(
        hasScrollBody: true,
        child: TabBarView(
          controller: this.tabController,
          children: [
            CustomScrollView(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              slivers: [
                SliverList(
                    delegate: SliverChildBuilderDelegate(
                        (context, index) => Container(
                              padding: EdgeInsets.all(16),
                              child: Text("Hello 1"),
                            ),
                        childCount: 3))
              ],
            ),
            CustomScrollView(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              slivers: [
                SliverList(
                    delegate: SliverChildBuilderDelegate(
                        (context, index) => Container(
                              padding: EdgeInsets.all(16),
                              child: Text("Hello 2"),
                            ),
                        childCount: 3))
              ],
            ),
            CustomScrollView(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              slivers: [
                SliverList(
                    delegate: SliverChildBuilderDelegate(
                        (context, index) => Container(
                              padding: EdgeInsets.all(16),
                              child: Text("Hello 3"),
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
        controller: this.tabController,
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
