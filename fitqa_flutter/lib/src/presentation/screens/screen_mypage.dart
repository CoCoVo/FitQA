import 'package:fitqa/src/application/storage/trainer_token_facade.dart';
import 'package:fitqa/src/application/storage/user_token_facade.dart';
import 'package:fitqa/src/application/trainer/trainer_detail.dart';
import 'package:fitqa/src/presentation/screens/screen_login.dart';
import 'package:fitqa/src/presentation/screens/screen_mypage_detail.dart';
import 'package:fitqa/src/presentation/screens/screen_trainer_detail.dart';
import 'package:fitqa/src/presentation/widgets/common/fitqa_appbar_mypage.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ScreenMyPage extends ConsumerWidget {
  const ScreenMyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ownerTrainerToken = ref.watch(trainerTokenProvider);
    final ownerUserToken = ref.watch(userTokenProvider);
    final trainerDetailTokenController =
        ref.watch(selectedTrainerTokenProvider.notifier);
    int currentPageIndex = 0;
    Widget _navigation() {
      return _buildUserMyPage();
      if (ownerUserToken.isEmpty && ownerTrainerToken.isEmpty) {
        return _buildLoginPage();
      } else if (ownerTrainerToken.isEmpty) {
        return _buildUserMyPage();
      } else {
        trainerDetailTokenController.state = ownerTrainerToken;
        return _buildTrainerMyPage();
      }
    }

    return Column(mainAxisSize: MainAxisSize.min, children: [
      const FitqaAppbarMyPage(),
      _imageProfile(),

      /// profile picture
      _navigation(),

      /// Contents
    ]);
  }

  Widget _buildUserMyPage() => const ScreenMyPageDetail();
  Widget _buildTrainerMyPage() => const ScreenTrainerDetail();
  Widget _buildLoginPage() => ScreenLogin().loginList();
}

Widget _imageProfile() {
  const String _profileName = "로그인하세요";
  return Center(
    child: Column(
      children: [
        Stack(
          children: [
            Container(
              color: FColors.blue,
              width: double.infinity,
              height: 75.0,
            ),
            const Center(
              child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/default_profile.jpg')),
            ),
          ],
        ),
        Container(
          child: const Text(
            _profileName,
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
          ),
          margin: const EdgeInsets.all(10.0),
        ),
      ],
    ),
  );
}
