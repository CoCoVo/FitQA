import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';

class ThinDivider extends StatelessWidget {
  const ThinDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 0,
      color: FColors.grey_2,
    );
  }
}
