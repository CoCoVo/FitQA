import 'package:fitqa/src/theme/color.dart';
import 'package:fitqa/src/theme/dimen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FDropDown extends ConsumerWidget {
  const FDropDown(
      {Key? key,
      required this.title,
      this.height = FDimen.defaultDropDownHeight,
      this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
      this.borderRadius = 8,
      this.itemList = const []})
      : super(key: key);

  final double? height;
  final EdgeInsetsGeometry? padding;
  final String title;
  final double borderRadius;
  final List<Widget> itemList;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () => _showDropDown(context),
      child: Container(
          height: height,
          padding: padding,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            border: Border.all(color: FColors.grey_2),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(fontSize: 16, color: FColors.grey_3),
                ),
              ),
              SvgPicture.asset(
                "images/arrow_dropdown.svg",
                color: FColors.grey_3,
                width: 4,
                height: 4,
              )
            ],
          )),
    );
  }

  Future _showDropDown(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return SizedBox(
            height: FDimen.defaultModalBottomHeight,
            child: ListView.builder(
                itemCount: itemList.length,
                itemBuilder: (context, index) => itemList[index]),
          );
        });
  }
}
