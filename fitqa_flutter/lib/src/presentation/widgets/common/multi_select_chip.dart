import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';

class MultiSelectChip extends StatefulWidget {
  final List<String> reportList;
  final Function(List<String>)? onSelectionChanged;
  final Function(List<String>)? onMaxSelected;
  final int? maxSelection;

  final double spacing;
  final EdgeInsetsGeometry? padding;

  MultiSelectChip(this.reportList,
      {Key? key,
      this.onSelectionChanged,
      this.onMaxSelected,
      this.maxSelection,
      this.spacing = 5,
      this.padding = const EdgeInsets.symmetric(vertical: 6, horizontal: 17)})
      : super(key: key);

  @override
  _MultiSelectChipState createState() => _MultiSelectChipState();
}

class _MultiSelectChipState extends State<MultiSelectChip> {
  List<String> selectedChoices = [];

  _buildChoiceList() {
    List<Widget> choices = [];

    for (var item in widget.reportList) {
      var isSelected = selectedChoices.contains(item);
      choices.add(
        ChoiceChip(
          padding: widget.padding,
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
            if (selectedChoices.length == (widget.maxSelection ?? -1) &&
                !selectedChoices.contains(item)) {
              widget.onMaxSelected?.call(selectedChoices);
            } else {
              setState(() {
                selectedChoices.contains(item)
                    ? selectedChoices.remove(item)
                    : selectedChoices.add(item);
                widget.onSelectionChanged?.call(selectedChoices);
              });
            }
          },
        ),
      );
    }

    return choices;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: _buildChoiceList(),
      spacing: widget.spacing,
    );
  }
}
