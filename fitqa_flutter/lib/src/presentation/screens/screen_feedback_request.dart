import 'package:fitqa/src/application/feedback/feedback_list.dart';
import 'package:fitqa/src/application/feedback/feedback_selected_trainer.dart';
import 'package:fitqa/src/application/storage/user_token_facade.dart';
import 'package:fitqa/src/domain/entities/common/enum/common_eunm.dart';
import 'package:fitqa/src/presentation/widgets/common/bullet_point_text.dart';
import 'package:fitqa/src/presentation/widgets/common/fitqa_textfield.dart';
import 'package:fitqa/src/presentation/widgets/common/labeled_checkbox.dart';
import 'package:fitqa/src/presentation/widgets/feedback/register/feedback_collapsed_appbar.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ScreenFeedbackRequest extends ConsumerWidget {
  ScreenFeedbackRequest({Key? key}) : super(key: key);

  final _titleProvider = StateProvider<String>((ref) => "");
  final _contentProvider = StateProvider<String>((ref) => "");
  final _lockedProvider = StateProvider<bool>((ref) => false);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final titleController = ref.watch(_titleProvider.notifier);
    final contentController = ref.watch(_contentProvider.notifier);
    final lockedController = ref.watch(_lockedProvider.notifier);

    return WillPopScope(
      onWillPop: () async {
        _close(context, ref);
        return true;
      },
      child: Scaffold(
          backgroundColor: FColors.white,
          body: ListView(
            children: [
              FeedbackCollapsedAppbar(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 24,
                      ),
                      const Text(
                        "안내사항",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const BulletPointText(
                          textStyle: TextStyle(fontSize: 12),
                          children: [
                            "궁금한 내용이나 영상에 대한 추가설명은 글로 작성해주세요.",
                            "질문자의 체격 조건을 파악하여 맞춤 솔루션을 드립니다.",
                            "보내주시는 영상은 가급적 0분 이내로 맞춰 주세요.",
                            "자세가 잘 보이도록 정확하고 선명한 영상을 전달해주시면 더 좋은 피드백이 가능합니다."
                          ]),
                      const SizedBox(
                        height: 20,
                      ),
                      FTextField(
                        onChanged: (val) => titleController.state = val,
                        labelText: "제목",
                        hintText: "예시) 벤치할 때 팔꿈치가 아픕니다",
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      FTextField(
                        onChanged: (val) => contentController.state = val,
                        labelText: "내용",
                        maxLines: 10,
                        hintText:
                            "예시) 안녕하세요. 운동 n년차 바디빌딩 헬린이입니다. 중량이 올라가면서 팔꿈치가 많이 아픕니다.",
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      LabeledCheckbox(
                        label: "비공개로 올리기",
                        onChanged: (val) => {lockedController.state = val},
                        value: lockedController.state,
                      ),
                    ]),
              ),
              Align(
                alignment: FractionalOffset.bottomCenter,
                child: InkWell(
                  onTap: () {
                    _registerFeedback(ref);
                    _close(context, ref);
                  },
                  child: Container(
                    height: 70,
                    color: FColors.blue,
                    child: const Center(
                        child: Text(
                      "결제하기",
                      style: TextStyle(
                          fontSize: 18,
                          color: FColors.white,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
              )
            ],
          )),
    );
  }

  void _registerFeedback(WidgetRef ref) {
    final userToken = ref.watch(userTokenProvider);
    final title = ref.watch(_titleProvider);
    final content = ref.watch(_contentProvider);
    final locked = ref.watch(_lockedProvider);
    final selectedTrainer = ref.watch(selectedTrainerProvider);
    final selectedFeedbackPrice =
        ref.watch(selectedTrainerFeedbackPriceProvider);

    final feedbackController = ref.watch(feedbackListProvider.notifier);

    if (selectedTrainer == null) {
      // 트레이너 선택을 안함
      return;
    } else if (selectedFeedbackPrice == null ||
        selectedFeedbackPrice.area == WorkOutArea.none ||
        selectedFeedbackPrice.area == WorkOutArea.all) {
      // 잘못된 접근
      return;
    }
    feedbackController.registerFeedback(
        userToken,
        selectedTrainer.trainerToken,
        selectedFeedbackPrice.area,
        selectedFeedbackPrice.price,
        title,
        content,
        locked);
  }

  void _close(BuildContext context, WidgetRef ref) {
    ref.watch(selectedTrainerProvider.notifier).state = null;
    ref.watch(selectedTrainerFeedbackPriceProvider.notifier).state = null;
    Navigator.pop(context);
  }
}
