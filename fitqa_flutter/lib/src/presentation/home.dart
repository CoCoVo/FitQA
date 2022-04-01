import 'package:fitqa/src/presentation/screens/screen_home.dart';
import 'package:fitqa/src/presentation/screens/screen_mypage.dart';
import 'package:fitqa/src/presentation/screens/screen_notification.dart';
import 'package:fitqa/src/presentation/screens/screen_trainer.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:fitqa/src/common/fitqa_icon.dart';

import 'navigation_provider.dart';

class Home extends ConsumerWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final PageModel navigation = ref.watch(navigationProvider);

    return Scaffold(
      body: currentScreen(navigation.index),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(label: '홈', icon: Icon(FitQaIcon.home)),
          BottomNavigationBarItem(label: '트레이너', icon: Icon(FitQaIcon.trainer)),
          BottomNavigationBarItem(
              label: '알림', icon: Icon(FitQaIcon.notification)),
          BottomNavigationBarItem(label: '마이페이지', icon: Icon(FitQaIcon.myPage))
        ],
        currentIndex: navigation.index,
        onTap: (index) {
          ref.read(navigationProvider.notifier).movePage(index);
        },
      ),
    );
  }

  Widget currentScreen(int index) {
    switch (index) {
      case 0:
        return ScreenHome();
      case 1:
        return ScreenTrainer();
      case 2:
        return ScreenNotification();
      default:
        return ScreenMyPage();
    }
  }
}
