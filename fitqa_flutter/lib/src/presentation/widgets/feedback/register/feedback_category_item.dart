import 'package:flutter/material.dart';

class FeedbackCategoryItem extends StatelessWidget {
  FeedbackCategoryItem(
      {Key? key, required this.title, required this.subtitle, this.onTap})
      : super(key: key);

  String title;
  String subtitle;
  GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      onTap: onTap,
    );
  }
}
