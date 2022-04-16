import 'package:dotted_border/dotted_border.dart';
import 'package:fitqa/src/presentation/widgets/common/form/fitqa_optional_textfield.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SectionUserInfoOptional extends ConsumerWidget {
  SectionUserInfoOptional({Key? key}) : super(key: key);

  final _fatProvider = StateProvider<double>((ref) => 0);
  final _muscleProvider = StateProvider<double>((ref) => 0);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fatController = ref.watch(_fatProvider.notifier);
    final muscleController = ref.watch(_muscleProvider.notifier);

    return DottedBorder(
      borderType: BorderType.RRect,
      radius: const Radius.circular(3),
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
      color: FColors.line,
      dashPattern: const [6, 6],
      child: Container(
        height: 130,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "선택입력",
              style: TextStyle(
                  fontSize: 12,
                  color: FColors.grey_3,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              "입력시 자세한 운동 피드백에 도움을 드립니다.",
              style: TextStyle(fontSize: 12, color: FColors.grey_3),
            ),
            const SizedBox(
              height: 21,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildOptionalField("체지방률", "%",
                    (val) => fatController.state = double.parse(val)),
                _buildOptionalField("근육량", "kg",
                    (val) => muscleController.state = double.parse(val)),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildOptionalField(
      String title, String suffix, Function(String) onChanged) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            FitqaOptionalTextField(
              onChanged: onChanged,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              suffix,
              style: TextStyle(
                  fontSize: 18,
                  color: FColors.grey_3,
                  fontWeight: FontWeight.bold),
            ),
          ],
        )
      ],
    );
  }
}
