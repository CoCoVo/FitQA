import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FitqaDropdown extends StatelessWidget {
  FitqaDropdown({
    Key? key,
    required this.child,
    required this.label,
    required this.hint,
    this.text,
    this.height = 56,
    this.listHeight = 300,
  }) : super(key: key);

  Widget child;
  String label;
  String hint;
  String? text;
  double height;
  double listHeight;

  @override
  Widget build(BuildContext context) {
    final color = (text == null) ? FColors.grey_3 : FColors.black;
    final colorOutline = (text == null) ? FColors.line : FColors.black;
    return InkWell(
      onTap: () => {_showCategoryList(context)},
      child: Container(
        height: height,
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        decoration: BoxDecoration(
            border: Border.all(color: colorOutline),
            borderRadius: BorderRadius.circular(4)),
        child: Row(
          children: [
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(fontSize: 10, color: color),
                ),
                Text(
                  (text ?? hint),
                  style: TextStyle(fontSize: 16, color: color),
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
          return child;
        });
  }
}
