import 'package:fitqa/src/common/fitqa_icon.dart';
import 'package:fitqa/src/domain/entities/trainer/trainer/trainer.dart';
import 'package:fitqa/src/domain/entities/trainer/trainer_sns/trainer_sns.dart';
import 'package:fitqa/src/presentation/widgets/trainer/detail/trainer_sns_item.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';

class TrainerSns extends StatelessWidget {
  const TrainerSns({Key? key, required this.trainer}) : super(key: key);

  final Trainer trainer;

  @override
  Widget build(BuildContext context) {
    Map<SnsType, String> snsUrlMap = {};
    Map<SnsType, String> snsTitleMap = {};

    for (var element in trainer.sns) {
      snsUrlMap[element.snsType] = element.snsUrl;
      snsTitleMap[element.snsType] = element.snsTitle;
    }

    return Container(
      padding: const EdgeInsets.fromLTRB(17, 0, 17, 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //FIXME(in.heo)
          // - Generalize context header layout
          const Text("연관링크", style: TextStyle(fontSize: 16)),
          const SizedBox(height: 16),
          const Divider(height: 1, color: FColors.line, thickness: 1),
          const SizedBox(height: 19),
          ..._buildSnsList(snsUrlMap, snsTitleMap),
          const Divider(color: FColors.black, height: 1, thickness: 3)
        ],
      ),
    );
  }

  List<Widget> _buildSnsList(Map snsUrlMap, Map snsTitleMap) {
    List<Widget> snsList = [];
    snsList.add(TrainerSnsItem(
        snsIcon: const Icon(FitQaIcon.facebook),
        snsTitle: snsTitleMap[SnsType.facebook] ?? "",
        snsUrl: snsUrlMap[SnsType.facebook]));
    snsList.add(const SizedBox(height: 14));
    snsList.add(TrainerSnsItem(
        snsIcon: const Icon(FitQaIcon.instagram),
        snsTitle: snsTitleMap[SnsType.instagram] ?? "",
        snsUrl: snsUrlMap[SnsType.instagram]));
    snsList.add(const SizedBox(height: 14));
    snsList.add(TrainerSnsItem(
        snsIcon: const Icon(FitQaIcon.facebook),
        snsTitle: snsTitleMap[SnsType.youtube] ?? "",
        snsUrl: snsUrlMap[SnsType.youtube]));
    snsList.add(const SizedBox(height: 31));

    return snsList;
  }
}
