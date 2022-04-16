import 'package:fitqa/src/common/fitqa_icon.dart';
import 'package:fitqa/src/domain/entities/common/enum/common_eunm.dart';
import 'package:fitqa/src/domain/entities/trainer/trainer/trainer.dart';
import 'package:fitqa/src/presentation/widgets/common/area_small_widget.dart';
import 'package:fitqa/src/presentation/widgets/common/fitqa_dropdown.dart';
import 'package:fitqa/src/presentation/widgets/common/fitqa_textfield.dart';
import 'package:fitqa/src/presentation/widgets/common/multi_select_chip.dart';
import 'package:fitqa/src/presentation/widgets/trainer/edit/edit_layout.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:fitqa/src/theme/dimen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EditInfo extends ConsumerWidget {
  EditInfo({Key? key}) : super(key: key);

  final _dropDownTitleProvider = StateProvider<String>((ref) => "선택");

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dropDownTitle = ref.watch(_dropDownTitleProvider);
    return EditLayout(children: [
      ..._buildAvatarBox(),
      ..._buildNameBox(),
      ..._buildWorkOutStyleBox(context, dropDownTitle, ref),
      ..._buildWorkOutAreas()
    ]);
  }

  List<Widget> _buildAvatarBox() {
    return [
      const SizedBox(height: 36),
      const Center(
        child: CircleAvatar(
            radius: FDimen.trainerEditProfileRadius,
            backgroundColor: FColors.grey_2),
      ),
      const SizedBox(
        height: 60,
      ),
    ];
  }

  List<Widget> _buildNameBox() {
    return [
      const Text("이름 설정"),
      const SizedBox(
        height: 8,
      ),
      const FTextField(
        hintText: "이름을 입력해주세요.",
        maxLines: 1,
        maxLength: 20,
      ),
      const SizedBox(
        height: 50,
      )
    ];
  }

  List<Widget> _buildWorkOutStyleBox(
      BuildContext context, String dropDownTitle, WidgetRef ref) {
    return [
      const Text("운동 분야"),
      const SizedBox(
        height: 8,
      ),
      FDropDown(
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 13),
        borderRadius: 8,
        title: dropDownTitle,
        itemList: WorkOutStyle.values
            .map((e) => ListTile(
                title: Text(e.toStringType()),
                onTap: () {
                  ref.read(_dropDownTitleProvider.notifier).state =
                      e.toStringType();
                  Navigator.pop(context);
                }))
            .toList(),
      ),
      const SizedBox(height: 38)
    ];
  }

  List<Widget> _buildWorkOutAreas() {
    return [
      const Text("주요 운동부위"),
      const SizedBox(
        height: 8,
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: MultiSelectChip(WorkOutArea.values
            .where((element) => element != WorkOutArea.all)
            .map((e) => e.toStringType())
            .toList()),
      )
    ];
  }
}
