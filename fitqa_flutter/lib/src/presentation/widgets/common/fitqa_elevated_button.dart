import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';

class FElevatedButton extends StatelessWidget {
  const FElevatedButton(
      {Key? key,
      this.onPressed,
      this.child,
      this.background,
      this.borderColor = FColors.transparent,
      this.borderRadius = 0,
      this.minSize,
      this.elevation})
      : super(key: key);

  final VoidCallback? onPressed;
  final Widget? child;
  final Color? background;
  final Color borderColor;
  final double borderRadius;
  final Size? minSize;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        child: child,
        style: ElevatedButton.styleFrom(
            primary: background,
            fixedSize: minSize,
            elevation: elevation,
            shape: RoundedRectangleBorder(
                side: BorderSide(color: borderColor),
                borderRadius: BorderRadius.circular(borderRadius))));
  }
}
