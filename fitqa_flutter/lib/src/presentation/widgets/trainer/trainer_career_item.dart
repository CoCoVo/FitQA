import 'package:fitqa/src/domain/entities/trainer/trainer_career/trainer_career.dart';
import 'package:flutter/material.dart';

class TrainerCareerItem extends StatelessWidget {
  TrainerCareerItem({required this.career});

  final String career;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("${this.career}",
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, height: 1.5)),
    );
  }
}
