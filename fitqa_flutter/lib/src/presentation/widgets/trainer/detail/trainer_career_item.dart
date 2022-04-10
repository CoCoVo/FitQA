import 'package:flutter/material.dart';

class TrainerCareerItem extends StatelessWidget {
  const TrainerCareerItem({Key? key, required this.career}) : super(key: key);

  final String career;

  @override
  Widget build(BuildContext context) {
    return Text(career,
        style: const TextStyle(
            fontSize: 16, fontWeight: FontWeight.bold, height: 1.5));
  }
}
