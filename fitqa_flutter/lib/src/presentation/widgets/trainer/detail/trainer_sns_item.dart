import 'package:fitqa/src/theme/dimen.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TrainerSnsItem extends StatelessWidget {
  const TrainerSnsItem(
      {Key? key, this.snsIcon, required this.snsTitle, required this.snsUrl})
      : super(key: key);

  final Icon? snsIcon;
  final String snsTitle;
  final String snsUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16),
      child: Row(
        children: [
          SizedBox(
            height: FDimen.trainerDetailSnsSize,
            width: FDimen.trainerDetailSnsSize,
            child: snsIcon,
          ),
          const SizedBox(width: 16),
          InkWell(
              child: Text(snsTitle, style: const TextStyle(fontSize: 14)),
              onTap: () => launch(snsUrl))
        ],
      ),
    );
  }
}
