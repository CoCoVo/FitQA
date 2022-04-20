import 'package:flutter/material.dart';

class LabeledCheckbox extends StatefulWidget {
  const LabeledCheckbox(
      {Key? key,
      required this.value,
      required this.label,
      required this.onChanged})
      : super(key: key);

  final bool value;
  final String label;
  final Function onChanged;

  @override
  State<LabeledCheckbox> createState() => _LabeledCheckboxState();
}

class _LabeledCheckboxState extends State<LabeledCheckbox> {
  late bool _val;

  @override
  void initState() {
    _val = widget.value;
  }

  void _toggleCheck() {
    setState(() {
      widget.onChanged(!_val);
      _val = !_val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _toggleCheck(),
      child: Row(
        children: [
          Checkbox(value: _val, onChanged: (v) => _toggleCheck()),
          Text(widget.label)
        ],
      ),
    );
  }
}
