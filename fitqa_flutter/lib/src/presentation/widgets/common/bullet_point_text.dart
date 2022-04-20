import 'package:flutter/material.dart';

class BulletPointText extends StatelessWidget {
  const BulletPointText(
      {Key? key, required this.children, this.lineSpacing = 3, this.textStyle})
      : super(key: key);

  final List<String> children;
  final double lineSpacing;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    var widgetList = <Widget>[];
    for (var text in children) {
      // Add list item
      widgetList.add(UnorderedListItem(
        text: text,
        textStyle: textStyle,
      ));
      // Add space between items
      widgetList.add(SizedBox(height: lineSpacing));
    }

    return Column(children: widgetList);
  }
}

class UnorderedListItem extends StatelessWidget {
  const UnorderedListItem({Key? key, required this.text, this.textStyle})
      : super(key: key);
  final String text;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("• "),
        Expanded(
          child: Text(
            text,
            style: textStyle,
          ),
        ),
      ],
    );
  }
}
