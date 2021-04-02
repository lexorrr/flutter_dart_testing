import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Counter App test', () {
    final counterText = find.byValueKey('counter');
    final incrementButton = find.byValueKey('increment');
    final decrementButton = find.byValueKey('decrement');

    late final FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() {
      driver.close();
    });

    test('Counter increment', () async {
      await driver.tap(incrementButton);

      var readText = await driver.getText(counterText);
      expect(readText, '1');
    });

    test('Counter decrement', () async {
      await driver.tap(decrementButton);

      var readText = await driver.getText(counterText);
      expect(readText, '0');
    });

  });
}