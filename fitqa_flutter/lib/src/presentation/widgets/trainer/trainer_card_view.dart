import 'package:expandable/expandable.dart';
import 'package:fitqa/src/domain/entities/trainer/trainer/trainer.dart';
import 'package:fitqa/src/presentation/screens/screen_trainer_detail.dart';
import 'package:fitqa/src/presentation/widgets/trainer/area_small_widget.dart';
import 'package:fitqa/src/presentation/widgets/trainer/trainer_card_image.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:fitqa/src/theme/dimen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TrainerCardView extends ConsumerWidget {
  final Trainer data;

  const TrainerCardView({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
        height: FDimen.trainerCardHeight,
        width: FDimen.trainerCardWidth,
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          child: InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        ScreenTrainerDetail(trainer: this.data,))),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildCardImage(),
                const SizedBox(height: 5),
                buildCardContent(),
                const SizedBox(height: 5),
              ],
            ),
          ),
        ));
  }

  Widget buildCardImage() {
    List<Widget> imageWidgets = <Widget>[];

    for (var i = 0; i < FDimen.trainerCardImageCount; i++) {
      if (data.images.length > i) {
        imageWidgets.add(TrainerCardImage(imageUrl: data.images[i].imageUrl));
      } else {
        imageWidgets.add(Flexible(flex: 1, child: Container()));
      }
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: imageWidgets,
    );
  }

  Widget buildCardContent() => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildContentHeader(),
          const SizedBox(
            height: 10,
          ),
          buildContentBottom(),
          const SizedBox(
            height: 10,
          ),
          buildAction(),
        ],
      ));

  Widget buildContentHeader() {
    return Text("${data.name} 트레이너",
        style: const TextStyle(
            fontSize: 16, fontWeight: FontWeight.w700, color: FColors.black));
  }

  Widget buildContentBottom() {
    return Row(
      children: buildInterestAreaWidgets(),
    );
  }

  Widget buildAction() {
    return ElevatedButton(
      onPressed: () => {},
      child: Text("상담 신청"),
      style: ElevatedButton.styleFrom(
          primary: FColors.blue,
          textStyle: TextStyle(
              fontSize: 14, color: FColors.white, fontWeight: FontWeight.bold)),
    );
  }

  List<Widget> buildInterestAreaWidgets() {
    List<Widget> interestAreas = <Widget>[];
    if (data.interestAreas.length == 0) return interestAreas;
    for (var area in data.interestAreas) {
      interestAreas.add(AreaSmallWidget(area.interestArea,
          textColor: FColors.black,
          backgroundColor: FColors.white,
          borderColor: FColors.black));
      interestAreas.add(const SizedBox(width: 5));
    }
    return interestAreas;
  }
}
