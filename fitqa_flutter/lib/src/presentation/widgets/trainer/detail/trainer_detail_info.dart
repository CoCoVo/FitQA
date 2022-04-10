import 'package:fitqa/src/domain/entities/trainer/trainer/trainer.dart';
import 'package:fitqa/src/presentation/widgets/common/area_small_widget.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:fitqa/src/theme/dimen.dart';
import 'package:flutter/material.dart';

class TrainerDetailInfo extends StatelessWidget {
  const TrainerDetailInfo({Key? key, required this.trainer}) : super(key: key);

  final Trainer trainer;

  @override
  Widget build(BuildContext context) {
    // FIXME(in.heo)
    // - makes imageType from String to enum class
    final String profileImage = trainer.images
        .firstWhere((element) => element.imageType == "PROFILE")
        .imageUrl;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Image.network(profileImage,
              fit: BoxFit.fill,
              height: FDimen.trainerDetailProfileSize,
              width: FDimen.trainerDetailProfileSize),
        ),
        const SizedBox(height: 33),
        Text("${trainer.name} 트레이너",
            style: const TextStyle(
                color: FColors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold)),
        const SizedBox(height: 16),
        Text(trainer.style,
            style: const TextStyle(color: FColors.white, fontSize: 14)),
        const SizedBox(height: 14),
        Row(children: _buildInterestAreas())
      ],
    );
  }

  List<Widget> _buildInterestAreas() {
    List<Widget> widgets = <Widget>[];

    for (var element in trainer.interestAreas) {
      widgets.add(AreaSmallWidget(
        element.interestArea,
        textColor: FColors.white,
        backgroundColor: FColors.transparent,
        borderColor: FColors.white,
      ));
      widgets.add(const SizedBox(width: 10));
    }
    return widgets;
  }
}
