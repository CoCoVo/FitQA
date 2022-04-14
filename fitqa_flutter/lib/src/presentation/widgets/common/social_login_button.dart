import 'package:flutter/material.dart';

class SocialLoginButton extends StatelessWidget {
  SocialLoginButton(
      {Key? key,
      required this.title,
      required this.color,
      required this.icon,
      this.onTap})
      : super(key: key);

  String title;
  Color color;
  IconData icon;
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Ink(
        height: 50,
        decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            const SizedBox(
              width: 20,
            ),
            Text(title,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
