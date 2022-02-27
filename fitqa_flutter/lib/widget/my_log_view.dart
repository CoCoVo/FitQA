import 'package:badges/badges.dart';
import 'package:fitqa/theme/dimen.dart';
import 'package:fitqa/widget/my_log_item.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyLogView extends StatelessWidget {
  const MyLogView({Key? key}) : super(key: key);

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
              buildTopBar(totalExpenditure: 142000),
              buildListView(),
            ],
          ),
        ));
  }

  Widget buildTopBar({required int totalExpenditure}) => Container(
        height: FDimen.defaultTabBarSize,
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Badge(
              badgeContent:
                  Text("25", style: const TextStyle(color: Colors.white)),
              child: const Text("이용 내역",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              badgeColor: Colors.blue.withOpacity(0.5),
              position: BadgePosition(end: -30),
            ),
            Text(
              "총 지출 : ${NumberFormat.simpleCurrency(locale: "ko_KR", name: "", decimalDigits: 0).format(totalExpenditure)}원",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      );

  Widget buildListView() => Expanded(
      child: ListView.separated(
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return MyLogItem();
          },
          separatorBuilder: (BuildContext context, int index) =>
              SizedBox(height: 10),
          itemCount: 25));
}
