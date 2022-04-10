import 'package:fitqa/src/domain/entities/trainer/trainer/trainer.dart';
import 'package:fitqa/src/presentation/widgets/trainer/area_small_widget.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:fitqa/src/theme/dimen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';

const String mockTrainerImage_1 = 'https://s3-alpha-sig.figma'
    '.com/img/4ab1/bef7/46f1224ccf7930d6030bb33411984aab?Expires'
    '=1649635200&Signature=XX'
    '-3O5CKVn7mqSZXMnpGyRDRl5EWW2mSYPjapX8q7OnN3y9xS1yS4UOpCKO0Otz5'
    'PHynJAdThwnkEcH19lbHDDBwqs6TVQTprFZqYIIqKN6OEB3yOyrmHvqD2NqU'
    '-wqmi0z4L5GFcnXt7MTIYMaSOIxev8kkX6IQ0zO'
    '-lVq8bs8zh0zGhefYiM1F8OIWI6NbqBAIrL6lcaZMjYB3OkrgAZ4LxbJhGJ8AR'
    'iUiRZO7kmOtQ4rN-TCcHAz4kYEulubqPx89zzZaynclILIOhw6Ks1wKHUMycJ'
    '-MBDW2DBJaURE3iqZCQKSOL0i6wDIZAevLDkrMaQZgAaGQDTjzjwF8Og__&Key'
    '-Pair-Id=APKAINTVSUGEWH5XD5UA';

const String mockTrainerImage_2 = 'https://s3-alpha-sig.figma'
    '.com/img/2c6b/fdfd/74df46b52d09c58531861d7cf589800b?Expires=1649635200&Signature=arDKDn-nYaKSdKXsPo3JlS-KoPyoVi4WyNsIRMGm-pwh7v3waULtZJWz2mNx~tQk3FoPgsKwWzr1uYJjOmCPXIUD7I~ksWmABbMmQoGHgQZ9eCTIY5F16yuJ4WInt70Zc3pp1nXVC3KGnA0XUVHx8Xn7SP7U1rrlgtSOWyS3jLqttMUm3NuxqzhJa6PJjXddgoN4LiS-WTeVOa5seBDUPqfPlAI4vakdLbaSTmWw6K0lze-dbvnOzWh5de3JK~nJvzoaMF~D4HFcdoCaZY3b6clo~OB-ujM-ig0MQkbDbh0lL6wrmEL9X8RBOh~6aE21gEIhM0vEc60X3S5gkoZlNg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA';

const String mockTrainerImage_3 = 'https://s3-alpha-sig.figma'
    '.com/img/2fcf/66ec/a2b468ff9efd9deb5575b35988aee23a?Expires=1649635200&Signature=VJfVUGc-ZVnUJUTTs~vfTPaqtAo1pfde8-D8ccx2JpUNAzhFvQMU9CsJiB~2J2IXVxl-AwNP2m2GdeIZ7mbLH88Dwly2yQFlWZ874w80mVpXyco6O~ZXeQqw9QBwQ0x1mN2e3yt-XhH76zMBHXY95yTyv03FLSuAkPyIvTvZI~L6PXKMudxQf9sCoUxePjfxUi6f2wwVddtjekMiDKb8dnQhXtvb2gra64JIz49vb5tOYZLzVovnSQtqZdZyaJERT~Sr6LeHyKOJ25sAMBxaSri6q1uAfOkvjgVQIwfxSoBN7nVVMGrfdZkFzcqkJi1JIHtLae8EliMz7aL3BhZ3Wg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA';

class TrainerCardView extends ConsumerWidget {
  final Trainer data;

  TrainerCardView(this.data) {
    print(this.data);
  }

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
            onTap: () {},
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: CachedNetworkImage(
              imageUrl: mockTrainerImage_1,
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
              height: FDimen.trainerCardImageSize,
              fit: BoxFit.fill),
        ),
        Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: CachedNetworkImage(
            imageUrl: mockTrainerImage_2,
            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.error),
            height: FDimen.trainerCardImageSize,
            fit: BoxFit.fill,
          ),
        ),
        Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: CachedNetworkImage(
              imageUrl: mockTrainerImage_3,
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
              height: FDimen.trainerCardImageSize,
              fit: BoxFit.fill),
        ),
      ],
    );
  }

  Widget buildCardContent() => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildContentHeader(),
          const SizedBox(height: 10),
          buildContentBottom(),
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

  List<Widget> buildInterestAreaWidgets() {
    List<Widget> interestAreas = <Widget>[];
    if (data.interestAreas.length == 0) return interestAreas;
    for (var area in data.interestAreas) {
      interestAreas.add(AreaSmallWidget(area.interestArea, textColor: FColors
            .black, backgroundColor: FColors.white, borderColor: FColors.black));
      interestAreas.add(const SizedBox(width: 5));
    }
    return interestAreas;
  }
}
