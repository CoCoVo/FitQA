import 'package:fitqa/src/application/trainer/trainer_detail.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TrainerCareerSummary extends ConsumerWidget {
  const TrainerCareerSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final trainerDetail = ref.watch(trainerDetailProvider).data!;

    return Container(
      padding: const EdgeInsets.fromLTRB(17, 0, 17, 24),
      child: Column(
        children: [
          const Text(
            "경력 & 학력/자격면허",
            style: TextStyle(fontSize: 16, color: FColors.black),
          ),
          const SizedBox(height: 10),
          Text(trainerDetail.representativeCareer.replaceAll('\\n', '\n'),
              style: const TextStyle(
                  fontSize: 20, height: 1.2, color: FColors.blue),
              textAlign: TextAlign.center),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
