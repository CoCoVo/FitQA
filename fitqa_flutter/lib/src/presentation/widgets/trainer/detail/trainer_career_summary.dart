import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';

class TrainerCareerSummary extends StatelessWidget {
  const TrainerCareerSummary({Key? key, required this.representativeCareer})
      : super(key: key);

  final String representativeCareer;

  @override
  Widget build(BuildContext context) {
    final summary = representativeCareer.replaceAll('\\n', '\n');
    return Container(
      padding: const EdgeInsets.fromLTRB(17, 0, 17, 24),
      child: Column(
        children: [
          const Text(
            "경력 & 학력/자격면허",
            style: TextStyle(fontSize: 16, color: FColors.black),
          ),
          const SizedBox(height: 10),
          Text(summary,
              style: const TextStyle(
                  fontSize: 20, height: 1.2, color: FColors.blue),
              textAlign: TextAlign.center),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
