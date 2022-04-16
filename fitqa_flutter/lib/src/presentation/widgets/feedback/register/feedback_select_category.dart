import 'package:fitqa/src/domain/entities/common/enum/common_eunm.dart';
import 'package:fitqa/src/domain/entities/trainer/trainer/trainer.dart';
import 'package:fitqa/src/domain/entities/trainer/trainer_feedback_price/trainer_feedback_price.dart';
import 'package:fitqa/src/domain/entities/trainer/trainer_image/trainer_image.dart';
import 'package:fitqa/src/presentation/widgets/common/fitqa_dropdown.dart';
import 'package:fitqa/src/presentation/widgets/feedback/register/feedback_category_item.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:fitqa/src/theme/dimen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final selectedFeedbackCategory = StateProvider<TrainerFeedbackPrice>(
    (ref) => const TrainerFeedbackPrice(area: WorkOutArea.none, price: 0));

class FeedbackSelectCategory extends ConsumerWidget {
  FeedbackSelectCategory({Key? key, required this.trainer}) : super(key: key);

  final Trainer trainer;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final trainerImageUrl = trainer.images
        .firstWhere((element) => element.imageType == ImageType.profile)
        .imageUrl;
    final selectedFeedbackName =
        ref.watch(selectedFeedbackCategory).area.toStringType();
    final selectedFeedbackPrice = ref.watch(selectedFeedbackCategory).price;

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
              _buildTrainerCategoryBox(context, ref, selectedFeedbackName),
            ],
          ),
          const Divider(height: 1, color: FColors.line),
          _buildPriceBox(selectedFeedbackPrice),
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
      ),
    );
  }

  Widget _buildTrainerCategoryBox(
      BuildContext context, WidgetRef ref, String selectedFeedbackName) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTrainerNameBox(),
          const SizedBox(
            height: 8,
          ),
          _buildFeedbackCategoryDropBox(context, ref, selectedFeedbackName)
        ],
      ),
    );
  }

  Widget _buildTrainerNameBox() {
    return RichText(
      text: TextSpan(
          text: trainer.name,
          style: const TextStyle(
              fontSize: 18, color: FColors.black, fontWeight: FontWeight.bold),
          children: const [
            TextSpan(
                text: " 트레이너", style: TextStyle(fontWeight: FontWeight.normal)),
          ]),
    );
  }

  Widget _buildFeedbackCategoryDropBox(
      BuildContext context, WidgetRef ref, String selectedFeedbackName) {
    return FDropDown(
        height: 56,
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        title: selectedFeedbackName.isEmpty ? "선택" : selectedFeedbackName,
        subTitle: "카테고리 선택",
        itemList: trainer.feedbackPrices
            .map((e) => FeedbackCategoryItem(
                title: e.area.toStringType(),
                subtitle: "${e.price}",
                onTap: () {
                  ref.read(selectedFeedbackCategory.notifier).state = e;
                  Navigator.pop(context);
                }))
            .toList());
  }

  Widget _buildPriceBox(int selectedFeedbackPrice) {
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
                  text: "$selectedFeedbackPrice",
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
