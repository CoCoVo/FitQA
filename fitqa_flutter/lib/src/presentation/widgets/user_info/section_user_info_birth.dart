import 'package:fitqa/src/presentation/widgets/common/form/fitqa_underlined_textfield.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class SectionUserInfoBirth extends ConsumerWidget {
  SectionUserInfoBirth({Key? key}) : super(key: key);

  final _birthdayProvider = StateProvider<DateTime>((ref) => DateTime.now());
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final birthdayController = ref.watch(_birthdayProvider.notifier);

    return FitqaUnderlinedTextField(
      // text: DateFormat("yyyy년 MM월 dd일").format(birthdayController.state),
      labelText: "생년월일",
      readOnly: true,
      controller: _textController,
      suffixChild: IconButton(
        icon: const Icon(
          Icons.calendar_today_rounded,
          color: FColors.grey_2,
        ),
        onPressed: () async {
          final birthday = await showDatePicker(
              context: context,
              initialDate: birthdayController.state,
              firstDate: DateTime(1900),
              lastDate: DateTime(2025),
              locale: Localizations.localeOf(context));

          if (birthday != null) {
            birthdayController.state = birthday;
            _textController.text = DateFormat("yyyy년 MM월 dd일").format(birthday);
          }
        },
      ),
    );
  }
}
