import 'package:fitqa/src/application/trainer/trainer_detail.dart';
import 'package:fitqa/src/domain/entities/trainer/trainer_career/trainer_career.dart';
import 'package:fitqa/src/presentation/widgets/trainer/detail/trainer_career_item.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TrainerCareerList extends ConsumerWidget {
  const TrainerCareerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final trainerDetail = ref.watch(trainerDetailProvider).data!;

    return Container(
      padding: const EdgeInsets.fromLTRB(17, 0, 17, 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //FIXME(in.heo)
          // - Make context header Layout like h1, h2, h3
          const Text("경력", style: TextStyle(fontSize: 14)),
          const SizedBox(height: 18),
          const Divider(color: FColors.line, height: 1, thickness: 1),
          const SizedBox(height: 16),
          ...trainerDetail.careers
              .where((element) => element.type == CareerType.career)
              .map((e) => TrainerCareerItem(career: e.description))
              .toList()
        ],
      ),
    );
  }
}
