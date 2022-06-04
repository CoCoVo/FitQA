import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BackIcon extends StatelessWidget {
  const BackIcon({Key? key, this.onPressed, this.color}) : super(key: key);

  final Function()? onPressed;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: SvgPicture.asset(
        "images/arrow_back.svg",
        color: color,
      ),
      onPressed: onPressed,
    );
  }
}
