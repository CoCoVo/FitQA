import 'package:fitqa/src/presentation/widgets/common/bullet_point_text.dart';
import 'package:fitqa/src/presentation/widgets/common/fitqa_textfield.dart';
import 'package:fitqa/src/presentation/widgets/common/labeled_checkbox.dart';
import 'package:fitqa/src/presentation/widgets/feedback/feedback_collapsed_appbar.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';

class ScreenFeedbackRequest extends StatelessWidget {
  const ScreenFeedbackRequest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: FColors.white,
        body: ListView(
          children: [
            FeedbackCollapsedAppbar(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(children: [
                SizedBox(
                  height: 24,
                ),
                Text(
                  "안내사항",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 16,
                ),
                BulletPointText(textStyle: TextStyle(fontSize: 12), children: [
                  "궁금한 내용이나 영상에 대한 추가설명은 글로 작성해주세요.",
                  "질문자의 체격 조건을 파악하여 맞춤 솔루션을 드립니다.",
                  "보내주시는 영상은 가급적 0분 이내로 맞춰 주세요.",
                  "자세가 잘 보이도록 정확하고 선명한 영상을 전달해주시면 더 좋은 피드백이 가능합니다."
                ]),
                SizedBox(
                  height: 20,
                ),
                FTextfield(
                  labelText: "제목",
                  hintText: "예시) 벤치할 때 팔꿈치가 아픕니다",
                ),
                SizedBox(
                  height: 16,
                ),
                FTextfield(
                  labelText: "내용",
                  maxLines: 10,
                  hintText:
                      "예시) 안녕하세요. 운동 n년차 바디빌딩 헬린이입니다. 중량이 올라가면서 팔꿈치가 많이 아픕니다.",
                ),
                SizedBox(
                  height: 18,
                ),
                LabeledCheckbox(label: "비공개로 올리기", onChanged: (val) => {}),
              ]),
            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Container(
                  height: 70,
                  color: FColors.blue,
                  child: Center(
                      child: Text(
                    "결제하기",
                    style: TextStyle(
                        fontSize: 18,
                        color: FColors.white,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            )
          ],
        ));
  }
}
