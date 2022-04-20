import 'package:fitqa/src/presentation/screens/screen_trainer_select.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';

class FeedbackSelectTrainer extends StatelessWidget {
  const FeedbackSelectTrainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ScreenTrainerSelect()),
      ),
      child: Container(
        padding: const EdgeInsets.only(left: 16, right: 24),
        height: 82,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "트레이너 선택",
              style: TextStyle(
                  fontSize: 18,
                  color: FColors.black,
                  fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.arrow_forward_ios_rounded,
              size: 15,
              color: FColors.blue,
            )
          ],
        ),
      ),
    );
  }
}
