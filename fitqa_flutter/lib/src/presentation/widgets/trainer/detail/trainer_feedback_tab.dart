import 'package:fitqa/src/presentation/widgets/trainer/edit/edit_career.dart';
import 'package:fitqa/src/presentation/widgets/trainer/edit/edit_introduce.dart';
import 'package:fitqa/src/theme/color.dart';
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
  const TrainerFeedbackTab({Key? key}) : super(key: key);

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
