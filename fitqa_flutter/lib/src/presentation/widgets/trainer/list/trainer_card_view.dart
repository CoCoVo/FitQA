import 'package:fitqa/src/common/fitqa_icon.dart';
import 'package:fitqa/src/domain/entities/common/enum/common_eunm.dart';
import 'package:fitqa/src/domain/entities/trainer/trainer/trainer.dart';
import 'package:fitqa/src/domain/entities/trainer/trainer_image/trainer_image.dart';
import 'package:fitqa/src/presentation/widgets/common/area_small_widget.dart';
import 'package:fitqa/src/presentation/widgets/common/fitqa_elevated_button.dart';
import 'package:fitqa/src/presentation/widgets/trainer/list/trainer_card_image.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:fitqa/src/theme/dimen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TrainerCardView extends ConsumerWidget {
  const TrainerCardView({
    Key? key,
    required this.trainer,
    required this.onTrainerTap,
    required this.onButtonTap,
  }) : super(key: key);

  final Trainer trainer;
  final Function(Trainer)? onTrainerTap;
  final Function(Trainer)? onButtonTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      child: InkWell(
        onTap: () {
          if (onTrainerTap != null) onTrainerTap!(trainer);
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildCardImage(),
            buildCardContent(context, ref),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }

  Widget buildCardImage() {
    List<Widget> imageWidgets = <Widget>[];

    //TODO(in.heo)
    // - Ordering을 추가해야 할 수도, 어플에서 보여지는 위젯의 순서
    final galleryImages = trainer.images
        .where((element) => element.imageType == ImageType.gallery)
        .toList();

    for (var i = 0; i < FDimen.trainerCardImageCount; i++) {
      if (galleryImages.length > i) {
        imageWidgets.add(TrainerCardImage(imageUrl: galleryImages[i].imageUrl));
      } else {
        imageWidgets.add(Flexible(flex: 1, child: Container()));
      }
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: imageWidgets,
    );
  }

  Widget buildCardContent(BuildContext context, WidgetRef ref) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildContentHeader(),
          const SizedBox(
            height: 24,
          ),
          buildContentBottom(),
          const SizedBox(
            height: 8,
          ),
          buildAction(),
        ],
      ));

  Widget buildContentHeader() {
    return Row(
      children: [
        Text("${trainer.name} 트레이너",
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: FColors.black)),
        const SizedBox(width: 8),
        Text(trainer.representativeFootprints,
            style: const TextStyle(
                fontSize: 12, height: 1.2, color: FColors.blue)),
        const Expanded(
            child: Align(
          alignment: Alignment.centerRight,
          child: Icon(FitQaIcon.star, color: FColors.grey_1),
        ))
      ],
    );
  }

  Widget buildContentBottom() {
    return Row(children: [
      ...buildInterestAreaWidgets(),
      Expanded(
        child: Align(
          alignment: Alignment.centerRight,
          child: RichText(
              text: TextSpan(
                  text: "총 답변 수",
                  style: const TextStyle(fontSize: 12, color: FColors.black),
                  children: [
                TextSpan(
                    text: " /${trainer.feedbacks.length}건",
                    style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: FColors.blue))
              ])),
        ),
      )
    ]);
  }

  Widget buildAction() {
    return Row(
      children: [
        Expanded(
          child: FElevatedButton(
            onPressed: () {
              if (onButtonTap != null) onButtonTap!(trainer);
            },
            child: const Text("상담 신청",
                style: TextStyle(
                    fontSize: 16,
                    color: FColors.white,
                    fontWeight: FontWeight.bold)),
            background: FColors.blue,
            borderRadius: 4,
            minSize: const Size(0, FDimen.trainerCardButtonHeight),
          ),
        ),
      ],
    );
  }

  List<Widget> buildInterestAreaWidgets() {
    List<Widget> interestAreas = <Widget>[];

    if (trainer.interestAreas.isEmpty) return interestAreas;

    for (var area in trainer.interestAreas) {
      interestAreas.add(AreaSmallWidget(area.interestArea.toStringType(),
          textColor: FColors.black,
          backgroundColor: FColors.white,
          borderColor: FColors.black));
      interestAreas.add(const SizedBox(width: 5));
    }
    return interestAreas;
  }
}
