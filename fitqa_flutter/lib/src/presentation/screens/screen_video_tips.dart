import 'package:carousel_slider/carousel_slider.dart';
import 'package:fitqa/src/presentation/widgets/common/carousel_with_indicator.dart';
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
    ['<데드리프트 & 스쿼트>','images/tips/tips_1_1.png','images/tips/tips_1_2.png'],
    ['<랫풀다운 & 숄더프레스>', 'images/tips/tips_2_1.png', 'images/tips/tips_2_2.png'],
    ['<로우>', 'images/tips/tips_3_1.png', 'images/tips/tips_3_2.png'],
    ['<벤치프레스>', 'images/tips/tips_4_1.png', 'images/tips/tips_4_2.png']
  ];
  List TipsComents = [
    [
      ['측면 섰을 때 어깨와 다리가 잘 보이게 찍기', '바의 끝이 동그랗게 잘 보일 수 있게 정측면에서 찍기'],
      ['후면에 섰을때 어깨와 다리가 잘 보이게 찍기', '바가 지면과 평행한 정후면으로 찍기'],
    ],
    [
      ['팔부터 엉덩이까지 다보이게', '내렸을 때 바가 동그랗게 보이기'],
      ['바가 수평이 되는 정 후면', '팔부터 엉덩이까지 다보이게'],
    ],
    [
      ['측면이 다 나올 수 있게'],
      ['어깨 부터 엉덩이 까지 잘 보이게'],
    ],
    [
      ['약간 위에서 아래로', '바가 평평하게 나올 수 있게'],
      ['머리부터 발 끝까지 다나오게', '바 끝이 동그랗게 정측면'],
    ]
  ];

  CarouselController buttonCarouselController = CarouselController();

  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTextStyle(
        style: const TextStyle(fontSize: 20.0, color: FColors.blue),
        child: ListView(
          children: [
            const FitqaAppbarVideoTips(),
            CarouselSlider(
              carouselController: _controller,
              options: CarouselOptions(
                  height: MediaQuery.of(context).size.height/2,
                  scrollDirection: Axis.horizontal,
                  enlargeCenterPage: true,
                  viewportFraction: 1.0
              ),
              items: [0, 1, 2, 3].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          TipsList[i][0],
                          style: const TextStyle(
                              fontSize: 15.0,
                              color: FColors.blue,
                              fontWeight: FontWeight.w800),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  const Chip(
                                    label: Text(' 측면 ',
                                      style: TextStyle(
                                          color: FColors.white,
                                          fontSize: 15.0),
                                    ),
                                    backgroundColor: FColors.blue,
                                  ),
                                  Image(
                                      image: AssetImage(TipsList[i][1]),
                                      width: 150.0),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  for (var item in TipsComents[i][0])
                                    Row(children: [
                                      const Text('ㆍ'),
                                      Expanded(
                                        child: Text(
                                          item,
                                          style: const TextStyle(
                                            fontSize: 12.0,
                                            color: FColors.black,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ]),
                                ],
                              ),
                            ),
                            const SizedBox(width: 5.0),
                            Expanded(
                              child: Column(
                                children: [
                                  const Chip(
                                    label: Text(
                                      ' 후면 ',
                                      style: TextStyle(
                                          color: FColors.white,
                                          fontSize: 15.0),
                                    ),
                                    backgroundColor: FColors.blue,
                                  ),
                                  Image(
                                      image: AssetImage(TipsList[i][2]),
                                      width: 150.0),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  for (var item in TipsComents[i][1])
                                    Row(children: [
                                      const Text('ㆍ'),
                                      Expanded(
                                        child: Text(
                                          item,
                                          style: const TextStyle(
                                              fontSize: 12.0,
                                              color: FColors.black,
                                              fontWeight: FontWeight.w600,
                                              overflow:
                                              TextOverflow.visible),
                                        ),
                                      ),
                                    ]),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    );
                  },
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}