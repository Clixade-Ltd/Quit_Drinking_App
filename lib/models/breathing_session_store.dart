
class BreathingSessionStore {
  BreathingSessionStore._internal();
  static final BreathingSessionStore instance =
  BreathingSessionStore._internal();

  DateTime _trackedDate = _todayDate();
  int _sessionsCompletedToday = 0;

  static DateTime _todayDate() {
    final now = DateTime.now();
    return DateTime(now.year, now.month, now.day);
  }

  void _rolloverIfNewDay() {
    final today = _todayDate();
    if (today != _trackedDate) {
      _trackedDate = today;
      _sessionsCompletedToday = 0;
    }
  }

  int get sessionsCompletedToday {
    _rolloverIfNewDay();
    return _sessionsCompletedToday;
  }

  void recordSessionCompleted() {
    _rolloverIfNewDay();
    _sessionsCompletedToday += 1;
  }
}