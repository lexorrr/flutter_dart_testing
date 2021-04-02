import 'package:flutter/material.dart';
import 'package:flutter_dart_testing/myself.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MySelf Widget test', () {
    testWidgets('Testing if "Myself" has name and age',
        (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: const MySelf('RR', 27),
        ),
      ));

      final Finder name = find.text('RR');
      final Finder age = find.text('27');

      expect(name, findsWidgets);
      expect(age, findsOneWidget);
    });

    testWidgets('Testing Widget contains one error Icon',
        (WidgetTester tester) async {

      final target = Icon(Icons.error);

      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: target,
            ),
          ),
        ),
      ));

      final finder = find.byWidget(target);

      expect(finder, findsOneWidget);

    });
  });
}
