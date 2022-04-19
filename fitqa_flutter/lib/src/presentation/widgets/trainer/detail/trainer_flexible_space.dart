import 'package:fitqa/src/application/trainer/trainer_detail.dart';
import 'package:fitqa/src/domain/entities/trainer/trainer_image/trainer_image.dart';
import 'package:fitqa/src/presentation/widgets/trainer/detail/trainer_detail_info.dart';
import 'package:fitqa/src/presentation/widgets/trainer/detail/trainer_feedback_action.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:fitqa/src/theme/dimen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TrainerFlexibleSpace extends ConsumerWidget {
  const TrainerFlexibleSpace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final trainerDetail = ref.watch(trainerDetailProvider).data!;

    return FlexibleSpaceBar(
        collapseMode: CollapseMode.pin,
        background: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              color: FColors.white,
            ),
            Positioned.fill(
                bottom: FDimen.trainerDetailExpandedHeight -
                    FDimen.trainerDetailBackgroundHeight,
                child: Container(
                    height: FDimen.trainerDetailBackgroundHeight,
                    padding: const EdgeInsets.fromLTRB(15, 60, 0, 0),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(trainerDetail.images
                                .firstWhere((element) =>
                                    element.imageType == ImageType.background)
                                .imageUrl),
                            fit: BoxFit.cover)),
                    child: const TrainerDetailInfo())),
            const Positioned(
                top: FDimen.trainerDetailBackgroundHeight - 40,
                left: 20,
                right: 20,
                child: TrainerFeedbackAction())
          ],
        ));
  }
}
