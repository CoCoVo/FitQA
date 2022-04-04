import 'package:fitqa/src/presentation/widgets/common/fitqa_appbar.dart';
import 'package:fitqa/src/presentation/widgets/common/multi_select_chip.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:fitqa/src/theme/dimen.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: FColors.white,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
            children: [
              FitqaAppbar(),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: SizedBox(
                    height: FDimen.defaultMultiSelectChipSize,
                    child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child:
                        MultiSelectChip(const ['전체', '등', '어깨', '팔', '하체', '가슴'],
                            onSelectionChanged: (selectedList) {
                              print(selectedList);
                            })),
                  )),
            ]
        )
    );
  }
}
