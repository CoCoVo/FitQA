import 'package:fitqa/src/common/fitqa_icon.dart';
import 'package:fitqa/src/domain/entities/trainer/trainer/trainer.dart';
import 'package:fitqa/src/presentation/screens/screen_trainer.dart';
import 'package:fitqa/src/presentation/widgets/feedback/register/feedback_select_category.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';

class FeedbackCollapsedAppbar extends StatelessWidget {
  const FeedbackCollapsedAppbar({Key? key, this.trainer}) : super(key: key);

  final Trainer? trainer;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 200,
          child: AppBar(
            title: const Text(
              '새 게시물 쓰기',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            elevation: 0.0,
            leading: InkWell(
              child: const Icon(Icons.arrow_back_ios_rounded),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Card(
            child: trainer == null
                ? ListTile(
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                    title: const Text("트레이너 선택",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    trailing: const Icon(FitQaIcon.enter, color: FColors.blue),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ScreenTrainer()));
                    },
                  )
                : FeedbackSelectCategory(trainer: trainer!),
            margin: const EdgeInsets.symmetric(horizontal: 16),
            elevation: 4,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4)),
            clipBehavior: Clip.antiAlias,
          ),
        )
      ],
    );
  }
}
