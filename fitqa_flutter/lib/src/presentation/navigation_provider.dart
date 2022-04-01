import 'package:flutter_riverpod/flutter_riverpod.dart';

final navigationProvider = StateNotifierProvider<NavigationNotifier, PageModel>(
    (ref) => NavigationNotifier());

enum NavigationBarEvent { HOME, TRAINER, NOTIFICATION, MYPAGE }

class PageModel {
  const PageModel(this.page, this.index);
  final NavigationBarEvent page;
  final index;
}

class NavigationNotifier extends StateNotifier<PageModel> {
  NavigationNotifier() : super(defaultPage);

  static const defaultPage = PageModel(NavigationBarEvent.HOME, 0);

  void movePage(int index) {
    switch (index) {
      case 0:
        state = PageModel(NavigationBarEvent.HOME, 0);
        break;
      case 1:
        state = PageModel(NavigationBarEvent.TRAINER, 1);
        break;
      case 2:
        state = PageModel(NavigationBarEvent.NOTIFICATION, 2);
        break;
      case 3:
        state = PageModel(NavigationBarEvent.MYPAGE, 3);
        break;
    }
  }
}