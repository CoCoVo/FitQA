import 'package:fitqa/src/common/fitqa_icon.dart';
import 'package:fitqa/src/presentation/widgets/trainer/area_small_widget.dart';
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
                    child: buildDetailHeader())),
            Positioned(
                top: FDimen.trainerDetailBackgroundHeight - 40,
                left: 20,
                right: 20,
                child: buildFeedbackRequester())
          ],
        ));
  }

  Widget buildDetailHeader() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Image.network(mockTrainerImage_2,
              fit: BoxFit.cover,
              height: FDimen.trainerDetailProfileSize,
              width: FDimen.trainerDetailProfileSize),
        ),
        const SizedBox(height: 33),
        Text("강경원 트레이너",
            style: const TextStyle(
                color: FColors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold)),
        const SizedBox(height: 16),
        Text("보디빌딩",
            style: const TextStyle(color: FColors.white, fontSize: 14)),
        const SizedBox(height: 14),
        Row(
          children: [
            AreaSmallWidget("팔",
                textColor: FColors.white,
                backgroundColor: FColors.transparent,
                borderColor: FColors.white),
            SizedBox(width: 10),
            AreaSmallWidget(
              "어깨",
              textColor: FColors.white,
              backgroundColor: FColors.transparent,
              borderColor: FColors.white,
            )
          ],
        )
      ],
    );
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
            buildIntroduce(),
            buildSns(),
            buildCareerSummary(),
            buildCareerDetail(),
            buildLicense(),
            buildFeedbackPriceInfo(),
            buildFeedbackListHeader()
          ],
        ),
      ));

  Widget buildIntroduce() => Container(
        padding: EdgeInsets.symmetric(vertical: 60, horizontal: 35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Image.network(mockTrainerImage_2,
                  fit: BoxFit.cover,
                  height: FDimen.trainerDetailIntroduceImageSize,
                  width: FDimen.trainerDetailIntroduceImageSize),
            ),
            SizedBox(height: 22),
            Text(
              "안녕하세요~ 트레이너 강경원입니다.",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 22),
            Text(
                "우리가 하는 운동들은 움직임이라는 것을 기반으로 이루어집니다.\n이 움직임을 이해하지 못하면 운동 효율, "
                "퍼포먼스가 나오지 않으며 부상으로 이루어질 수 있습니다.\n\n올바른 움직임을 가이드로 통증없이 부상없이 "
                "훨씬 더 큰 효율을 내는 운동을 가르쳐드리겠습니다.",
                style: TextStyle(fontSize: 16, height: 1.5)),
          ],
        ),
      );

  Widget buildSns() => Container(
        padding: EdgeInsets.fromLTRB(17, 0, 17, 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("연관링크", style: TextStyle(fontSize: 16)),
            SizedBox(height: 16),
            Divider(height: 1, color: FColors.line, thickness: 1),
            SizedBox(height: 19),
            Padding(
              padding: EdgeInsets.only(left: 16),
              child: Row(
                children: [
                  SizedBox(
                    height: FDimen.trainerDetailSnsSize,
                    width: FDimen.trainerDetailSnsSize,
                    child: Icon(FitQaIcon.facebook),
                  ),
                  SizedBox(width: 16),
                  Text("강경원", style: TextStyle(fontSize: 14))
                ],
              ),
            ),
            SizedBox(height: 14),
            Padding(
              padding: EdgeInsets.only(left: 16),
              child: Row(
                children: [
                  SizedBox(
                    height: FDimen.trainerDetailSnsSize,
                    width: FDimen.trainerDetailSnsSize,
                    child: Icon(FitQaIcon.instagram),
                  ),
                  SizedBox(width: 16),
                  Text("dr.kangkyungwon", style: TextStyle(fontSize: 14))
                ],
              ),
            ),
            SizedBox(height: 14),
            Padding(
              padding: EdgeInsets.only(left: 16),
              child: Row(
                children: [
                  SizedBox(
                    height: FDimen.trainerDetailSnsSize,
                    width: FDimen.trainerDetailSnsSize,
                    child: Icon(FitQaIcon.facebook),
                  ),
                  SizedBox(width: 16),
                  Text("강경원", style: TextStyle(fontSize: 14))
                ],
              ),
            ),
            SizedBox(height: 31),
            Divider(color: FColors.black, height: 1, thickness: 3),
          ],
        ),
      );

  Widget buildCareerSummary() => Container(
        padding: EdgeInsets.fromLTRB(17, 0, 17, 24),
        child: Column(
          children: [
            Text(
              "경력 & 학력/자격면허",
              style: TextStyle(fontSize: 16, color: FColors.black),
            ),
            SizedBox(height: 10),
            Text("Mr.Korea 클래식 보디빌딩 1위\n선수 전문 트레이너",
                style:
                    TextStyle(fontSize: 20, height: 1.2, color: FColors.blue)),
            SizedBox(height: 40),
          ],
        ),
      );

  Widget buildCareerDetail() => Container(
        padding: EdgeInsets.fromLTRB(17, 0, 17, 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("경력", style: TextStyle(fontSize: 14)),
            SizedBox(height: 18),
            Divider(color: FColors.line, height: 1, thickness: 1),
            SizedBox(height: 16),
            Text("1997년 미스터 유니버시티 1위",
                style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.bold, height: 1.5)),
            Text("1999년 미스터 코리아 우승",
                style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.bold, height: 1.5)),
            Text("2002년 부산 아시안 게임 보디빌딩(-85kg) 금메달",
                style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.bold, height: 1.5)),
            Text("2015년 Europa Dallas Pro 212 보디빌딩 - 1위",
                style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.bold, height: 1.5)),
          ],
        ),
      );

  Widget buildLicense() => Container(
      padding: EdgeInsets.fromLTRB(17, 45, 17, 40),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text("학력 & 자격면허", style: TextStyle(fontSize: 14)),
        SizedBox(height: 18),
        Divider(color: FColors.line, height: 1, thickness: 1),
        SizedBox(height: 16),
        Text("건강운동관리사 - 문화체육관광부",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, height: 1.5)),
        Text("생활스포츠지도사 2급 보디빌딩 - 문화체육관광부",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, height: 1.5)),
        Text("Personal Trainer - 대한예방운동협회",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, height: 1.5)),
        Text("Conditioning care Specialist - 대한예방운동협회",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, height: 1.5)),
      ]));

  Widget buildFeedbackPriceInfo() => Container(
      padding: EdgeInsets.fromLTRB(17, 0, 17, 40),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text("상담안내", style: TextStyle(fontSize: 14)),
        SizedBox(height: 18),
        Divider(color: FColors.line, height: 1, thickness: 1),
        SizedBox(height: 16),
        Card(
          child: Container(
            height: FDimen.trainerDetailFeedbackPriceInfoSize,
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: ListTile(
              title: Text("하체 상담 (스쿼트, 레그프레스 등)",
                  style: TextStyle(fontSize: 14, color: FColors.black)),
              subtitle: Text("11,000 원",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: FColors.black)),
            ),
          ),
        ),
        SizedBox(height: 16),
        Card(
          child: Container(
            height: FDimen.trainerDetailFeedbackPriceInfoSize,
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: ListTile(
              title: Text("어깨 상담 (스쿼트, 레그프레스 등)",
                  style: TextStyle(fontSize: 14, color: FColors.black)),
              subtitle: Text(
                "6,000 원",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: FColors.black),
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            ),
          ),
        ),
      ]));

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
