
class ProgressAnalyticsStats {
  /// Week / Month / Year toggle at the top.
  String selectedPeriod;

  // Sobriety Streak card
  int sobrietyStreakDays;
  int streakIncreasePercent;

  /// 7 relative bar heights (0.0 - 1.0) for the weekly streak chart.
  List<double> weeklyStreakBars;

  // Health Recovery card
  int vigorPercent;
  String liverStatusLabel; // "Liver Repairing"
  String energyStatusLabel; // "Energy Stable"

  // Mood and Sleep Quality card
  bool isSyncing;
  List<double> moodSleepValues; // 7 points, 0.0 - 1.0
  String avgDeepSleep; // e.g. "7h 42m"
  int productivityScore; // out of 100

  // Craving Frequency & Triggers
  List<String> cravingTriggers;
  String alertText;

  // Coach Insights card
  String coachInsightText;

  // Detailed Metrics
  double moneySaved;
  int timeRegainedHours;

  ProgressAnalyticsStats({
    this.selectedPeriod = 'Week',
    this.sobrietyStreakDays = 42,
    this.streakIncreasePercent = 12,
    List<double>? weeklyStreakBars,
    this.vigorPercent = 75,
    this.liverStatusLabel = 'Liver Repairing',
    this.energyStatusLabel = 'Energy Stable',
    this.isSyncing = true,
    List<double>? moodSleepValues,
    this.avgDeepSleep = '7h 42m',
    this.productivityScore = 88,
    List<String>? cravingTriggers,
    this.alertText =
    'Craving Spike between 6PM-8PM on fridays. Plan an activity for '
        'this window.',
    this.coachInsightText =
    'Your energy level have stabilized by 40% since last week. Your '
        'decision to quit is playing off in physical resilience.',
    this.moneySaved = 1240,
    this.timeRegainedHours = 164,
  })  : weeklyStreakBars = weeklyStreakBars ??
      const [0.25, 0.35, 0.45, 0.55, 0.7, 0.85, 1.0],
        moodSleepValues = moodSleepValues ??
            const [0.45, 0.55, 0.4, 0.6, 0.5, 0.7, 0.62],
        cravingTriggers = cravingTriggers ??
            const [
              'Stress (High)',
              'Socializing',
              'Work Pressure',
              'Boredom',
              'Fatigue',
            ];
}