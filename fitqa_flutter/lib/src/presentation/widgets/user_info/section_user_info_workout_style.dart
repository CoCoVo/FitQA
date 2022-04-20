import 'package:fitqa/src/application/user/user_info.dart';
import 'package:fitqa/src/presentation/widgets/common/form/fitqa_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SectionUserInfoWorkoutStyle extends ConsumerWidget {
  SectionUserInfoWorkoutStyle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String? selectedStyle = ref.watch(userInfoWorkoutStyleProvider);
    final selectedStyleController =
        ref.watch(userInfoWorkoutStyleProvider.notifier);

    return FitqaDropdown(
      label: "운동성향",
      hint: "선택",
      text: selectedStyle,
      child: ListView(
        children: [
          ListTile(
            title: Text("보디빌딩"),
            onTap: () {
              selectedStyleController.state = "보디빌딩";
              _closeBottomSheet(context);
            },
          ),
          ListTile(
            title: Text("다이어트"),
            onTap: () {
              selectedStyleController.state = "다이어트";
              _closeBottomSheet(context);
            },
          )
        ],
      ),
    );
  }

  void _closeBottomSheet(BuildContext context) {
    Navigator.pop(context);
  }
}
