import 'package:fitqa/src/application/user/user_info.dart';
import 'package:fitqa/src/application/user/user_profile.dart';
import 'package:fitqa/src/domain/entities/common/enum/workout_style.dart';
import 'package:fitqa/src/presentation/home.dart';
import 'package:fitqa/src/presentation/widgets/common/fitqa_appbar_sub.dart';
import 'package:fitqa/src/presentation/widgets/common/form/fitqa_big_button.dart';
import 'package:fitqa/src/presentation/widgets/user_info/section_user_info_birth.dart';
import 'package:fitqa/src/presentation/widgets/user_info/section_user_info_name.dart';
import 'package:fitqa/src/presentation/widgets/user_info/section_user_info_optional.dart';
import 'package:fitqa/src/presentation/widgets/user_info/section_user_info_physical.dart';
import 'package:fitqa/src/presentation/widgets/user_info/section_user_info_title.dart';
import 'package:fitqa/src/presentation/widgets/user_info/section_user_info_workout_level.dart';
import 'package:fitqa/src/presentation/widgets/user_info/section_user_info_workout_style.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class ScreenUserInfo extends ConsumerWidget {
  const ScreenUserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        backgroundColor: FColors.white,
        appBar: FitqaAppbarSub(
          title: '운동정보 입력',
          centerTitle: true,
          onPressed: () {
            _close(context);
          },
          foregroundColor: FColors.black,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: ListView(
            children: [
              const SizedBox(
                height: 32,
              ),
              SectionUserInfoTitle(),
              const SizedBox(
                height: 26,
              ),
              SectionUserName(),
              const SizedBox(
                height: 26,
              ),
              SectionUserInfoBirth(),
              const SizedBox(height: 38),
              SectionUserInfoWorkoutLevel(),
              const SizedBox(
                height: 38,
              ),
              SectionUserInfoWorkoutStyle(),
              const SizedBox(
                height: 38,
              ),
              SectionUserInfoPhysical(),
              const SizedBox(
                height: 60,
              ),
              SectionUserInfoOptional(),
              const SizedBox(
                height: 60,
              ),
              FitqaBigButton(
                text: "완료",
                filled: true,
                onPressed: () {
                  _sendUserInfo(ref);
                  _close(context);
                },
              ),
              const SizedBox(
                height: 33,
              ),
            ],
          ),
        ));
  }

  void _sendUserInfo(WidgetRef ref) {
    final userName = ref.read(userInfoNameProvider);
    final userBirth = ref.read(userInfoBirthProvider);
    final workoutLevel = ref.read(userInfoWorkoutLevelProvider);
    final workoutStyle = ref.read(userInfoWorkoutStyleProvider);
    final height = ref.read(userInfoHeightProvider);
    final weight = ref.read(userInfoWeightProvider);
    final fat = ref.read(userInfoFatProvider);
    final muscle = ref.read(userInfoMuscleMassProvider);

    if (workoutStyle != null) {
      final userProfileController = ref.watch(userProfileProvider.notifier);
      userProfileController.updateUserInfo(
        userName,
        DateFormat('yyyy-MM-dd').format(userBirth),
        workoutLevel,
        WorkOutStyleConverter.fromString(workoutStyle),
        height,
        weight,
        fat,
        muscle,
      );
    }
  }

  void _close(BuildContext context) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const Home()));
  }
}
