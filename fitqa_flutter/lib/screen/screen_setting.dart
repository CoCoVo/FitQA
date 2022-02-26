import 'package:flutter/material.dart';

const double coverHeight = 150.0;
const String coverImageURL = 'https://images.unsplash'
    '.com/photo-1461749280684-dccba630e2f6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2069&q=80';
const double profileHeight = 100.0;
const double profileOffset = 25.0;
const String profileImageURL = 'https://cdn.pixabay'
    '.com/photo/2013/07/13/10/07/man-156584_960_720.png';

const List<String> traineeTabItems = ['내가 쓴 글', '찜한 트레이너', '갤러리', '이용내역'];

class ScreenSetting extends StatelessWidget {
  const ScreenSetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[buildTop(), buildContent()],
    );
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
        buildTabBar()
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

  Widget buildTabBar() => DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TabBar(
              isScrollable: true,
              indicatorColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              labelStyle: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w500,
              ),
              tabs: traineeTabItems.map((e) => new Tab(text: e)).toList()),
          SizedBox(
              height: 200,
              child: TabBarView(
                  children: traineeTabItems
                      .map((e) => new Center(child: Text(e)))
                      .toList()))
        ],
      ));
}
