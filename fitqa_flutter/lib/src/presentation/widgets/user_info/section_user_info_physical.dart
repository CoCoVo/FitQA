import 'package:fitqa/src/application/user/user_info.dart';
import 'package:fitqa/src/presentation/widgets/common/ThinDivider.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:numberpicker/numberpicker.dart';

class SectionUserInfoPhysical extends ConsumerWidget {
  SectionUserInfoPhysical({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final height = ref.watch(userInfoHeightProvider);
    final weight = ref.watch(userInfoWeightProvider);
    final heightController = ref.watch(userInfoHeightProvider.notifier);
    final weightController = ref.watch(userInfoWeightProvider.notifier);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("신체정보 입력"),
        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNumberPicker("키", "cm", 0, 200, height,
                (val) => heightController.state = val),
            _buildNumberPicker("몸무게", "kg", 0, 200, weight,
                (val) => weightController.state = val),
          ],
        ),
      ],
    );
  }

  Widget _buildNumberPicker(String title, String unit, int min, int max,
      int val, Function(int) onChanged) {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 15,
                  color: FColors.black,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "($unit)",
              style: TextStyle(
                  fontSize: 12,
                  color: FColors.black,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        ThinDivider(),
        const SizedBox(
          height: 16,
        ),
        NumberPicker(
          minValue: min,
          maxValue: max,
          value: val,
          onChanged: onChanged,
          itemCount: 3,
          itemHeight: 40,
          textStyle: const TextStyle(fontSize: 18, color: FColors.grey_3),
          selectedTextStyle:
              const TextStyle(fontSize: 18, color: FColors.black),
        ),
        const SizedBox(
          height: 16,
        ),
        ThinDivider(),
      ],
    );
  }
}
