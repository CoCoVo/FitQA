import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ScreenMyPageMyTrainer extends ConsumerWidget {
  const ScreenMyPageMyTrainer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      child: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(5.0),
        childAspectRatio: 8.0 / 12.0,
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Icon(
                          Icons.favorite,
                          color: Colors.pink,
                          size: 20.0,
                        ),
                        Text('211'),
                        SizedBox(
                          width: 10.0,
                        )
                      ],
                    ),
                    AspectRatio(
                      aspectRatio: 10 / 10,
                      child: Image.asset(
                        'images/dummy.png',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                    child: Column(
                      children: [
                        const Center(
                          child: Text(
                            '트레이너 닉네임',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        TextButton(
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text(
                              '운동평가받기',
                              style: TextStyle(color: FColors.white),
                            ),
                          ),
                          onPressed: () {},
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(FColors.blue),
                              alignment: Alignment.center),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Card(
            child: Text('123'),
          ),
          const Card(
            child: Text('123'),
          ),
          const Card(
            child: Text('123'),
          ),
        ],
      ),
    );
  }
}
