import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';

class FitqaOptionalTextField extends StatelessWidget {
  FitqaOptionalTextField({Key? key, this.onChanged}) : super(key: key);

  Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 108,
      height: 41,
      child: TextField(
        onChanged: onChanged,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            labelText: "",
            border: OutlineInputBorder(
                borderSide: BorderSide(color: FColors.grey_2),
                borderRadius: BorderRadius.circular(4))),
      ),
    );
  }
}
