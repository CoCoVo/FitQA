import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FeedbackCategoryDropdown extends StatelessWidget {
  FeedbackCategoryDropdown({
    Key? key,
  }) : super(key: key);

  List<FeedbackCategoryListViewItem> categoryList = [
    FeedbackCategoryListViewItem(
      title: "하체 상담",
      subtitle: "11,000원",
    ),
    FeedbackCategoryListViewItem(
      title: "어깨 상담",
      subtitle: "6,000원",
    ),
    FeedbackCategoryListViewItem(
      title: "등 상담",
      subtitle: "22,000원",
    ),
    FeedbackCategoryListViewItem(
      title: "가슴 상담",
      subtitle: "8,000원",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {_showCategoryList(context)},
      child: Container(
        height: 56,
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        decoration: BoxDecoration(
            border: Border.all(color: FColors.grey_2),
            borderRadius: BorderRadius.circular(4)),
        child: Row(
          children: [
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "카테고리 선택",
                  style: TextStyle(fontSize: 10, color: FColors.grey_3),
                ),
                Text(
                  "선택",
                  style: TextStyle(fontSize: 16, color: FColors.grey_3),
                ),
              ],
            )),
            SvgPicture.asset(
              "images/arrow_dropdown.svg",
              color: FColors.grey_3,
              width: 4,
              height: 4,
            )
          ],
        ),
      ),
    );
  }

  Future _showCategoryList(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8), topRight: Radius.circular(8))),
        builder: (BuildContext ctx) {
          return Container(
              height: 300,
              child: ListView.builder(
                itemCount: categoryList.length,
                itemBuilder: (context, index) => categoryList[index],
              ));
        });
  }
}

class FeedbackCategoryListViewItem extends StatelessWidget {
  FeedbackCategoryListViewItem(
      {Key? key, required this.title, required this.subtitle})
      : super(key: key);

  String title;
  String subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      onTap: () => Navigator.pop(context),
    );
  }
}
