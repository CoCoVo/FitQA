import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';

class FTextField extends StatelessWidget {
  const FTextField(
      {Key? key,
      this.labelText,
      this.hintText,
      this.maxLines,
      this.onChanged,
      this.controller})
      : super(key: key);

  final String? labelText;
  final String? hintText;
  final int? maxLines;
  final Function(String)? onChanged;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      maxLines: maxLines,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: _buildBorder(),
        focusedBorder: _buildBorder(),
        enabledBorder: _buildBorder(),
        labelStyle: const TextStyle(color: FColors.grey_3),
        labelText: labelText,
        hintStyle: const TextStyle(color: FColors.grey_2, fontSize: 16),
        hintText: hintText,
      ),
    );
  }

  InputBorder? _buildBorder() {
    return OutlineInputBorder(
        borderSide: const BorderSide(color: FColors.grey_2),
        borderRadius: BorderRadius.circular(4));
  }
}
