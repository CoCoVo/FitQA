import 'package:fitqa/theme/color.dart';
import 'package:flutter/material.dart';

class FitqaIcon extends StatelessWidget {
  const FitqaIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: Container(
        color: FColors.appBarLeadingBackground,
        child: const Icon(
          Icons.trending_up_rounded,
          color: FColors.white,
        ),
      ),
    );
  }
}
