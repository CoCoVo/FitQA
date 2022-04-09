import 'package:fitqa/src/presentation/widgets/trainer/area_small_widget.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:fitqa/src/theme/dimen.dart';
import 'package:flutter/material.dart';

class TrainerDetailInfo extends StatelessWidget {
  TrainerDetailInfo({required this.profileImageUrl, required this.name,
    required this.style, required this.interestAreas});

  final String profileImageUrl;
  final String name;
  final String style;
  final List<String> interestAreas;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Image.network(profileImageUrl,
              fit: BoxFit.cover,
              height: FDimen.trainerDetailProfileSize,
              width: FDimen.trainerDetailProfileSize),
        ),
        const SizedBox(height: 33),
        Text("${this.name} 트레이너",
            style: const TextStyle(
                color: FColors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold)),
        const SizedBox(height: 16),
        Text("${this.style}",
            style: const TextStyle(color: FColors.white, fontSize: 14)),
        const SizedBox(height: 14),
        Row(children: _buildInterestAreas())
      ],
    );
  }

  List<Widget> _buildInterestAreas() {
    List<Widget> widgets = <Widget>[];

    this.interestAreas.forEach((element) {
      widgets.add(AreaSmallWidget(
        "${element}",
        textColor: FColors.white,
        backgroundColor: FColors.transparent,
        borderColor: FColors.white,
      ));
      widgets.add(SizedBox(width: 10));
    });
    return widgets;
  }
}
