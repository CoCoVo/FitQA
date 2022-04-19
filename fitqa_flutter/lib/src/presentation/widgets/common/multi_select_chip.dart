import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';

class MultiSelectChip extends StatelessWidget {
  MultiSelectChip(this.list,
      {Key? key,
      this.selected,
      this.onSelected,
      this.spacing = 5,
      this.padding = const EdgeInsets.symmetric(vertical: 6, horizontal: 17)})
      : super(key: key);

  final List<String> list;
  final List<String>? selected;
  final Function(String, bool)? onSelected;

  final double spacing;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: _buildChoiceList(),
      spacing: spacing,
    );
  }

  _buildChoiceList() {
    List<Widget> choices = [];

    for (var item in list) {
      final isSelected = selected?.contains(item) ?? false;
      choices.add(
        ChoiceChip(
            padding: padding,
            label: Text(item,
                style: TextStyle(
                    color: (isSelected ? FColors.white : FColors.blue))),
            backgroundColor: FColors.white,
            selectedColor: (isSelected ? FColors.blue : FColors.white),
            shape: RoundedRectangleBorder(
                side: const BorderSide(
                    color: FColors.blue, width: 1, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(30)),
            selected: isSelected,
            onSelected: (selected) {
              if (onSelected != null) onSelected!(item, selected);
            }),
      );
    }

    return choices;
  }
}
