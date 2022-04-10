import 'package:fitqa/src/presentation/widgets/common/small_info_box.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';

class SectionUserProfile extends StatelessWidget {
  const SectionUserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 26),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 23,
            backgroundColor: FColors.grey_2,
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "운동조아",
                  style: TextStyle(
                      fontSize: 16,
                      color: FColors.black,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "3일 전",
                  style: TextStyle(
                    fontSize: 12,
                    color: FColors.black,
                  ),
                )
              ],
            ),
          ),
          SmallInfoBox(text: "답변대기")
        ],
      ),
    );
  }
}
