import 'package:shared_preferences/shared_preferences.dart';

import '../models/milestone_definition.dart';

/// Detects when the user has just crossed a new sobriety milestone so the
/// app can show a one-time celebration screen for it.
///
/// Uses `shared_preferences` to persist the highest milestone already
/// celebrated, so each milestone is only shown once. If your project
/// doesn't already depend on shared_preferences, add it to pubspec.yaml:
///   shared_preferences: ^2.2.2
class MilestoneService {
  MilestoneService._();
  static final MilestoneService instance = MilestoneService._();

  static const _lastCelebratedDaysKey = 'milestone_last_celebrated_days';

  Future<int> _getLastCelebratedDays() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(_lastCelebratedDaysKey) ?? 0;
  }

  Future<void> _setLastCelebratedDays(int days) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_lastCelebratedDaysKey, days);
  }

  /// Returns the highest milestone the user has newly crossed since the
  /// last celebration, or null if there is nothing new.
  ///
  /// Marks the milestone as "shown" immediately (before the screen is even
  /// built), so it is only ever surfaced once per milestone.
  Future<MilestoneDefinition?> checkForNewMilestone(int daysSober) async {
    final lastCelebrated = await _getLastCelebratedDays();
    final unlocked = MilestoneDefinitions.highestUnlocked(daysSober);

    if (unlocked != null && unlocked.days > lastCelebrated) {
      await _setLastCelebratedDays(unlocked.days);
      return unlocked;
    }
    return null;
  }

  /// Call this if the user's sobriety streak is ever reset, so milestones
  /// can be celebrated again from scratch on the next streak.
  Future<void> resetProgress() async {
    await _setLastCelebratedDays(0);
  }
}