import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FitqaUnderlinedTextField extends StatefulWidget {
  FitqaUnderlinedTextField({
    Key? key,
    this.labelText,
    this.hintText,
    this.maxLength,
    this.onChanged,
    this.suffixChild,
    this.showClear = false,
    this.readOnly = false,
    this.controller,
  }) : super(key: key);

  String? labelText;
  String? hintText;
  int? maxLength;
  ValueChanged<String>? onChanged;
  Widget? suffixChild;
  bool showClear;
  bool readOnly;
  TextEditingController? controller;

  @override
  State<FitqaUnderlinedTextField> createState() =>
      _FitqaUnderlinedTextFieldState();
}

class _FitqaUnderlinedTextFieldState extends State<FitqaUnderlinedTextField> {
  late TextEditingController _textController;

  Color enabledColor = const Color(0xFFE4E9F2);
  Color focusedColor = const Color(0xFF222B45);

  @override
  void initState() {
    super.initState();
    if (widget.controller == null) {
      _textController = TextEditingController();
    } else {
      _textController = widget.controller!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _textController,
      maxLines: 1,
      maxLength: widget.maxLength,
      readOnly: widget.readOnly,
      style: TextStyle(color: focusedColor),
      onChanged: (s) {
        if (widget.onChanged != null) widget.onChanged!(s);
        refresh();
      },
      decoration: InputDecoration(
          border: const UnderlineInputBorder(),
          labelText: widget.labelText,
          labelStyle: TextStyle(color: enabledColor),
          floatingLabelStyle: TextStyle(color: focusedColor),
          hintText: widget.hintText,
          hintStyle: TextStyle(color: enabledColor),
          counterStyle: TextStyle(
              color:
                  _textController.text.isEmpty ? enabledColor : focusedColor),
          enabledBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: enabledColor)),
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: focusedColor)),
          // contentPadding: EdgeInsets.fromLTRB(12, 8, 12, 8),
          contentPadding: const EdgeInsets.all(0),
          suffixIcon: _buildSuffix(),
          suffixIconColor: focusedColor),
    );
  }

  Widget? _buildSuffix() {
    if (widget.suffixChild != null) {
      return widget.suffixChild;
    } else if (widget.showClear) {
      return IconButton(
        icon: SvgPicture.asset("images/clear_text.svg"),
        onPressed: () {
          _textController.text = "";
        },
      );
    }
    return null;
  }

  void refresh() {
    setState(() {});
  }

  // @override
  // void dispose() {
  //   _textController.dispose();
  //   super.dispose();
  // }
}
