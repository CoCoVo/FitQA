import 'package:fitqa/src/application/feedback/feedback_selected_trainer.dart';
import 'package:fitqa/src/presentation/widgets/common/appbar/fitqa_appbar_sub.dart';
import 'package:fitqa/src/presentation/widgets/feedback/register/feedback_select_category.dart';
import 'package:fitqa/src/presentation/widgets/feedback/register/feedback_select_trainer.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FeedbackCollapsedAppbar extends ConsumerWidget {
  const FeedbackCollapsedAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedTrainer = ref.watch(selectedTrainerProvider);

    final statusBarHeight = MediaQuery.of(context).viewPadding.top;

    return Stack(
      children: <Widget>[
        Container(
          // status bar 크기를 뺀 만큼으로 크기를 잡는다.
          height: 200 - statusBarHeight,
          color: FColors.blue,
          child: FitqaAppbarSub(
            title: "새 게시물 쓰기",
            centerTitle: true,
            onPressed: () => _close(context, ref),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 95 - statusBarHeight),
          child: Card(
            child: (selectedTrainer == null)
                ? FeedbackSelectTrainer()
                : FeedbackSelectCategory(),
            margin: const EdgeInsets.symmetric(horizontal: 16),
            elevation: 4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            clipBehavior: Clip.antiAlias,
          ),
        )
      ],
    );
  }

  void _close(BuildContext context, WidgetRef ref) {
    ref.watch(selectedTrainerProvider.notifier).state = null;
    ref.watch(selectedTrainerFeedbackPriceProvider.notifier).state = null;
    Navigator.pop(context);
  }
}
