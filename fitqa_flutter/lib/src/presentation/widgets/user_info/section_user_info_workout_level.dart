import 'package:fitqa/src/application/user/user_info.dart';
import 'package:fitqa/src/domain/entities/common/enum/workout_level.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class SectionUserInfoWorkoutLevel extends ConsumerWidget {
  SectionUserInfoWorkoutLevel({Key? key}) : super(key: key);

  final titles = ["초보자", "중급자", "상급자", "초고수"];
  final subtitles = ["(0~1년차)", "(2~3년차)", "(4~5년차)", "(5년차~)"];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "운동경력",
          style: TextStyle(fontSize: 12, color: FColors.black),
        ),
        const SizedBox(
          height: 14,
        ),
        _buildSlider(context, ref),
        const SizedBox(
          height: 6,
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: IterableZip([titles, subtitles]).map((val) {
              return _buildSliderLabel(val[0], val[1]);
            }).toList())
      ],
    );
  }

  Widget _buildSliderLabel(String title, String subtitle) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
              fontSize: 12, color: FColors.black, fontWeight: FontWeight.bold),
        ),
        Text(subtitle,
            style: const TextStyle(
              fontSize: 12,
              color: FColors.black,
            )),
      ],
    );
  }

  Widget _buildSlider(BuildContext context, WidgetRef ref) {
    final currentSliderValue = ref.watch(userInfoWorkoutLevelProvider);
    final currentSliderController =
        ref.watch(userInfoWorkoutLevelProvider.notifier);

    return SliderTheme(
        child: Slider(
          value: _workoutLevelToValue(currentSliderValue),
          onChanged: (double value) {
            currentSliderController.state = _valueToWorkoutLevel(value);
          },
          divisions: 3,
        ),
        data: SliderTheme.of(context).copyWith(
          trackHeight: 13,
          thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 12),
          activeTrackColor: FColors.black,
          inactiveTrackColor: FColors.grey_1,
          thumbColor: FColors.grey_1,
          inactiveTickMarkColor: FColors.grey_1,
          activeTickMarkColor: FColors.black,
          overlayShape: SliderComponentShape.noThumb,
        ));
  }

  WorkoutLevel _valueToWorkoutLevel(double value) {
    if (value < 0.1) return WorkoutLevel.beginner;
    if (value < 0.4) return WorkoutLevel.intermediate;
    if (value < 0.7) return WorkoutLevel.senior;
    return WorkoutLevel.superman;
  }

  double _workoutLevelToValue(WorkoutLevel level) {
    switch (level) {
      case WorkoutLevel.beginner:
        return 0;
      case WorkoutLevel.intermediate:
        return 0.33;
      case WorkoutLevel.senior:
        return 0.66;
      case WorkoutLevel.superman:
        return 1;
    }
  }
}
