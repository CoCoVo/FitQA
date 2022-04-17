import 'package:fitqa/src/domain/entities/trainer/trainer_career/trainer_career.dart';
import 'package:fitqa/src/presentation/widgets/trainer/detail/trainer_career_item.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';

class TrainerLicenseList extends StatelessWidget {
  TrainerLicenseList({Key? key, required this.trainerLicenses})
      : super(key: key);

  List<TrainerCareer> trainerLicenses;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(17, 45, 17, 40),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          //FIXME(in.heo)
          // - Generalize context header layout like h1, h2, h3 ..
          const Text("학력 & 자격면허", style: TextStyle(fontSize: 14)),
          const SizedBox(height: 18),
          const Divider(color: FColors.line, height: 1, thickness: 1),
          const SizedBox(height: 16),
          ...trainerLicenses
              .where((element) => element.type == CareerType.license)
              .map((e) => TrainerCareerItem(career: e.description))
              .toList()
        ]));
  }
}
