import 'package:fitqa/widget/my_log_view.dart';
import 'package:flutter/material.dart';

const double coverHeight = 150.0;
const String coverImageURL = 'https://images.unsplash'
    '.com/photo-1461749280684-dccba630e2f6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2069&q=80';
const double profileHeight = 100.0;
const double profileOffset = 25.0;
const String profileImageURL = 'https://cdn.pixabay'
    '.com/photo/2013/07/13/10/07/man-156584_960_720.png';

const List<String> traineeTabItems = ['내가 쓴 글', '찜한 트레이너', '갤러리', '이용내역'];

class ScreenSetting extends StatefulWidget {
  const ScreenSetting({Key? key}) : super(key: key);

  @override
  _ScreenSettingState createState() => _ScreenSettingState();
}

class _ScreenSettingState extends State<ScreenSetting>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late ScrollController _scrollController;
  bool fixedScroll = false;

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      if (fixedScroll) {
        _scrollController.jumpTo(0);
      }
    });

    _tabController = TabController(length: traineeTabItems.length, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (context, value) {
          return [
            SliverToBoxAdapter(child: buildTop()),
            SliverToBoxAdapter(child: buildContent()),
            SliverToBoxAdapter(child: buildTab())
          ];
        },
        body: Container(
            child: TabBarView(
          controller: _tabController,
          children: [
            Center(child: Text("1")),
            Center(child: Text("1")),
            Center(child: Text("1")),
            MyLogView()
          ],
        )));
  }

  Widget buildTop() {
    final top = coverHeight - profileHeight * 0.5 - profileOffset;
    final bottom = profileHeight * 0.5 - profileOffset;
    return Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: bottom),
            child: buildCoverImage(),
          ),
          Positioned(top: top, child: buildProfileImage())
        ]);
  }

  Widget buildContent() {
    String userName = 'Ho2eny';

    return Column(
      children: [
        const SizedBox(height: 20),
        Text(
          userName,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        Divider(height: 1, thickness: 1, color: Colors.grey.shade300),
      ],
    );
  }

  Widget buildCoverImage() => Container(
      color: Colors.grey,
      child: Image.network(coverImageURL,
          width: double.infinity, height: coverHeight, fit: BoxFit.cover));

  Widget buildProfileImage() => CircleAvatar(
        radius: profileHeight * 0.5,
        backgroundColor: Colors.grey.shade800,
        backgroundImage: NetworkImage(profileImageURL),
      );

  Widget buildTab() => TabBar(
      controller: _tabController,
      indicatorColor: Colors.black,
      indicatorSize: TabBarIndicatorSize.label,
      labelColor: Colors.black,
      unselectedLabelColor: Colors.grey,
      labelStyle: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w500,
      ),
      tabs: traineeTabItems.map((e) => new Tab(text: e)).toList());
}
