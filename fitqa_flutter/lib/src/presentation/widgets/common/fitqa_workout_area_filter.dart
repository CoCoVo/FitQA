import 'package:fitqa/src/domain/entities/common/enum/common_eunm.dart';
import 'package:fitqa/src/presentation/widgets/common/multi_select_chip.dart';
import 'package:fitqa/src/theme/dimen.dart';
import 'package:flutter/material.dart';

class FitqaWorkoutAreaFilter extends StatelessWidget {
  const FitqaWorkoutAreaFilter({Key? key, this.selected, this.onSelected})
      : super(key: key);

  final List<WorkOutArea>? selected;
  final Function(WorkOutArea, bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final filterList = WorkOutArea.values
        .where((element) => element != WorkOutArea.none)
        .map((e) => e.toStringType())
        .toList();

    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: SizedBox(
          height: FDimen.defaultMultiSelectChipSize,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: MultiSelectChip(
              filterList,
              spacing: 8,
              selected: selected?.map((e) => e.toStringType()).toList(),
              onSelected: (area, selected) {
                if (onSelected != null) {
                  onSelected!(WorkOutAreaConverter.fromString(area), selected);
                }
              },
            ),
          ),
        ));
  }
}
