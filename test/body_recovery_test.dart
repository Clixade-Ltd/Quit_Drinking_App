import 'package:flutter_test/flutter_test.dart';
import 'package:new_quit_drinking_app/models/body_recovery.dart';

void main() {
  group('BodyRecovery', () {
    test('starts at zero progress', () {
      final recovery = BodyRecovery(
        daysSober: 0,
        drinkingLevel: DrinkingLevel.regular,
      );

      expect(recovery.overall, 0);
    });

    test('caps all organ estimates at full recovery', () {
      final recovery = BodyRecovery(
        daysSober: 365,
        drinkingLevel: DrinkingLevel.regular,
      );

      expect(recovery.overall, 100);
    });

    test('adjusts progress using the saved drinking level', () {
      final social = BodyRecovery(
        daysSober: 90,
        drinkingLevel: DrinkingLevel.social,
      );
      final dependent = BodyRecovery(
        daysSober: 90,
        drinkingLevel: DrinkingLevel.dependent,
      );

      expect(social.overall, greaterThan(dependent.overall));
    });
  });
}
