import 'package:shared_preferences/shared_preferences.dart';

import 'analytics_service.dart';

class AchievementService {
  AchievementService._();

  static final AchievementService instance = AchievementService._();

  // ============================================================
  // KEYS
  // ============================================================

  static const _journalEntriesKey = 'ach_journal_entries';
  static const _aiCoachConversationsKey = 'ach_ai_coach_conversations';
  static const _checkInsKey = 'ach_checkins_total';
  static const _personalGoalsCompletedKey = 'ach_personal_goals_completed';
  static const _moneySavedKey = 'ach_money_saved';

  // Prefix for the "already fired badgeUnlocked for this badge" flags.
  // Kept separate from the raw counters so resetAll() can wipe both.
  static const _badgeUnlockedPrefix = 'ach_badge_unlocked_';

  // ============================================================
  // BADGE DEFINITIONS (internal, stable ids — NOT localized strings,
  // so Firebase gets consistent values regardless of the user's
  // language. These ids should stay in sync with the tiers/titles
  // shown in BadgesScreen, but are intentionally decoupled from the
  // UI's l10n strings.)
  // ============================================================

  static const Map<String, int> _journalThresholds = {
    'first_reflection': 1,
    'open_book': 10,
    'dedicated_writer': 30,
  };

  static const Map<String, int> _aiCoachThresholds = {
    'first_conversation': 1,
    'keep_talking': 5,
    'coach_companion': 20,
  };

  static const Map<String, int> _checkInThresholds = {
    'checkin_habit': 7,
    'consistency_pro': 30,
    'dedicated_journey': 100,
  };

  static const Map<String, int> _goalThresholds = {
    'goal_getter': 3,
    'goal_achiever': 10,
  };

  static const Map<String, double> _moneySavedThresholds = {
    'first_savings': 500,
    'smart_saver': 1000,
    'big_saver': 5000,
  };

  // ============================================================
  // INT HELPERS
  // ============================================================

  Future<int> _getInt(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(key) ?? 0;
  }

  Future<int> _incrementInt(String key, [int by = 1]) async {
    final prefs = await SharedPreferences.getInstance();
    final current = prefs.getInt(key) ?? 0;
    final updated = current + by;
    await prefs.setInt(key, updated);
    return updated;
  }

  // ============================================================
  // BADGE UNLOCK CHECK (fires at most once per badge, ever — uses a
  // persisted flag rather than "did we just cross the threshold",
  // since money in particular can be recalculated up AND down, which
  // would otherwise cause duplicate/incorrect fires.)
  // ============================================================

  Future<void> _checkThresholds(
      Map<String, num> thresholds,
      num currentValue,
      ) async {
    final prefs = await SharedPreferences.getInstance();

    for (final entry in thresholds.entries) {
      final badgeId = entry.key;
      final threshold = entry.value;

      if (currentValue < threshold) continue;

      final flagKey = '$_badgeUnlockedPrefix$badgeId';

      final alreadyUnlocked =
          prefs.getBool(flagKey) ?? false;

      if (alreadyUnlocked) continue;

      await prefs.setBool(flagKey, true);

      // NEW — badge unlocked (fires exactly once per badge)
      AnalyticsService.instance.badgeUnlocked(badgeId);
    }
  }

  // ============================================================
  // JOURNAL
  // First Reflection (1) · Open Book (10) · Dedicated Writer (30)
  // ============================================================

  Future<int> getJournalEntries() => _getInt(_journalEntriesKey);

  Future<void> incrementJournalEntries() async {
    final updated = await _incrementInt(_journalEntriesKey);
    await _checkThresholds(_journalThresholds, updated);
  }

  // ============================================================
  // AI COACH
  // First Conversation (1) · Keep Talking (5) · Coach Companion (20)
  // ============================================================

  Future<int> getAiCoachConversations() =>
      _getInt(_aiCoachConversationsKey);

  Future<void> incrementAiCoachConversations() async {
    final updated = await _incrementInt(_aiCoachConversationsKey);
    await _checkThresholds(_aiCoachThresholds, updated);
  }

  // ============================================================
  // CHECK-INS
  // Check-In Habit (7) · Consistency Pro (30) · Dedicated Journey (100)
  // ============================================================

  Future<int> getCheckIns() => _getInt(_checkInsKey);

  Future<void> incrementCheckIns() async {
    final updated = await _incrementInt(_checkInsKey);
    await _checkThresholds(_checkInThresholds, updated);
  }

  // ============================================================
  // PERSONAL GOALS
  // Goal Getter (3) · Goal Achiever (10)
  // ============================================================

  Future<int> getPersonalGoalsCompleted() =>
      _getInt(_personalGoalsCompletedKey);

  Future<void> incrementPersonalGoalsCompleted() async {
    final updated = await _incrementInt(_personalGoalsCompletedKey);
    await _checkThresholds(_goalThresholds, updated);
  }

  // ============================================================
  // MONEY SAVED
  // First Savings ($500) · Smart Saver ($1000) · Big Saver ($5000)
  // Stored as a double dollar amount, not a count.
  // ============================================================

  Future<double> getMoneySaved() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getDouble(_moneySavedKey) ?? 0.0;
  }

  /// Overwrites the total (use this if money saved is recalculated from
  /// scratch elsewhere, e.g. daysSober * costPerDay).
  Future<void> setMoneySaved(double amount) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setDouble(_moneySavedKey, amount);
    await _checkThresholds(_moneySavedThresholds, amount);
  }

  /// Adds to the existing total (use this if you only know the delta).
  Future<void> addMoneySaved(double amount) async {
    final prefs = await SharedPreferences.getInstance();
    final current = prefs.getDouble(_moneySavedKey) ?? 0.0;
    final updated = current + amount;
    await prefs.setDouble(_moneySavedKey, updated);
    await _checkThresholds(_moneySavedThresholds, updated);
  }

  // ============================================================
  // RESET (debug / QA use only)
  // ============================================================

  Future<void> resetAll() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_journalEntriesKey);
    await prefs.remove(_aiCoachConversationsKey);
    await prefs.remove(_checkInsKey);
    await prefs.remove(_personalGoalsCompletedKey);
    await prefs.remove(_moneySavedKey);

    // Also clear every "already unlocked" badge flag so QA resets are
    // actually clean.
    for (final badgeId in [
      ..._journalThresholds.keys,
      ..._aiCoachThresholds.keys,
      ..._checkInThresholds.keys,
      ..._goalThresholds.keys,
      ..._moneySavedThresholds.keys,
    ]) {
      await prefs.remove('$_badgeUnlockedPrefix$badgeId');
    }
  }
}