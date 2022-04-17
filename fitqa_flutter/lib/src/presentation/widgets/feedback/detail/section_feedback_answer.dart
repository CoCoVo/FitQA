import 'package:expandable/expandable.dart';
import 'package:fitqa/src/application/feedback/feedback_detail.dart';
import 'package:fitqa/src/domain/entities/feedback/feedback_trainer_image/feedback_trainer_image.dart';
import 'package:fitqa/src/presentation/widgets/common/fitqa_textfield.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SectionFeedbackAnswer extends StatefulWidget {
  const SectionFeedbackAnswer({Key? key}) : super(key: key);

  @override
  State<SectionFeedbackAnswer> createState() => _SectionFeedbackAnswerState();
}

class _SectionFeedbackAnswerState extends State<SectionFeedbackAnswer> {
  bool _isExpanded = false;

  void _expandAnswerContent() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: ExpandableNotifier(
          // <-- Provides ExpandableController to its children
          child: Column(
            children: [
              Expandable(
                // <-- Driven by ExpandableController from ExpandableNotifier
                collapsed: SectionAnswerProfile(),
                expanded: Column(children: [
                  SectionAnswerProfile(
                    onComplete: () => {},
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  ScrollOnExpand(child: SectionAnswerContent()),
                ]),
              ),
            ],
          ),
        ));
  }
}

class SectionAnswerProfile extends ConsumerWidget {
  SectionAnswerProfile({Key? key, this.onComplete}) : super(key: key);

  Function()? onComplete;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final feedbackDetail = ref.watch(feedbackDetailProvider).data!;

    return Row(
      children: [
        CircleAvatar(
            radius: 28,
            backgroundImage: NetworkImage(
                _selectTrainerImageUrl(feedbackDetail.trainer.images))),
        SizedBox(
          width: 20,
        ),
        Expanded(
            child: RichText(
                text: TextSpan(
                    text: feedbackDetail.trainer.name,
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
            onPressed: onComplete ?? ExpandableController.of(context)?.toggle,
            child: Text((onComplete == null) ? "답변하기" : "작성완료"),
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
  }

  String _selectTrainerImageUrl(List<FeedbackTrainerImage> images) {
    return images.firstWhere((img) => img.imageType == "PROFILE").imageUrl;
  }
}

class SectionAnswerContent extends StatelessWidget {
  const SectionAnswerContent({Key? key}) : super(key: key);

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
        )
      ],
    );
  }
}
