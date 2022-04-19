import 'package:fitqa/src/application/storage/trainer_token_facade.dart';
import 'package:fitqa/src/application/storage/user_token_facade.dart';
import 'package:fitqa/src/application/trainer/trainer_detail.dart';
import 'package:fitqa/src/presentation/screens/screen_trainer_detail.dart';
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

    if (ownerUserToken.isEmpty && ownerTrainerToken.isEmpty) {
      return _buildLoginPage();
    } else if (ownerUserToken.isNotEmpty) {
      return _buildUserMyPage();
    } else {
      return _buildTrainerMyPage(
          trainerDetailTokenController, ownerTrainerToken);
    }
  }

  Widget _buildUserMyPage() => const Center(
        child: Text('User MyPage Screen'),
      );

  Widget _buildTrainerMyPage(
      selectedTrainerTokenController, String trainerToken) {
    selectedTrainerTokenController.state = trainerToken;

    return const ScreenTrainerDetail();
  }

  Widget _buildLoginPage() => const Center(child: Text('Login Screen'));
}
