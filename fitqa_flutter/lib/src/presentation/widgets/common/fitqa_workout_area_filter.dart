import 'package:fitqa/src/application/feedback/feedback_list.dart';
import 'package:fitqa/src/domain/entities/common/enum/common_eunm.dart';
import 'package:fitqa/src/presentation/widgets/common/multi_select_chip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FitqaWorkoutAreaFilter extends ConsumerWidget {
  const FitqaWorkoutAreaFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final feedbackFilterController = ref.watch(feedbackFilterProvider.notifier);

    return MultiSelectChip(
      WorkOutArea.values
          .where((element) => element != WorkOutArea.none)
          .map((e) => e.toStringType())
          .toList(),
      spacing: 8,
      onSelectionChanged: (selectedList) {
        final selectedFilter = selectedList
            .map((e) => WorkOutAreaConverter.fromString(e))
            .toList();
        feedbackFilterController.update(selectedFilter);
      },
    );
  }
}
