import 'package:expandable/expandable.dart';
import 'package:fitqa/src/application/feedback/feedback_detail.dart';
import 'package:fitqa/src/application/storage/trainer_token_facade.dart';
import 'package:fitqa/src/common/image_utils.dart';
import 'package:fitqa/src/presentation/widgets/common/fitqa_textfield.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SectionFeedbackAnswerOwner extends ConsumerWidget {
  final answerDescriptionProvider = StateProvider<String>((ref) => "");

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final feedbackDetailController = ref.watch(feedbackDetailProvider.notifier);
    final answerDescriptionController =
        ref.watch(answerDescriptionProvider.notifier);

    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: ExpandableNotifier(
          // <-- Provides ExpandableController to its children
          child: Column(
            children: [
              Expandable(
                // <-- Driven by ExpandableController from ExpandableNotifier
                collapsed: SectionAnswerOwnerProfile(),
                expanded: Column(children: [
                  SectionAnswerOwnerProfile(
                    onCompletePressed: () {
                      final ownerTrainerToken = ref.read(trainerTokenProvider);
                      final answerDescription =
                          answerDescriptionController.state;

                      feedbackDetailController.answer(
                          ownerTrainerToken, answerDescription);
                    },
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  ScrollOnExpand(child: SectionAnswerContent(onChanged: (text) {
                    answerDescriptionController.state = text;
                  })),
                ]),
              ),
            ],
          ),
        ));
  }
}

class SectionAnswerOwnerProfile extends ConsumerWidget {
  SectionAnswerOwnerProfile({Key? key, this.onCompletePressed})
      : super(key: key);

  Function()? onCompletePressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final feedbackDetail = ref.watch(feedbackDetailProvider);

    return feedbackDetail.maybeWhen(
        success: (feedback) {
          return Row(
            children: [
              CircleAvatar(
                  radius: 28,
                  backgroundImage: NetworkImage(
                      ImageUtils.getTrainerProfile(feedback.trainer.images))),
              SizedBox(
                width: 20,
              ),
              Expanded(
                  child: RichText(
                      text: TextSpan(
                          text: feedback.trainer.name,
                          style: TextStyle(
                              fontSize: 18,
                              color: FColors.black,
                              fontWeight: FontWeight.bold),
                          children: [
                    TextSpan(
                        text: "님의 답변을\n기다리는 중입니다",
                        style: TextStyle(fontWeight: FontWeight.normal))
                  ]))),
              SizedBox(
                width: 20,
              ),
              ExpandableButton(
                child: ElevatedButton(
                  onPressed: onCompletePressed ??
                      ExpandableController.of(context)?.toggle,
                  child: Text((onCompletePressed == null) ? "답변하기" : "작성완료"),
                  style: ElevatedButton.styleFrom(
                      primary: FColors.blue,
                      textStyle: TextStyle(
                          fontSize: 14,
                          color: FColors.white,
                          fontWeight: FontWeight.bold)),
                ),
              )
            ],
          );
        },
        orElse: () => const SizedBox());
  }
}

class SectionAnswerContent extends StatelessWidget {
  const SectionAnswerContent({Key? key, this.onChanged}) : super(key: key);

  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: FColors.grey_0),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "피드백 영상 업로드",
                  style: TextStyle(fontSize: 16, color: FColors.grey_3),
                ),
                SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                  onPressed: () => {},
                  child: Text("파일 선택하기"),
                  style: ElevatedButton.styleFrom(
                      primary: FColors.blue,
                      shape: StadiumBorder(),
                      textStyle: TextStyle(
                          fontSize: 14,
                          color: FColors.white,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        FTextField(
          labelText: "피드백 내용",
          hintText: "안녕하세요. 운동 n년차 바디빌딩 헬린이입니다. 중량이 올라가면서 팔꿈치가 많이 아픕니다.",
          maxLines: 10,
          onChanged: (text) {
            if (onChanged != null) onChanged!(text);
          },
        )
      ],
    );
  }
}
