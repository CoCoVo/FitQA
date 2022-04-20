import 'package:fitqa/src/application/user/user_info.dart';
import 'package:fitqa/src/presentation/widgets/common/form/fitqa_underlined_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SectionUserName extends ConsumerWidget {
  const SectionUserName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userInfoNameController = ref.watch(userInfoNameProvider.notifier);

    return FitqaUnderlinedTextField(
      labelText: "닉네임",
      onChanged: (text) => userInfoNameController.state = text,
    );
  }
}
