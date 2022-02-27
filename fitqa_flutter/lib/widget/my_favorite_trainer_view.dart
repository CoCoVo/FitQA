import 'package:badges/badges.dart';
import 'package:fitqa/widget/my_favorite_trainer_item.dart';
import 'package:flutter/material.dart';
import 'package:fitqa/theme/dimen.dart';

class MyFavoriteTrainerView extends StatelessWidget {
  const MyFavoriteTrainerView({Key? key}) : super(key: key);

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
            children: [
              buildTopBar(),
              buildGridView(),
            ],
          ),
        ));
  }

  Widget buildTopBar() => Container(
      height: FDimen.defaultTabBarSize,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(10),
      child: Badge(
        badgeContent: Text("7", style: const TextStyle(color: Colors.white)),
        child: const Text("전체 보기",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            )),
        badgeColor: Colors.blue.withOpacity(0.5),
        position: BadgePosition(end: -30),
      ));

  Widget buildGridView() => Expanded(
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
        ),
        itemBuilder: (BuildContext context, int index) =>
            MyFavoriteTrainerItem(),
        itemCount: 7,
      ));
}
