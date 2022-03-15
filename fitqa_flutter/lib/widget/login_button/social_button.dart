import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    Key? key,
    required this.buttonColor,
    required this.textColor,
    required this.children,
  }) : super(key: key);

  final Color buttonColor, textColor;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 54,
      padding: const EdgeInsets.all(15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(textColor),
            backgroundColor: MaterialStateProperty.all(buttonColor)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: children,
        ),
      ),
    );
  }
}
