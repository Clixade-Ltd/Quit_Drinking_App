class ProgressStats {
  /// "124 Days" current streak + ring fill (124/yearGoalDays)
  int currentStreakDays;
  int yearGoalDays;

  /// "You are in the top X% of the Community"
  int communityTopPercent;

  // Money Saved card
  double moneySaved;
  int moneySavedChangePercent; // shown as "+12%"

  // Sleep Gained card
  int sleepGainedHours;
  int sleepGainedChangePercent; // shown as "+48%"

  // Heart Rate card
  int heartRateBpm;
  String heartRateStatus; // e.g. "Healthy"

  /// Weekly/Monthly toggle on the "Soberity Clarity" graph.
  /// true = Weekly selected, false = Monthly selected.
  bool isWeeklySelected;

  /// Sample sobriety-clarity graph values (one point per day/week,
  /// 0.0-1.0). Replace with real data later.
  List<double> clarityGraphValues;

  /// Daily Consistency heatmap: one entry per day, intensity 0-4
  /// (0 = no activity/"Less", 4 = "More"). Outer list = months,
  /// inner list = days in that month's grid column.
  List<List<int>> dailyConsistencyGrid;

  ProgressStats({
    this.currentStreakDays = 124,
    this.yearGoalDays = 165, // 124 / 165 ≈ 75% of year
    this.communityTopPercent = 5,
    this.moneySaved = 2480.00,
    this.moneySavedChangePercent = 12,
    this.sleepGainedHours = 312,
    this.sleepGainedChangePercent = 48,
    this.heartRateBpm = 62,
    this.heartRateStatus = 'Healthy',
    this.isWeeklySelected = true,
    List<double>? clarityGraphValues,
    List<List<int>>? dailyConsistencyGrid,
  })  : clarityGraphValues = clarityGraphValues ??
      const [0.3, 0.32, 0.28, 0.4, 0.55, 0.5, 0.7],
        dailyConsistencyGrid = dailyConsistencyGrid ?? _defaultGrid();

  static List<List<int>> _defaultGrid() {
    // 7 sample months x 7 days, randomized-looking but fixed for now.
    return List.generate(
      7,
          (col) => List.generate(7, (row) => (row + col * 2) % 5),
    );
  }
}