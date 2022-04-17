import 'package:fitqa/src/application/trainer/trainer_detail.dart';
import 'package:fitqa/src/domain/entities/trainer/trainer_image/trainer_image.dart';
import 'package:fitqa/src/theme/dimen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TrainerIntroduce extends ConsumerWidget {
  const TrainerIntroduce({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final trainerDetail = ref.watch(trainerDetailProvider).data!;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 35),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Image.network(
                trainerDetail.images
                    .firstWhere(
                        (element) => element.imageType == ImageType.profile)
                    .imageUrl,
                fit: BoxFit.fill,
                height: FDimen.trainerDetailIntroduceImageSize,
                width: FDimen.trainerDetailIntroduceImageSize),
          ),
          const SizedBox(height: 22),
          Text(trainerDetail.introduceTitle,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
          const SizedBox(height: 22),
          Text(trainerDetail.introduceContext.replaceAll('\\n', '\n'),
              style: const TextStyle(fontSize: 16, height: 1.5),
              textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
