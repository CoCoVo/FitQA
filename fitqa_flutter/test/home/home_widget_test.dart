import 'dart:math';

import 'package:fitqa/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('BottomNavigation', () {
    testWidgets('tab index should start at 0', (WidgetTester tester) async {
      await tester.pumpWidget(MyHomePage(title: 'test'));

      var bottomNavFinder = find.byType(BottomNavigationBar);
      expect(bottomNavFinder, findsOneWidget);

      BottomNavigationBar bottomNav = tester.firstWidget(bottomNavFinder);
      expect(bottomNav.currentIndex, 0);
    });

    testWidgets('tab index should be changed when user taps', (WidgetTester tester) async {
      await tester.pumpWidget(MyHomePage(title: 'test'));

      var bottomNavFinder = find.byType(BottomNavigationBar);
      expect(bottomNavFinder, findsOneWidget);

      BottomNavigationBar bottomNav = tester.firstWidget(bottomNavFinder);
      int tabNum = bottomNav.items.length;

      var navItemText = ['home', 'notification', 'trainer', 'setting'];
      for (String t in navItemText) {
        expect(find.text(t), findsOneWidget);
      }

      var randTabIndex = new Random().nextInt(tabNum);

      await tester.tap(find.text(navItemText.elementAt(randTabIndex)));
      await tester.pumpAndSettle();

      bottomNav = tester.firstWidget(bottomNavFinder);
      expect(bottomNav.currentIndex, randTabIndex);
    });
  });
}
