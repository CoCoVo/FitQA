import 'package:fitqa/src/common/fitqa_icon.dart';
import 'package:fitqa/src/presentation/widgets/trainer/edit/edit_career.dart';
import 'package:fitqa/src/presentation/widgets/trainer/edit/edit_feedback_type.dart';
import 'package:fitqa/src/presentation/widgets/trainer/edit/edit_info.dart';
import 'package:fitqa/src/presentation/widgets/trainer/edit/edit_introduce.dart';
import 'package:fitqa/src/presentation/widgets/trainer/edit/edit_sns.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:fitqa/src/theme/dimen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum EditForm { info, introduce, career, feedbackType, sns }

class EditTab {
  const EditTab(this.form, this.index, this.displayName, this.view);

  final EditForm form;
  final int index;
  final String displayName;
  final Widget view;
}

final List<EditTab> _editTabs = [
  const EditTab(EditForm.info, 0, "기본정보", EditInfo()),
  EditTab(EditForm.introduce, 1, "소개글", EditIntroduce()),
  EditTab(EditForm.career, 2, "경력 및 자격면허", EditCareer()),
  const EditTab(EditForm.feedbackType, 3, "상담 종류", EditFeedbackType()),
  const EditTab(EditForm.sns, 4, "연결 링크", EditSns()),
];

class ScreenEditTrainerDetail extends ConsumerWidget {
  const ScreenEditTrainerDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: _editTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: FColors.white,
          centerTitle: true,
          titleTextStyle: const TextStyle(
              color: FColors.black, fontSize: 14, fontWeight: FontWeight.w700),
          toolbarHeight: FDimen.trainerEditAppBarHeight,
          elevation: 0,
          title: const Text("트레이너 프로필 수정"),
          bottom: TabBar(
              isScrollable: true,
              labelPadding: const EdgeInsets.only(left: 20, right: 20),
              labelColor: FColors.blue,
              unselectedLabelColor: FColors.black,
              indicatorColor: FColors.transparent,
              labelStyle: const TextStyle(fontSize: 14),
              tabs: _editTabs.map((e) => Tab(text: e.displayName)).toList()),
          leading: InkWell(
            onTap: () => Navigator.of(context).pop(),
            child: const Icon(FitQaIcon.back, color: FColors.black),
          ),
        ),
        body: TabBarView(children: _editTabs.map((e) => e.view).toList()),
      ),
    );
  }
}
