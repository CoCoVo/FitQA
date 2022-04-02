import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';

class MultiSelectChip extends StatefulWidget {
  final List<String> reportList;
  final Function(List<String>)? onSelectionChanged;
  final Function(List<String>)? onMaxSelected;
  final int? maxSelection;

  MultiSelectChip(this.reportList,
      {this.onSelectionChanged, this.onMaxSelected, this.maxSelection});

  @override
  _MultiSelectChipState createState() => _MultiSelectChipState();
}

class _MultiSelectChipState extends State<MultiSelectChip> {
  List<String> selectedChoices = [];

  _buildChoiceList() {
    List<Widget> choices = [];

    widget.reportList.forEach((item) {
      var isSelected = selectedChoices.contains(item);
      choices.add(Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        child: ChoiceChip(
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 17),
          label: Text(item,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
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
      ));
    });

    return choices;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: _buildChoiceList(),
    );
  }
}
