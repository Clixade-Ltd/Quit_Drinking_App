/// A single week of the 4-week recovery plan.
class PlanWeek {
  final int number;
  final String title;
  final String description;

  const PlanWeek({
    required this.number,
    required this.title,
    required this.description,
  });
}

/// A single "daily fundamental" habit shown at the bottom of the plan.
class PlanFundamental {
  final String label;
  const PlanFundamental(this.label);
}

/// The full computed plan for a user at a point in time.
///
/// This is intentionally NOT persisted anywhere — it's derived fresh
/// every time from data already saved on the user's profile
/// (drinksPerWeek, averageWeeklySpending) plus how many days they've
/// been sober. That means the "current week" advances automatically
/// as time passes, with nothing to keep in sync and nothing that can
/// go stale.
class PersonalizedPlan {
  final int drinksPerWeek;
  final int estMonthlySpending;
  final int estWeeklyCalories;
  final List<PlanWeek> weeks;

  /// Index into [weeks] (0-3) of the week that is currently active.
  final int currentWeekIndex;

  const PersonalizedPlan({
    required this.drinksPerWeek,
    required this.estMonthlySpending,
    required this.estWeeklyCalories,
    required this.weeks,
    required this.currentWeekIndex,
  });

  PlanWeek get currentWeek => weeks[currentWeekIndex];
}

class PlanGenerator {
  PlanGenerator._();

  static const List<PlanWeek> _weeks = [
    PlanWeek(
      number: 1,
      title: 'Awareness & Tracking',
      description:
      'Focus on logging your cravings and understanding your '
          'triggers without judgment.',
    ),
    PlanWeek(
      number: 2,
      title: 'Gradual Reduction',
      description:
      'Start cutting back gradually while building healthier ways '
          'to cope with cravings.',
    ),
    PlanWeek(
      number: 3,
      title: 'Building Alternatives',
      description:
      'Replace old habits with new routines that support your '
          'goal, one day at a time.',
    ),
    PlanWeek(
      number: 4,
      title: 'Sustaining Habits',
      description:
      'Lock in what\'s working and prepare yourself for lasting, '
          'long-term change.',
    ),
  ];

  static const List<PlanFundamental> dailyFundamentals = [
    PlanFundamental('Drink 8 glasses of water'),
    PlanFundamental('Walk 5,000 steps'),
    PlanFundamental('5 min morning meditation'),
  ];

  /// Builds a plan from the user's saved onboarding numbers and how
  /// many days sober they currently are. [daysSober] of 1-7 → Week 1,
  /// 8-14 → Week 2, and so on, capped at Week 4.
  static PersonalizedPlan generate({
    required int drinksPerWeek,
    required int weeklySpending,
    required int daysSober,
  }) {
    final estMonthlySpending = (weeklySpending * 4.33).round();
    final estWeeklyCalories = drinksPerWeek * 150;

    final weekIndex = daysSober <= 0
        ? 0
        : ((daysSober - 1) ~/ 7).clamp(0, _weeks.length - 1);

    return PersonalizedPlan(
      drinksPerWeek: drinksPerWeek,
      estMonthlySpending: estMonthlySpending,
      estWeeklyCalories: estWeeklyCalories,
      weeks: _weeks,
      currentWeekIndex: weekIndex,
    );
  }
}