import 'package:fitqa/theme/dimen.dart';
import 'package:fitqa/widget/my_post_item.dart';
import 'package:flutter/material.dart';

class MyPostView extends StatelessWidget {
  const MyPostView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey.shade100,
        padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(8)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.6),
                  blurRadius: 1,
                )
              ]),
          child: Column(
            children: [buildTopBar(), buildListView()],
          ),
        ));
  }

  Widget buildTopBar() => Container(
      height: FDimen.defaultTabBarSize,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(10),
      child: const Text("전체 보기",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          )));

  Widget buildListView() => Expanded(
      child: ListView.separated(
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return MyPostItem();
          },
          separatorBuilder: (BuildContext context, int index) =>
              SizedBox(height: 10),
          itemCount: 5));
}
