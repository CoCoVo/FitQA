import 'package:fitqa/src/application/feedback/feedback_selected_trainer.dart';
import 'package:fitqa/src/common/number_utils.dart';
import 'package:fitqa/src/domain/entities/common/enum/workout_area.dart';
import 'package:fitqa/src/domain/entities/trainer/trainer_image/trainer_image.dart';
import 'package:fitqa/src/presentation/widgets/common/form/fitqa_dropdown.dart';
import 'package:fitqa/src/presentation/widgets/feedback/register/feedback_category_item.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:fitqa/src/theme/dimen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FeedbackSelectCategory extends ConsumerWidget {
  FeedbackSelectCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedTrainer = ref.watch(selectedTrainerProvider)!;
    final selectedFeedbackPrice =
        ref.watch(selectedTrainerFeedbackPriceProvider);
    final trainerImageUrl = selectedTrainer.images
        .firstWhere((element) => element.imageType == ImageType.profile)
        .imageUrl;

    return Container(
      height: FDimen.feedbackSelectCategoryCardHeight,
      padding: const EdgeInsets.only(left: 16, right: 16, top: 24, bottom: 14),
      child: Column(
        children: [
          Row(
            children: [
              _buildProfileImage(trainerImageUrl),
              const SizedBox(
                width: 16,
              ),
              _buildTrainerCategoryBox(context, ref),
            ],
          ),
          const SizedBox(
            height: 14,
          ),
          const Divider(height: 1, color: FColors.line),
          _buildPriceBox(selectedFeedbackPrice?.price),
        ],
      ),
    );
  }

  Widget _buildProfileImage(String trainerImageUrl) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.network(
        trainerImageUrl,
        width: 85,
        height: 85,
        fit: BoxFit.cover,
        errorBuilder: (_, __, ___) {
          return Container(
            color: FColors.black,
            width: 85,
            height: 85,
          );
        },
      ),
    );
  }

  Widget _buildTrainerCategoryBox(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTrainerNameBox(ref),
          const SizedBox(
            height: 8,
          ),
          _buildFeedbackCategoryDropBox(context, ref)
        ],
      ),
    );
  }

  Widget _buildTrainerNameBox(WidgetRef ref) {
    final selectedTrainer = ref.watch(selectedTrainerProvider)!;

    return RichText(
      text: TextSpan(
          text: selectedTrainer.name,
          style: const TextStyle(
              fontSize: 18, color: FColors.black, fontWeight: FontWeight.bold),
          children: const [
            TextSpan(
                text: " 트레이너", style: TextStyle(fontWeight: FontWeight.normal)),
          ]),
    );
  }

  Widget _buildFeedbackCategoryDropBox(BuildContext context, WidgetRef ref) {
    final selectedTrainer = ref.watch(selectedTrainerProvider)!;
    final selectedFeedbackPrice =
        ref.watch(selectedTrainerFeedbackPriceProvider);
    final selectedFeedbackPriceController =
        ref.watch(selectedTrainerFeedbackPriceProvider.notifier);

    return FitqaDropdown(
        height: 56,
        label: "카테고리 선택",
        hint: "선택",
        text: selectedFeedbackPrice?.area.toStringType(),
        child: ListView(
          children: selectedTrainer.feedbackPrices
              .map((e) => FeedbackCategoryItem(
                  title: e.area.toStringType(),
                  subtitle: NumberUtils.thousandSeparate(e.price),
                  onTap: () {
                    selectedFeedbackPriceController.state = e;
                    Navigator.pop(context);
                  }))
              .toList(),
        ));
  }

  Widget _buildPriceBox(int? price) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "결제금액",
            style: TextStyle(fontSize: 14, color: FColors.black),
          ),
          RichText(
              text: TextSpan(
                  text: (price == null)
                      ? ""
                      : NumberUtils.thousandSeparate(price),
                  style: const TextStyle(
                      fontSize: 24,
                      color: FColors.black,
                      fontWeight: FontWeight.bold),
                  children: const [
                TextSpan(
                    text: " 원", style: TextStyle(fontWeight: FontWeight.normal))
              ])),
        ],
      ),
    );
  }
}
