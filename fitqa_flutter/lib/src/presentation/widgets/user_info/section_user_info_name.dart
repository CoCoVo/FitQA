import 'package:fitqa/src/presentation/widgets/common/form/fitqa_underlined_textfield.dart';
import 'package:flutter/material.dart';

class SectionUserName extends StatelessWidget {
  const SectionUserName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FitqaUnderlinedTextField(labelText: "닉네임");
  }
}
