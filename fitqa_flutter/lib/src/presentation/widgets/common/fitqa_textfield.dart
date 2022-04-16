import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';

class FTextField extends StatelessWidget {
  const FTextField(
      {Key? key,
      this.labelText,
      this.labelStyle = const TextStyle(color: FColors.grey_3),
      this.hintText,
      this.hintStyle = const TextStyle(color: FColors.grey_2, fontSize: 16),
      this.maxLines,
      this.contentPadding,
      this.onChanged,
      this.controller})
      : super(key: key);

  final String? labelText;
  final TextStyle? labelStyle;
  final String? hintText;
  final TextStyle? hintStyle;
  final int? maxLines;
  final EdgeInsetsGeometry? contentPadding;
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
        contentPadding: contentPadding,
        border: _buildBorder(),
        focusedBorder: _buildBorder(),
        enabledBorder: _buildBorder(),
        labelStyle: labelStyle,
        labelText: labelText,
        hintStyle: hintStyle,
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
