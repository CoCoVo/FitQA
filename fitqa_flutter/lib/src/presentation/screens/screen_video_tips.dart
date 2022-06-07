import 'package:carousel_slider/carousel_slider.dart';
import 'package:fitqa/src/presentation/widgets/common/fitqa_appbar_video_tips.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';

class ScreenVideoTips extends StatefulWidget {
  const ScreenVideoTips({Key? key}) : super(key: key);

  @override
  State<ScreenVideoTips> createState() => _ScreenVideoTipsState();
}

class _ScreenVideoTipsState extends State<ScreenVideoTips> {
  List TipsList = [
    ['<데드리프트 & 스쿼트>', 'tips_1_1', 'tips_1_2'],
    ['<랫풀다운 & 숄더프레스>', 'tips_2_1', 'tips_2_2'],
    ['<로우>', 'tips_3_1', 'tips_3_2'],
    ['<벤치프레스>', 'tips_4_1', 'tips_4_2']
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(fontSize: 20.0, color: FColors.blue),
      child: Container(
        color: FColors.grey_0,
        child: ListView(
          children: [
            const FitqaAppbarVideoTips(),
            CarouselSlider(
              options: CarouselOptions(
                height: 500.0,
              ),
              items: [0, 1, 2, 3].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 20),
                        decoration: BoxDecoration(color: FColors.grey_0),
                        child: Column(children: [
                          Text(
                            TipsList[i][0],
                            style: const TextStyle(
                                fontSize: 15.0,
                                color: FColors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Text('123333333'),
                                  Text('123'),
                                ],
                              ),
                              Column(
                                children: [
                                  Text('12333333333'),
                                  Text('123'),
                                  Text('123'),
                                ],
                              )
                            ],
                          ),
                        ]));
                  },
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
