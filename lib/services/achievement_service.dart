import 'package:shared_preferences/shared_preferences.dart';

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

  // ============================================================
  // INT HELPERS
  // ============================================================

  Future<int> _getInt(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(key) ?? 0;
  }

  Future<void> _incrementInt(String key, [int by = 1]) async {
    final prefs = await SharedPreferences.getInstance();
    final current = prefs.getInt(key) ?? 0;
    await prefs.setInt(key, current + by);
  }

  // ============================================================
  // JOURNAL
  // First Reflection (1) · Open Book (10) · Dedicated Writer (30)
  // ============================================================

  Future<int> getJournalEntries() => _getInt(_journalEntriesKey);

  Future<void> incrementJournalEntries() =>
      _incrementInt(_journalEntriesKey);

  // ============================================================
  // AI COACH
  // First Conversation (1) · Keep Talking (5) · Coach Companion (20)
  // ============================================================

  Future<int> getAiCoachConversations() =>
      _getInt(_aiCoachConversationsKey);

  Future<void> incrementAiCoachConversations() =>
      _incrementInt(_aiCoachConversationsKey);

  // ============================================================
  // CHECK-INS
  // Check-In Habit (7) · Consistency Pro (30) · Dedicated Journey (100)
  // ============================================================

  Future<int> getCheckIns() => _getInt(_checkInsKey);

  Future<void> incrementCheckIns() => _incrementInt(_checkInsKey);

  // ============================================================
  // PERSONAL GOALS
  // Goal Getter (3) · Goal Achiever (10)
  // ============================================================

  Future<int> getPersonalGoalsCompleted() =>
      _getInt(_personalGoalsCompletedKey);

  Future<void> incrementPersonalGoalsCompleted() =>
      _incrementInt(_personalGoalsCompletedKey);

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
  }

  /// Adds to the existing total (use this if you only know the delta).
  Future<void> addMoneySaved(double amount) async {
    final prefs = await SharedPreferences.getInstance();
    final current = prefs.getDouble(_moneySavedKey) ?? 0.0;
    await prefs.setDouble(_moneySavedKey, current + amount);
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
  }
}