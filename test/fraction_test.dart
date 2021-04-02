import 'package:flutter_dart_testing/fraction.dart';
import 'package:test/test.dart';

void main() {
  group('Fraction class testing', () {
    test('10 divided by 2 should be 5', () {
      final fraction = Fraction(
          numerator: 10,
          denominator: 2
      );

      expect(fraction.toDouble, 5.0);
    });

    test('"negate" should produce opposed signs', () {
      final fraction = Fraction(
        numerator: 10,
        denominator: 2
      );
      fraction.negate();
      expect(fraction.toDouble, -5.0);
    });

  });
}