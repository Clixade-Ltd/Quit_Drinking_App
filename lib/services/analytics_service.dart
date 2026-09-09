import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';

/// Central place for all Firebase Analytics event logging.
/// Keeps event names/params consistent across the app.
class AnalyticsService {
  AnalyticsService._();

  static final AnalyticsService instance = AnalyticsService._();

  final FirebaseAnalytics _analytics = FirebaseAnalytics.instance;

  /// Use this in MaterialApp's navigatorObservers to auto-log screen views.
  FirebaseAnalyticsObserver get observer =>
      FirebaseAnalyticsObserver(analytics: _analytics);

  // ============================================================
  // INTERNAL LOG HELPER
  // ============================================================

  Future<void> _log(String name, [Map<String, Object>? params]) async {
    try {
      await _analytics.logEvent(name: name, parameters: params);
    } catch (e) {
      debugPrint('Analytics error [$name]: $e');
    }
  }

  // ============================================================
  // USER PROPERTIES
  // ============================================================

  Future<void> setUserId(String uid) => _analytics.setUserId(id: uid);

  Future<void> setDaysSober(int days) =>
      _analytics.setUserProperty(name: 'days_sober_bucket', value: _bucket(days));

  Future<void> setPremiumStatus(bool isPremium) => _analytics.setUserProperty(
    name: 'is_premium',
    value: isPremium.toString(),
  );

  String _bucket(int days) {
    if (days < 1) return '0';
    if (days < 7) return '1-6';
    if (days < 30) return '7-29';
    if (days < 90) return '30-89';
    if (days < 365) return '90-364';
    return '365+';
  }

  // ============================================================
  // ONBOARDING
  // ============================================================

  Future<void> onboardingStart() => _log('onboarding_start');

  Future<void> onboardingStepComplete(int step) =>
      _log('onboarding_step_complete', {'step': step});

  Future<void> onboardingGoalSelected(String goal) =>
      _log('onboarding_goal_selected', {'goal': goal});

  Future<void> onboardingComplete() => _log('onboarding_complete');

  Future<void> personalizedPlanGenerated() => _log('personalized_plan_generated');

  Future<void> personalizedPlanFailed() => _log('personalized_plan_failed');

  // ============================================================
  // AUTH / ACCOUNT
  // ============================================================

  Future<void> signUp(String method) => _analytics.logSignUp(signUpMethod: method);

  Future<void> login(String method) => _analytics.logLogin(loginMethod: method);

  Future<void> logout() => _log('logout');

  Future<void> profileUpdated() => _log('profile_updated');

  Future<void> profilePhotoChanged(String action) =>
      _log('profile_photo_changed', {'action': action}); // gallery | camera | removed

  Future<void> dataResetConfirmed() => _log('data_reset_confirmed');

  // ============================================================
  // DAILY CHECK-IN
  // ============================================================

  Future<void> checkInStarted() => _log('check_in_started');

  Future<void> checkInSaved({
    required bool drankToday,
    required String craving,
    required String mood,
  }) => _log('check_in_saved', {
    'drank_today': drankToday.toString(),
    'craving_level': craving,
    'mood': mood,
  });

  // ============================================================
  // JOURNAL
  // ============================================================

  Future<void> journalEntryStarted() => _log('journal_entry_started');

  Future<void> journalEntrySaved({int? wordCount}) =>
      _log('journal_entry_saved', {'word_count': wordCount ?? 0});

  Future<void> journalEntryEdited() => _log('journal_entry_edited');

  Future<void> journalEntryDeleted() => _log('journal_entry_deleted');

  Future<void> journalLimitReached() => _log('journal_limit_reached');

  Future<void> journalInsightsViewed() => _log('journal_insights_viewed');

  // ============================================================
  // RECOVERY COACH CHAT
  // ============================================================

  Future<void> chatOpened() => _log('chat_opened');

  Future<void> chatMessageSent({required bool isQuickPrompt, String? promptLabel}) =>
      _log('chat_message_sent', {
        'is_quick_prompt': isQuickPrompt.toString(),
        if (promptLabel != null) 'prompt_label': promptLabel,
      });

  Future<void> chatDailyLimitReached() => _log('chat_daily_limit_reached');

  Future<void> chatCleared() => _log('chat_cleared');

  Future<void> chatError(String reason) => _log('chat_error', {'reason': reason});

  // ============================================================
  // SOS / CRAVINGS SUPPORT
  // ============================================================

  Future<void> sosOpened() => _log('sos_opened');

  Future<void> breathingExerciseStarted() => _log('breathing_exercise_started');

  Future<void> breathingExerciseCompleted() => _log('breathing_exercise_completed');

  Future<void> rideTheWaveStarted() => _log('ride_the_wave_started');

  Future<void> rideTheWaveCompleted() => _log('ride_the_wave_completed');

  Future<void> copingTipsViewed() => _log('coping_tips_viewed');

  Future<void> callSomeoneTapped() => _log('call_someone_tapped');

  // ============================================================
  // MILESTONES / BADGES
  // ============================================================

  Future<void> milestoneUnlocked(String milestoneName, int days) =>
      _log('milestone_unlocked', {'milestone': milestoneName, 'day': days});

  Future<void> milestoneShared(String milestoneName) =>
      _log('milestone_shared', {'milestone': milestoneName});

  Future<void> badgeUnlocked(String badgeName) =>
      _log('badge_unlocked', {'badge': badgeName});

  Future<void> badgesScreenViewed() => _log('badges_screen_viewed');

  // ============================================================
  // STATS / REPORTS
  // ============================================================

  Future<void> statsPeriodChanged(String period) =>
      _log('stats_period_changed', {'period': period}); // week | month | all

  Future<void> weeklyReportViewed() => _log('weekly_report_viewed');

  Future<void> weeklyReportGenerationFailed() =>
      _log('weekly_report_generation_failed');

  // ============================================================
  // PREMIUM / MONETIZATION
  // ============================================================

  Future<void> paywallViewed(String source) =>
      _log('paywall_viewed', {'source': source});

  Future<void> paywallDismissed(String source) =>
      _log('paywall_dismissed', {'source': source});

  Future<void> premiumPlanSelected(String plan) =>
      _log('premium_plan_selected', {'plan': plan}); // monthly | yearly

  Future<void> premiumPurchaseStarted(String plan) =>
      _log('premium_purchase_started', {'plan': plan});

  Future<void> purchase({
    required double value,
    required String currency,
    required String plan,
  }) =>
      _analytics.logPurchase(
        value: value,
        currency: currency,
        parameters: {'plan': plan},
      );

  Future<void> premiumCancelled() => _log('premium_cancelled');

  Future<void> premiumCancelAborted() => _log('premium_cancel_aborted');

  // ============================================================
  // SHARING
  // ============================================================

  Future<void> appShared() => _log('app_shared');

  // ============================================================
  // GENERIC SCREEN VIEW (manual, if not using observer)
  // ============================================================

  Future<void> screenView(String screenName) =>
      _analytics.logScreenView(screenName: screenName);
}