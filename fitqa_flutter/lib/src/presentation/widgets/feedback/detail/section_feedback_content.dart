import 'package:fitqa/src/presentation/widgets/trainer/area_small_widget.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';

class SectionFeedbackContent extends StatelessWidget {
  const SectionFeedbackContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "랫풀다운 자세가 정확한지 봐주세요",
            style: TextStyle(
                fontSize: 20,
                color: FColors.black,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 12,
          ),
          AreaSmallWidget("등",
              textColor: FColors.black,
              borderColor: FColors.black,
              backgroundColor: FColors.white),
          SizedBox(
            height: 32,
          ),
          Text(
            "턱걸이를 하듯 어깨보다 좀 더 넓게 바를 잡은 다음, 상체를 뒤로 젖히고 팔이 아니라 등의 힘으로 당겨 내려오는 방식이 가장 기본적인 형태이다. \n\n턱걸이와 가동부위는 거의 같으며, 좁게 잡을수록 광배근 안쪽이, 넓게 잡을수록 상부와 바깥쪽이 발달된다. 그밖에 등 뒤로 바를 넘기는 등 몇가지 변형이 있는데, 등에 더 많은 자극을 가할 수 있는 장점이 있지만 초보자는 자칫 몸만 상하기 쉬우므로 정석대로 하는 편이 좋다. 상단 영상의 강경원은 초보자라면 넓은 그립으로 실시할 것을 권하고 있다.",
            style: TextStyle(fontSize: 18, color: FColors.black),
          ),
        ],
      ),
    );
  }
}
