import 'package:fitqa/src/theme/dimen.dart';
import 'package:flutter/material.dart';

class TrainerSnsItem extends StatelessWidget {
  const TrainerSnsItem(this.snsIcon, this.snsUrl);

  final Icon snsIcon;
  final String snsUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16),
      child: Row(
        children: [
          SizedBox(
            height: FDimen.trainerDetailSnsSize,
            width: FDimen.trainerDetailSnsSize,
            child: snsIcon,
          ),
          SizedBox(width: 16),
          Text("${snsUrl}", style: TextStyle(fontSize: 14))
        ],
      ),
    );
  }
}
