/// Holds all the dynamic values shown on the dashboard.
///
/// For now these are hardcoded defaults created in HomeScreen's state.
/// Later, replace the constructor call with data fetched from your
/// backend/API (e.g. inside an initState() call to a repository),
/// then call setState() to refresh the UI with real values.
class UserStats {
  /// Current sobriety streak, shown as "X Days Sober" and used to
  /// drive the circular progress ring.
  int daysSober;

  /// The "out of" value for the circular progress ring.
  /// e.g. daysSober / sobrietyGoalDays = ring fill percentage.
  int sobrietyGoalDays;

  /// "Streak" stat card (e.g. 18 -> "18 Days")
  int streakDays;

  /// "Saved" stat card, in whatever currency you use (e.g. 1240 -> "$1,240")
  int savedMoney;

  /// "Calories" stat card, raw value (e.g. 34000 -> displayed as "34K")
  int calories;

  /// "Score" stat card, e.g. 92 out of [maxScore]
  int score;
  int maxScore;

  /// Liver function / sleep quality progress bars, stored as 0.0-1.0
  double liverFunctionProgress;
  double sleepQualityProgress;

  /// Percent-improved labels shown next to each progress bar
  int liverFunctionImprovedPercent;
  int sleepQualityImprovedPercent;

  /// Currently selected mood on the "How are you feeling" card.
  /// One of: 'low', 'steady', 'good', 'great'
  String selectedMood;

  /// Path to the user's profile picture. Null/empty -> fallback icon shown.
  String? profileImagePath;

  UserStats({
    this.daysSober = 124,
    this.sobrietyGoalDays = 500,
    this.streakDays = 18,
    this.savedMoney = 1240,
    this.calories = 34000,
    this.score = 92,
    this.maxScore = 100,
    this.liverFunctionProgress = 0.85,
    this.sleepQualityProgress = 0.70,
    this.liverFunctionImprovedPercent = 85,
    this.sleepQualityImprovedPercent = 70,
    this.selectedMood = 'good',
    this.profileImagePath,
  });
}