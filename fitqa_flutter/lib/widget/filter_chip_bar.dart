import 'package:fitqa/theme/color.dart';
import 'package:flutter/material.dart';

class FilterChipBar extends StatefulWidget {
  const FilterChipBar({Key? key, required this.items, this.height = 50, this.padding})
      : super(key: key);

  final List<String> items;
  final double? height;
  final EdgeInsetsGeometry? padding;

  @override
  _FilterChipBarState createState() => _FilterChipBarState();
}

class _FilterChipBarState extends State<FilterChipBar> {
  int _choiceIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: widget.height,
        padding: widget.padding,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) => ChoiceChip(
                  label: Text(
                    widget.items.elementAt(index),
                    style: TextStyle(
                        color: (_choiceIndex == index) ? FColors.white : FColors.textPrimary),
                  ),
                  selectedColor: FColors.buttonAccent,
                  selected: _choiceIndex == index,
                  onSelected: (bool selected) {
                    setState(() {
                      _choiceIndex = selected ? index : 0;
                    });
                  },
                ),
            separatorBuilder: (BuildContext context, int index) => const SizedBox(
                  width: 5,
                ),
            itemCount: widget.items.length));
  }
}
