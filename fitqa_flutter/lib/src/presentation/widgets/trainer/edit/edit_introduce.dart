import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:fitqa/src/presentation/widgets/common/fitqa_elevated_button.dart';
import 'package:fitqa/src/presentation/widgets/common/fitqa_textfield.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:fitqa/src/theme/dimen.dart';

class EditIntroduce extends ConsumerWidget {
  EditIntroduce({Key? key}) : super(key: key);

  final _titleProvider = StateProvider<String>((ref) => "");
  final _contextProvider = StateProvider<String>((ref) => "");

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final titleController = ref.watch(_titleProvider);
    final contextController = ref.watch(_contextProvider);

    return Container(
      color: FColors.white,
      padding: const EdgeInsets.fromLTRB(16, 40, 16, 16),
      child: Column(
        children: [
          _buildIntroduceTitle(titleController),
          const SizedBox(height: 45),
          _buildIntroduceContext(contextController),
          Flexible(
            fit: FlexFit.tight,
            child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: [
                    Expanded(
                      child: FElevatedButton(
                        onPressed: () => {},
                        child: const Text("나가기",
                            style: TextStyle(
                                fontSize: 16,
                                height: 1.25,
                                fontWeight: FontWeight.w400,
                                color: FColors.grey_3)),
                        background: FColors.grey_5,
                        borderColor: FColors.grey_6,
                        borderRadius: 3,
                        minSize:
                            const Size(0, FDimen.trainerEditBottomButtonHeight),
                        elevation: 0,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: FElevatedButton(
                        onPressed: () => {},
                        child: const Text("저장",
                            style: TextStyle(
                                fontSize: 16,
                                height: 1.25,
                                fontWeight: FontWeight.w700,
                                color: FColors.white)),
                        background: FColors.blue,
                        borderRadius: 3,
                        minSize:
                            const Size(0, FDimen.trainerEditBottomButtonHeight),
                        elevation: 0,
                      ),
                    ),
                  ],
                )),
          )
        ],
      ),
    );
  }

  Widget _buildIntroduceTitle(titleController) {
    return FTextField(
      onChanged: (val) => titleController.state = val,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
      labelText: "한줄 소개",
      labelStyle: const TextStyle(fontSize: 14, color: FColors.black),
      hintText: "예) 안녕하세요, 트레이너 OOO입니다.",
      hintStyle: const TextStyle(fontSize: 14, color: FColors.grey_2),
      maxLines: 1,
    );
  }

  Widget _buildIntroduceContext(contextController) {
    return FTextField(
      onChanged: (val) => contextController.state = val,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
      labelText: "상세 소개",
      labelStyle: const TextStyle(fontSize: 14, color: FColors.black),
      hintText: "본인을 소개할 수 있는 정보를 입력하세요. \n (경력은 경력 사항에서 입력할 수 있습니다.)",
      hintStyle:
          const TextStyle(fontSize: 14, color: FColors.grey_2, height: 1.2),
      maxLines: 8,
    );
  }
}
