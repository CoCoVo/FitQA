import 'package:fitqa/src/presentation/widgets/trainer/edit/edit_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:fitqa/src/presentation/widgets/common/fitqa_textfield.dart';
import 'package:fitqa/src/theme/color.dart';

class EditIntroduce extends ConsumerWidget {
  EditIntroduce({Key? key}) : super(key: key);

  final _titleProvider = StateProvider<String>((ref) => "");
  final _contextProvider = StateProvider<String>((ref) => "");

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final titleController = ref.watch(_titleProvider);
    final contextController = ref.watch(_contextProvider);

    return EditLayout(children: [
      _buildIntroduceTitle(titleController),
      const SizedBox(height: 45),
      _buildIntroduceContext(contextController),
    ]);
  }

  Widget _buildIntroduceTitle(titleController) {
    return FTextField(
      onChanged: (val) => titleController.state = val,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
      style: const TextStyle(fontSize: 14, color: FColors.black),
      labelText: "한줄 소개",
      hintText: "예) 안녕하세요, 트레이너 OOO입니다.",
      hintStyle: const TextStyle(fontSize: 14, color: FColors.grey_2),
      maxLines: 1,
      maxLength: 30,
    );
  }

  Widget _buildIntroduceContext(contextController) {
    return FTextField(
      onChanged: (val) => contextController.state = val,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
      style: const TextStyle(fontSize: 14, color: FColors.black),
      labelText: "상세 소개",
      hintText: "본인을 소개할 수 있는 정보를 입력하세요. \n (경력은 경력 사항에서 입력할 수 있습니다.)",
      hintStyle:
          const TextStyle(fontSize: 14, color: FColors.grey_2, height: 1.2),
      maxLines: 8,
      maxLength: 200,
    );
  }
}
