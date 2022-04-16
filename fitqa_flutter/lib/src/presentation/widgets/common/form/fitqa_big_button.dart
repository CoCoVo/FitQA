import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';

class FitqaBigButton extends StatelessWidget {
  FitqaBigButton({
    Key? key,
    required this.text,
    this.onPressed,
    this.filled = true,
  }) : super(key: key);

  String text;
  Function()? onPressed;
  bool filled;

  @override
  Widget build(BuildContext context) {
    return (filled) ? _buildFilledButton() : _buildOutlinedButton();
  }

  Widget _buildFilledButton() {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          color: FColors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      style: ElevatedButton.styleFrom(
        fixedSize: Size(double.infinity, 50),
        shape: StadiumBorder(),
        primary: FColors.black,
      ),
    );
  }

  Widget _buildOutlinedButton() {
    return OutlinedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          color: FColors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      style: OutlinedButton.styleFrom(
          fixedSize: Size(double.infinity, 50),
          shape: StadiumBorder(),
          primary: FColors.black,
          side: BorderSide(width: 1, color: FColors.black)),
    );
  }
}
