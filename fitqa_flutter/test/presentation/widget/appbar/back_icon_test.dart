import 'package:fitqa/src/presentation/widgets/common/appbar/back_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Widget buildApp({Color? color, Function()? onPressed}) {
    return MaterialApp(
        home: Scaffold(
      body: BackIcon(
        color: color,
        onPressed: onPressed,
      ),
    ));
  }

  group('BackIcon > ', () {
    group('Behavior > ', () {
      testWidgets('onPressed can be null', (WidgetTester tester) async {
        await tester.pumpWidget(buildApp());

        final iconFinder = find.byType(BackIcon);
        expect(iconFinder, findsOneWidget);
      });

      testWidgets('onPressed works on tap', (WidgetTester tester) async {
        final log = <int>[];
        final onPressed = () => log.add(1);
        await tester.pumpWidget(buildApp(onPressed: onPressed));

        final iconFinder = find.byType(BackIcon);
        await tester.tap(iconFinder);
        expect(log.length, 1);
        await tester.tap(iconFinder);
        await tester.tap(iconFinder);
        expect(log.length, 3);
      });
    });

    group('Appearance > ', () {
      testWidgets('color can be applied', (WidgetTester tester) async {
        await tester.pumpWidget(buildApp(color: Colors.red));

        final iconFinder = find.byType(BackIcon);
        final iconWidget = tester.firstWidget(iconFinder) as BackIcon;
        expect(iconWidget.color, Colors.red);
      });
    });
  });
}
