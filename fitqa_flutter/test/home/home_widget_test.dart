import 'dart:math';

import 'package:fitqa/src/presentation/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('BottomNavigation', () {
    testWidgets('tab index should start at 0', (WidgetTester tester) async {
      await tester.pumpWidget(Home());

      var bottomNavFinder = find.byType(BottomNavigationBar);
      expect(bottomNavFinder, findsOneWidget);

      BottomNavigationBar bottomNav = tester.firstWidget(bottomNavFinder);
      expect(bottomNav.currentIndex, 0);
    });

    testWidgets('tab index should be changed when user taps',
        (WidgetTester tester) async {
      await tester.pumpWidget(Home());

      var bottomNavFinder = find.byType(BottomNavigationBar);
      expect(bottomNavFinder, findsOneWidget);

      BottomNavigationBar bottomNav = tester.firstWidget(bottomNavFinder);
      int tabNum = bottomNav.items.length;

      var bottomNavItemFinder = find.byType(Icon);
      expect(bottomNavItemFinder, findsNWidgets(tabNum));

      var randTabIndex = new Random().nextInt(tabNum);

      await tester.tap(bottomNavItemFinder.at(randTabIndex));
      await tester.pumpAndSettle();

      bottomNav = tester.firstWidget(bottomNavFinder);
      expect(bottomNav.currentIndex, randTabIndex);
    });
  });
}
