import 'package:fitqa/src/domain/entities/trainer/trainer/trainer.dart';
import 'package:fitqa/src/theme/dimen.dart';
import 'package:flutter/material.dart';

class TrainerIntroduce extends StatelessWidget {
  const TrainerIntroduce({Key? key, required this.trainer}) : super(key: key);

  final Trainer trainer;

  @override
  Widget build(BuildContext context) {
    //FIXME(in.heo)
    // - makes imageType from String to enum
    final profileImage = trainer.images
        .firstWhere((element) => element.imageType == "PROFILE")
        .imageUrl;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 35),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Image.network(profileImage,
                fit: BoxFit.fill,
                height: FDimen.trainerDetailIntroduceImageSize,
                width: FDimen.trainerDetailIntroduceImageSize),
          ),
          const SizedBox(height: 22),
          Text(
            trainer.introduceTitle,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 22),
          Text(trainer.introduceContext,
              style: const TextStyle(fontSize: 16, height: 1.5)),
        ],
      ),
    );
  }
}
