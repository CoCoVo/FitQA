import 'package:fitqa/src/common/fitqa_icon.dart';
import 'package:fitqa/src/domain/entities/trainer/trainer/trainer.dart';
import 'package:fitqa/src/presentation/widgets/trainer/edit/edit_career.dart';
import 'package:fitqa/src/presentation/widgets/trainer/edit/edit_feedback_type.dart';
import 'package:fitqa/src/presentation/widgets/trainer/edit/edit_info.dart';
import 'package:fitqa/src/presentation/widgets/trainer/edit/edit_introduce.dart';
import 'package:fitqa/src/presentation/widgets/trainer/edit/edit_sns.dart';
import 'package:fitqa/src/presentation/widgets/trainer/feedback/trainer_feedback_all.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:fitqa/src/theme/dimen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum FeedbackCategory { all, notComplete, complete }

class FeedbackTab {
  const FeedbackTab(this.form, this.index, this.displayName, this.view);

  final FeedbackCategory form;
  final int index;
  final String displayName;
  final Widget view;
}

final List<FeedbackTab> _categoryTabs = [
/*  FeedbackTab(FeedbackCategory.all, 0, "전체보기", TrainerFeedbackAll(trainer: trainer)),*/
  FeedbackTab(FeedbackCategory.notComplete, 1, "답변대기", EditIntroduce()),
  FeedbackTab(FeedbackCategory.complete, 2, "답변완료", EditCareer()),
];

class TrainerFeedbackTab extends ConsumerWidget {
  const TrainerFeedbackTab({Key? key, required this.trainer}) : super(key: key);

  final Trainer trainer;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
        length: _categoryTabs.length,
        child: Scaffold(
          appBar: TabBar(
              labelColor: FColors.black,
              unselectedLabelColor: FColors.grey_3,
              indicatorColor: FColors.transparent,
              labelStyle: const TextStyle(fontWeight: FontWeight.bold),
              tabs:
                  _categoryTabs.map((e) => Tab(text: e.displayName)).toList()),
          backgroundColor: FColors.white,
          body: TabBarView(children: _categoryTabs.map((e) => e.view).toList()),
        ));
  }
}
