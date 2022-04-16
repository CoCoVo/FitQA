import 'package:fitqa/src/presentation/widgets/common/fitqa_textfield.dart';
import 'package:fitqa/src/presentation/widgets/trainer/edit/edit_layout.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EditCareer extends ConsumerWidget {
  EditCareer({Key? key}) : super(key: key);

  final _careerProvider = StateProvider<String>((ref) => "");
  final _licenseProvider = StateProvider<String>((ref) => "");

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final careerController = ref.watch(_careerProvider);
    final licenseController = ref.watch(_licenseProvider);

    return EditLayout(children: [
      _buildCareerBox(careerController),
      const SizedBox(height: 45),
      _buildLicenseBox(licenseController)
    ]);
  }

  Widget _buildCareerBox(careerController) {
    return FTextField(
      labelText: "경력",
      hintText: "엔터로 구분됩니다",
      style: const TextStyle(fontSize: 14, height: 2, color: FColors.black),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
      onChanged: (val) => careerController.state = val,
    );
  }

  Widget _buildLicenseBox(licenseController) {
    return FTextField(
      labelText: "학력 및 자격 면허",
      hintText: "엔터로 구분됩니다",
      style: const TextStyle(fontSize: 14, height: 2, color: FColors.black),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
      onChanged: (val) => licenseController.state = val,
    );
  }
}
