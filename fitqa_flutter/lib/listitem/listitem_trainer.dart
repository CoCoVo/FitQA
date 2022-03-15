import 'package:fitqa/theme/color.dart';
import 'package:fitqa/widget/filter_chip_bar.dart';
import 'package:flutter/material.dart';

class ListItemTrainer extends StatelessWidget {
  const ListItemTrainer({Key? key, this.selectable = false}) : super(key: key);

  final bool selectable;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(0), color: FColors.white),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://img.etimg.com/photo/msid-74747053,quality-100/for-miles-a-great-bodyweight-workout-would-include-squats-push-ups-walking-lunges-.jpg"))),
          ),
          SizedBox(
            width: 8,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '데드리프트 500kg 언제 도달할까요?',
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(
                  height: 3,
                ),
                FilterChipBar(
                    items: ['Mr.Korea', 'Mr.Olympia', 'Arnold Classic'], selectable: false),
                FilterChipBar(
                  items: ['#등', '#어깨'],
                  selectable: false,
                ),
                Stack(
                  children: [
                    Visibility(
                        visible: !selectable,
                        child: Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text('운동평가 받기'),
                              ),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('찜'),
                            ),
                          ],
                        )),
                    Visibility(
                        visible: selectable,
                        child: Row(
                          children: [
                            Expanded(
                                child: ElevatedButton(
                              onPressed: () {},
                              child: Text('트레이너 선택'),
                            ))
                          ],
                        ))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
