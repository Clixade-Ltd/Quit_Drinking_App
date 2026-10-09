import 'dart:math' as math;

import 'package:flutter/material.dart';

enum DrinkingLevel {
  social(0.75),
  regular(1.0),
  heavy(1.35),
  dependent(1.75);

  const DrinkingLevel(this.multiplier);

  final double multiplier;

  static DrinkingLevel fromValue(String? value) {
    switch (value?.toLowerCase()) {
      case 'social':
        return DrinkingLevel.social;
      case 'heavy':
        return DrinkingLevel.heavy;
      case 'dependent':
        return DrinkingLevel.dependent;
      case 'regular':
      default:
        return DrinkingLevel.regular;
    }
  }
}

enum Organ { brain, heart, liver, gut, kidneys, skin }

class BodyRecovery {
  BodyRecovery({required this.daysSober, required this.drinkingLevel});

  final int daysSober;
  final DrinkingLevel drinkingLevel;

  static const Map<Organ, double> _fullRecoveryDays = {
    Organ.kidneys: 45,
    Organ.skin: 60,
    Organ.gut: 90,
    Organ.brain: 180,
    Organ.liver: 240,
    Organ.heart: 365,
  };

  double percent(Organ organ) {
    final fullDays = _fullRecoveryDays[organ] ?? 90;
    final adjustedDays = daysSober / drinkingLevel.multiplier;
    final progress = (adjustedDays / fullDays).clamp(0.0, 1.0);
    final eased = 1 - math.pow(1 - progress, 1.8).toDouble();

    return (eased * 100).clamp(0.0, 100.0);
  }

  double get overall {
    final values = Organ.values.map(percent).toList(growable: false);
    if (values.isEmpty) return 0;
    return values.reduce((a, b) => a + b) / values.length;
  }

  Color colorFor(double percentage) {
    final value = (percentage / 100).clamp(0.0, 1.0);

    if (value <= 0.35) {
      return Color.lerp(
        const Color(0xFFE5484D),
        const Color(0xFFF08A4B),
        value / 0.35,
      )!;
    }

    if (value <= 0.65) {
      return Color.lerp(
        const Color(0xFFF08A4B),
        const Color(0xFFE3B84D),
        (value - 0.35) / 0.30,
      )!;
    }

    return Color.lerp(
      const Color(0xFFE3B84D),
      const Color(0xFF36B982),
      (value - 0.65) / 0.35,
    )!;
  }

  String label(Organ organ) {
    switch (organ) {
      case Organ.brain:
        return 'Brain';
      case Organ.heart:
        return 'Heart';
      case Organ.liver:
        return 'Liver';
      case Organ.gut:
        return 'Gut';
      case Organ.kidneys:
        return 'Kidneys';
      case Organ.skin:
        return 'Skin';
    }
  }
}
