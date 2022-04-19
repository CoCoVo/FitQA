import 'package:fitqa/src/domain/entities/common/enum/common_eunm.dart';
import 'package:fitqa/src/presentation/widgets/common/multi_select_chip.dart';
import 'package:fitqa/src/theme/dimen.dart';
import 'package:flutter/material.dart';

class FitqaWorkoutAreaFilter extends StatelessWidget {
  const FitqaWorkoutAreaFilter({Key? key, this.onSelectionChanged})
      : super(key: key);

  final Function(List<WorkOutArea>)? onSelectionChanged;

  @override
  Widget build(BuildContext context) {
    final filterList = WorkOutArea.values
        .where((element) => element != WorkOutArea.none)
        .map((e) => e.toStringType())
        .toList();
    final initSelect = [
      true,
      ...List<bool>.generate(filterList.length - 1, (_) => false)
    ];

    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: SizedBox(
          height: FDimen.defaultMultiSelectChipSize,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: MultiSelectChip(
              filterList,
              spacing: 8,
              selected: initSelect,
              onSelectionChanged: (selectedList) {
                final selectedFilter = selectedList
                    .map((e) => WorkOutAreaConverter.fromString(e))
                    .toList();
                if (onSelectionChanged != null) {
                  onSelectionChanged!(selectedFilter);
                }
              },
            ),
          ),
        ));
  }
}
