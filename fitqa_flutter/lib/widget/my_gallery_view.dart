import 'package:badges/badges.dart';
import 'package:fitqa/theme/dimen.dart';
import 'package:fitqa/widget/my_gallery_item.dart';
import 'package:flutter/material.dart';

const double addIconSize = 15;

class MyGalleryView extends StatelessWidget {
  const MyGalleryView({Key? key}) : super(key: key);

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
        padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Badge(
              badgeContent:
                  Text("7", style: const TextStyle(color: Colors.white)),
              child: const Text("전체 보기",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              badgeColor: Colors.blue.withOpacity(0.5),
              position: const BadgePosition(end: -30),
            ),
            Container(
              child: RawMaterialButton(
                  onPressed: () {},
                  fillColor: Colors.blueAccent,
                  elevation: 2.0,
                  child: const Icon(
                    Icons.add,
                    size: addIconSize,
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.all(addIconSize * 0.5),
                  shape: const CircleBorder()),
            )
          ],
        ),
      );

  Widget buildGridView() => Expanded(
          child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.5,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemBuilder: (BuildContext context, int index) => MyGalleryItem(),
        itemCount: 7,
      ));
}
