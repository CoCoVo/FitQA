import 'package:fitqa/src/domain/entities/common/enum/mypage_area.dart';
import 'package:fitqa/src/presentation/widgets/common/multi_select_chip.dart';
import 'package:fitqa/src/theme/dimen.dart';
import 'package:flutter/material.dart';

class FitqaMyPageAreaFilter extends StatelessWidget {
  const FitqaMyPageAreaFilter({Key? key, this.selected, this.onSelected})
      : super(key: key);

  final List<MyPageArea>? selected;
  final Function(MyPageArea, bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final filterList = MyPageArea.values
        .where((element) => element != MyPageArea.myBoard)
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
                  onSelected!(MyPageAreaConverter.fromString(area), selected);
                }
              },
            ),
          ),
        ));
  }
}
