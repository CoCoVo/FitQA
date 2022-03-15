import 'package:fitqa/theme/color.dart';
import 'package:flutter/material.dart';

class FilterChipBar extends StatefulWidget {
  const FilterChipBar(
      {Key? key,
      required this.items,
      this.selectable = true,
      this.height = 30,
      this.padding = const EdgeInsets.symmetric(vertical: 0, horizontal: 3)})
      : super(key: key);

  final List<String> items;
  final bool selectable;
  final double height;
  final EdgeInsetsGeometry? padding;

  @override
  _FilterChipBarState createState() => _FilterChipBarState();
}

class _FilterChipBarState extends State<FilterChipBar> {
  int _choiceIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.identity()..scale(0.8),
      child: Container(
          height: widget.height,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) => ChoiceChip(
                    padding: widget.padding,
                    label: Text(
                      widget.items.elementAt(index),
                      style: TextStyle(
                          color: (_choiceIndex == index && widget.selectable)
                              ? FColors.white
                              : FColors.textPrimary),
                    ),
                    selectedColor: FColors.buttonAccent,
                    selected: (widget.selectable) ? _choiceIndex == index : false,
                    onSelected: (bool selected) {
                      setState(() {
                        if (!widget.selectable) {
                          _choiceIndex = selected ? index : 0;
                        }
                      });
                    },
                  ),
              separatorBuilder: (BuildContext context, int index) => const SizedBox(
                    width: 5,
                  ),
              itemCount: widget.items.length)),
    );
  }
}
