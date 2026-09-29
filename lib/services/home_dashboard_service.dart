import 'package:flutter/foundation.dart';

import '../models/onboarding_answers.dart';
import '../models/user_details_draft.dart';
import 'daily_check_in_service.dart';
import 'local_storage_service.dart';

class HomeDashboardService extends ChangeNotifier {
  HomeDashboardService._();

  static final HomeDashboardService instance =
  HomeDashboardService._();

  static const _profileKey = 'user_profile';

  static const _dailyLogsKey =
      'daily_logs';

  static const _healthMilestonesKey =
      'saved_health_milestones';

  final LocalStorageService _storage =
      LocalStorageService.instance;

  // =========================================================
  // DATE HELPERS
  // =========================================================

  String _dateKey([DateTime? date]) {
    final d = date ?? DateTime.now();

    return '${d.year}-'
        '${d.month.toString().padLeft(2, '0')}-'
        '${d.day.toString().padLeft(2, '0')}';
  }

  String _shortDayLabel(DateTime date) {
    const labels = [
      'Mon',
      'Tue',
      'Wed',
      'Thu',
      'Fri',
      'Sat',
      'Sun',
    ];

    return labels[date.weekday - 1];
  }

  // =========================================================
  // STORAGE HELPERS
  // =========================================================

  Future<Map<String, dynamic>>
  _readProfile() async {
    return await _storage
        .getJson(_profileKey) ??
        {};
  }

  Future<void> _writeProfile(
      Map<String, dynamic> data,
      ) async {
    await _storage.setJson(
      _profileKey,
      data,
    );
  }

  Future<Map<String, dynamic>>
  _readDailyLogs() async {
    return await _storage
        .getJson(_dailyLogsKey) ??
        {};
  }

  Future<void> _writeDailyLogs(
      Map<String, dynamic> data,
      ) async {
    await _storage.setJson(
      _dailyLogsKey,
      data,
    );
  }

  // =========================================================
  // INITIAL PROFILE (legacy — kept for backward compatibility)
  // =========================================================

  Future<void> saveInitialProfile() async {
    final details =
        UserDetailsDraft.instance;

    final answers =
        OnboardingAnswers.instance;

    final profile =
    await _readProfile();

    profile.addAll({
      ...details.toMap(),
      'goal': answers.goal,
      'quitTiming': answers.quitTiming,
      'customQuitDate':
      answers.customQuitDate
          ?.toIso8601String(),
      'drinksPerWeek':
      details.drinksPerWeek,
      'moneySpentPerWeek':
      details.moneySpentPerWeek,
      'quitReasons':
      answers.quitReasons.toList(),
      'journeyStartDate':
      _resolveStartDate(
        answers,
      ).toIso8601String(),
      'onboardingCompleted': true,
      'initialSetupCompletedAt':
      DateTime.now()
          .toIso8601String(),
    });

    await _writeProfile(profile);

    notifyListeners();
  }

  DateTime _resolveStartDate(
      OnboardingAnswers answers,
      ) {
    final now = DateTime.now();

    final today = DateTime(
      now.year,
      now.month,
      now.day,
    );

    switch (answers.quitTiming) {
      case 'Today':
        return today;

      case 'Tomorrow':
        return today.add(
          const Duration(days: 1),
        );

      case 'Choose a date':
        final d =
            answers.customQuitDate;

        return d != null
            ? DateTime(
          d.year,
          d.month,
          d.day,
        )
            : today;

      default:
        return today;
    }
  }

  // =========================================================
  // COMPLETE ONBOARDING — LOCAL ONLY, NO AI / NO NETWORK
  // =========================================================
  //
  // Saves the profile straight from the answers the user gave
  // during onboarding, and immediately builds a personalized
  // welcome message + health milestones from that same saved
  // data (goal, triggers, motivations). No API call, no loader
  // — everything here is synchronous/local, so this finishes
  // instantly.
  // =========================================================

  Future<void> completeOnboardingLocally({
    String? name,
    required String goal,
    required DateTime startDate,
    required String drinkingLevel,
    required num drinksPerWeek,
    required num moneySpentPerWeek,
    required List<String> triggers,
    required List<String> quitReasons,
  }) async {
    final profile = await _readProfile();

    profile.addAll({
      if (name != null && name.trim().isNotEmpty)
        'name': name.trim(),
      'goal': goal,
      'drinkingLevel': drinkingLevel,
      'drinksPerWeek': drinksPerWeek,
      'moneySpentPerWeek': moneySpentPerWeek,
      'triggers': triggers,
      'quitReasons': quitReasons,
      'journeyStartDate': DateTime(
        startDate.year,
        startDate.month,
        startDate.day,
      ).toIso8601String(),
      'onboardingCompleted': true,
      'initialSetupCompletedAt':
          DateTime.now().toIso8601String(),
    });

    await _writeProfile(profile);

    // Build + save the personalized plan locally, from the
    // answers this exact user just gave — no AI involved.
    final plan = _buildLocalPersonalizedPlan(
      name: name,
      goal: goal,
      triggers: triggers,
      quitReasons: quitReasons,
    );

    await saveAIPlan(plan);

    notifyListeners();
  }

  // ---------------------------------------------------------
  // LOCAL PERSONALIZED PLAN BUILDER
  // ---------------------------------------------------------
  //
  // Pure Dart — deterministic, based only on what THIS user
  // answered (goal / triggers / motivations). No network call.
  // ---------------------------------------------------------

  Map<String, dynamic> _buildLocalPersonalizedPlan({
    String? name,
    required String goal,
    required List<String> triggers,
    required List<String> quitReasons,
  }) {
    final String displayName =
        (name != null && name.trim().isNotEmpty)
            ? name.trim()
            : 'there';

    final String topTrigger =
        triggers.isNotEmpty ? triggers.first : 'cravings';

    final String topMotivation =
        quitReasons.isNotEmpty
            ? quitReasons.first
            : 'a healthier you';

    final String goalPhrase =
        goal.trim().isNotEmpty ? goal.trim() : 'your goal';

    final String welcomeMessage =
        'Welcome, $displayName! You\'re starting your journey '
        'toward "$goalPhrase". We\'ll help you manage '
        '$topTrigger and keep your focus on $topMotivation — '
        'one day at a time.';

    // Generic, day-based recovery milestones. These are
    // informational, not medical advice, and apply to any
    // user — the wording above is what's personalized.
    final List<Map<String, dynamic>> healthMilestones = [
      {
        'day': 1,
        'title': 'A fresh start',
        'description':
            'Day one — your body begins to reset.',
      },
      {
        'day': 3,
        'title': 'Sleep improving',
        'description':
            'Sleep quality typically starts improving '
            'around this point.',
      },
      {
        'day': 7,
        'title': 'One week strong',
        'description':
            'Energy levels and focus often noticeably '
            'improve by one week.',
      },
      {
        'day': 14,
        'title': 'Two weeks in',
        'description':
            'Skin hydration and digestion continue to '
            'improve.',
      },
      {
        'day': 30,
        'title': 'One month milestone',
        'description':
            'A major milestone — many people report better '
            'mood and clarity by 30 days.',
      },
      {
        'day': 90,
        'title': 'Ninety days',
        'description':
            'Long-term habits are forming — this is a huge '
            'achievement.',
      },
    ];

    return {
      'welcomeMessage': welcomeMessage,
      'healthMilestones': healthMilestones,
    };
  }

  // =========================================================
  // PROFILE
  // =========================================================

  Future<String?> getUserName() async {
    final profile =
    await _readProfile();

    final name =
    profile['name'] as String?;

    return (name != null &&
        name.trim().isNotEmpty)
        ? name.trim()
        : null;
  }

  Future<void> setUserName(
      String name,
      ) async {
    final profile =
    await _readProfile();

    profile['name'] =
        name.trim();

    await _writeProfile(profile);

    notifyListeners();
  }

  Future<void> setProfilePhotoBase64(
      String base64,
      ) async {
    final profile =
    await _readProfile();

    profile['photoBase64'] =
        base64;

    await _writeProfile(profile);

    notifyListeners();
  }

  Future<void> removeProfilePhoto() async {
    final profile =
    await _readProfile();

    profile.remove(
      'photoBase64',
    );

    await _writeProfile(profile);

    notifyListeners();
  }

  Future<void> updateProfile(
      Map<String, dynamic> updates,
      ) async {
    final profile =
    await _readProfile();

    profile.addAll(updates);

    await _writeProfile(profile);

    notifyListeners();
  }

  Future<Map<String, dynamic>?>
  getProfile() async {
    final profile =
    await _readProfile();

    return profile.isEmpty
        ? null
        : profile;
  }

  Stream<Map<String, dynamic>?>
  watchProfile() async* {
    yield await getProfile();
  }

  // =========================================================
  // DAYS SOBER
  // =========================================================

  Future<int> getDaysSober() async {
    final profile =
    await _readProfile();

    final raw =
    profile['journeyStartDate']
    as String?;

    if (raw == null) return 1;

    final start =
    DateTime.tryParse(raw);

    if (start == null) return 1;

    final startDay = DateTime(
      start.year,
      start.month,
      start.day,
    );

    final today =
    DateTime.now();

    final todayDay = DateTime(
      today.year,
      today.month,
      today.day,
    );

    final calendarDays =
        todayDay
            .difference(startDay)
            .inDays +
            1;

    final checkIns =
    await DailyCheckInService
        .instance
        .getAll();

    int drinkDays = 0;

    for (final checkIn
    in checkIns) {
      if (!checkIn.stayedOnTrack) {
        drinkDays++;
      }
    }

    final effectiveDays =
        calendarDays - drinkDays;

    return effectiveDays < 1
        ? 1
        : effectiveDays;
  }

  Future<DateTime?> getJourneyStartDate() async {
    final profile =
    await _readProfile();

    final raw =
    profile['journeyStartDate']
    as String?;

    if (raw == null) return null;

    final start =
    DateTime.tryParse(raw);

    return start;
  }

  // =========================================================
  // DAILY MOOD
  // =========================================================

  Future<String?> getTodayMood() async {
    final logs =
    await _readDailyLogs();

    final today =
    logs[_dateKey()]
    as Map<String, dynamic>?;

    return today?['mood']
    as String?;
  }

  Future<void> setTodayMood(
      String mood,
      ) async {
    final logs =
    await _readDailyLogs();

    final today =
    Map<String, dynamic>.from(
      logs[_dateKey()] ?? {},
    );

    today['mood'] = mood;

    logs[_dateKey()] =
        today;

    await _writeDailyLogs(logs);

    notifyListeners();
  }

  // =========================================================
  // TASKS
  // =========================================================

  Future<List<bool>> getTodayTasks(
      int count,
      ) async {
    final logs =
    await _readDailyLogs();

    final today =
    logs[_dateKey()]
    as Map<String, dynamic>?;

    final raw =
    today?['tasksDone']
    as List<dynamic>?;

    if (raw == null) {
      return List.filled(
        count,
        false,
      );
    }

    return List.generate(
      count,
          (i) => i < raw.length
          ? raw[i] as bool
          : false,
    );
  }

  Future<void> setTaskDone(
      int index,
      bool done,
      ) async {
    final logs =
    await _readDailyLogs();

    final today =
    Map<String, dynamic>.from(
      logs[_dateKey()] ?? {},
    );

    final raw =
    today['tasksDone']
    as List<dynamic>?;

    final current = raw != null
        ? raw
        .map(
          (e) => e as bool,
    )
        .toList()
        : List<bool>.filled(
      index + 1,
      false,
    );

    while (current.length <=
        index) {
      current.add(false);
    }

    current[index] = done;

    today['tasksDone'] =
        current;

    logs[_dateKey()] =
        today;

    await _writeDailyLogs(logs);

    notifyListeners();
  }

  // =========================================================
  // STATS
  // =========================================================

  Future<Map<String, num>>
  getStats() async {
    final profile =
    await _readProfile();

    final days =
    await getDaysSober();

    final drinksPerWeek =
        (profile['drinksPerWeek']
        as num?)
            ?.toDouble() ??
            0.0;

    final moneySpentPerWeek =
        (profile[
        'moneySpentPerWeek']
        as num?)
            ?.toDouble() ??
            0.0;

    final drinksPerDay =
        drinksPerWeek / 7.0;

    final drinksAvoided =
        drinksPerDay * days;

    const caloriesPerDrink =
    150;

    final caloriesAvoided =
    (drinksAvoided *
        caloriesPerDrink)
        .round();

    final moneySpentPerDay =
        moneySpentPerWeek / 7.0;

    final dailyMoneySaved =
        drinksPerDay *
            moneySpentPerDay;

    final moneySaved =
    (dailyMoneySaved * days)
        .round();

    final wellnessScore =
    (60 + days)
        .clamp(0, 100);

    return {
      'drinksAvoided':
      drinksAvoided,
      'moneySaved':
      moneySaved,
      'caloriesAvoided':
      caloriesAvoided,
      'wellnessScore':
      wellnessScore,
    };
  }

  // =========================================================
  // AI PERSONALIZED PLAN
  // (name kept for compatibility — content is now always
  // built locally by completeOnboardingLocally(), never via
  // a network call)
  // =========================================================

  Future<void> saveAIPlan(
      Map<String, dynamic> plan,
      ) async {
    final profile =
    await _readProfile();

    profile[
    'aiPersonalizedPlan'] =
        plan;

    profile[
    'aiPlanGeneratedAt'] =
        DateTime.now()
            .toIso8601String();

    await _writeProfile(
      profile,
    );

    final rawMilestones =
    plan['healthMilestones'];

    if (rawMilestones is List) {
      final milestones =
      rawMilestones
          .whereType<Map>()
          .map(
            (item) =>
        Map<String, dynamic>
            .from(item),
      )
          .toList();

      if (milestones.isNotEmpty) {
        await _storage
            .setJsonList(
          _healthMilestonesKey,
          milestones,
        );
      }
    }

    notifyListeners();
  }

  Future<Map<String, dynamic>?>
  getAIPlan() async {
    final profile =
    await _readProfile();

    final plan =
    profile[
    'aiPersonalizedPlan'];

    if (plan is Map) {
      return Map<String, dynamic>
          .from(plan);
    }

    return null;
  }

  // =========================================================
  // DAILY UPDATE — LOCAL, BASED ON SAVED ANSWERS
  // =========================================================
  //
  // Replaces the old Gemini-based daily update. Deterministic:
  // picks a motivation quote + journal prompt using the day
  // count and the user's own saved goal/triggers/motivations,
  // so it still feels personalized to THAT user without any
  // network call or loading wait.
  // =========================================================

  static const List<String> _motivationQuoteBank = [
    'Every day you choose this is a day you\'re choosing yourself.',
    'Progress isn\'t always loud — showing up today counts.',
    'You\'re not giving something up, you\'re gaining yourself back.',
    'One decision at a time. You\'ve already made a good one today.',
    'The hardest days build the strongest habits.',
    'Small consistent choices are what change a life.',
    'You don\'t have to be perfect — you have to keep going.',
    'Notice how far you\'ve already come.',
  ];

  static const List<String> _journalPromptBank = [
    'What\'s one small win from today, no matter how small?',
    'What triggered a craving today, and how did you respond?',
    'What are you most looking forward to this week?',
    'Who or what is supporting you most right now?',
    'What would you tell yourself a week ago?',
    'What does progress look like for you this month?',
  ];

  Map<String, dynamic> buildLocalDailyUpdate({
    required Map<String, dynamic> profile,
    required int daysSober,
  }) {
    final quote = _motivationQuoteBank[
        daysSober % _motivationQuoteBank.length];

    final prompt = _journalPromptBank[
        daysSober % _journalPromptBank.length];

    final healthScore =
        (60 + daysSober).clamp(0, 100);

    return {
      'motivationQuote': quote,
      'healthScore': healthScore,
      'journalPrompt': prompt,
    };
  }

  Future<void> saveDailyAIUpdate(
      Map<String, dynamic> update,
      ) async {
    final profile =
    await _readProfile();

    profile['dailyAIUpdate'] = {
      'date': _dateKey(),
      'motivationQuote':
      update['motivationQuote'],
      'healthScore':
      update['healthScore'],
      'journalPrompt':
      update['journalPrompt'],
    };

    await _writeProfile(
      profile,
    );

    notifyListeners();
  }

  Future<Map<String, dynamic>?>
  getTodayAIUpdate() async {
    final profile =
    await _readProfile();

    final rawUpdate =
    profile['dailyAIUpdate'];

    if (rawUpdate is! Map) {
      return null;
    }

    final update =
    Map<String, dynamic>.from(
      rawUpdate,
    );

    final savedDate =
    update['date'];

    if (savedDate !=
        _dateKey()) {
      return null;
    }

    return update;
  }

  Future<void>
  invalidateTodayAIUpdate() async {
    final profile =
    await _readProfile();

    profile.remove(
      'dailyAIUpdate',
    );

    await _writeProfile(
      profile,
    );

    notifyListeners();
  }

  // =========================================================
  // WEEKLY MONEY SAVED
  // =========================================================

  Future<List<Map<String, dynamic>>>
  getWeeklyMoneySaved() async {
    final profile =
    await _readProfile();

    final drinksPerWeek =
        (profile['drinksPerWeek']
        as num?)
            ?.toDouble() ??
            0.0;

    final moneySpentPerWeek =
        (profile[
        'moneySpentPerWeek']
        as num?)
            ?.toDouble() ??
            0.0;

    final drinksPerDay =
        drinksPerWeek / 7.0;

    final moneySpentPerDay =
        moneySpentPerWeek / 7.0;

    final dailyMoneySaved =
        drinksPerDay *
            moneySpentPerDay;

    final checkIns =
    await DailyCheckInService
        .instance
        .getAll();

    final checkInByDate =
    <String, dynamic>{};

    for (final checkIn
    in checkIns) {
      checkInByDate[
      _dateKey(
          checkIn.date)] =
          checkIn;
    }

    final today =
    DateTime.now();

    final todayDay = DateTime(
      today.year,
      today.month,
      today.day,
    );

    final result =
    <Map<String, dynamic>>[];

    for (int i = 6;
    i >= 0;
    i--) {
      final date =
      todayDay.subtract(
        Duration(days: i),
      );

      final key =
      _dateKey(date);

      final checkIn =
      checkInByDate[key];

      double saved = 0;

      if (checkIn != null &&
          checkIn.stayedOnTrack) {
        saved =
            dailyMoneySaved;
      }

      result.add({
        'date': date,
        'label':
        _shortDayLabel(date),
        'value': saved,
        'hasData':
        checkIn != null,
        'stayedOnTrack':
        checkIn
            ?.stayedOnTrack,
      });
    }

    return result;
  }

  // =========================================================
  // WEEKLY MOOD
  // =========================================================

  Future<List<Map<String, dynamic>>>
  getWeeklyMoodData() async {
    final checkIns =
    await DailyCheckInService
        .instance
        .getAll();

    final checkInByDate =
    <String, dynamic>{};

    for (final checkIn
    in checkIns) {
      checkInByDate[
      _dateKey(
          checkIn.date)] =
          checkIn;
    }

    final today =
    DateTime.now();

    final todayDay = DateTime(
      today.year,
      today.month,
      today.day,
    );

    final result =
    <Map<String, dynamic>>[];

    for (int i = 6;
    i >= 0;
    i--) {
      final date =
      todayDay.subtract(
        Duration(days: i),
      );

      final key =
      _dateKey(date);

      final checkIn =
      checkInByDate[key];

      result.add({
        'date': date,
        'label':
        _shortDayLabel(date),
        'moodIndex':
        checkIn?.moodIndex,
        'hasData':
        checkIn != null,
      });
    }

    return result;
  }

  // =========================================================
  // WEEKLY CRAVING PATTERN
  // =========================================================
  //
  // cravingLevel:
  //
  // 0 = None
  // 1 = Low
  // 2 = Medium
  // 3 = Strong
  //
  // This reads directly from the daily check-ins.
  // No Gemini / AI involved.
  // =========================================================

  Future<List<Map<String, dynamic>>>
  getWeeklyCravingData() async {
    final checkIns =
    await DailyCheckInService
        .instance
        .getAll();

    final checkInByDate =
    <String, dynamic>{};

    for (final checkIn
    in checkIns) {
      checkInByDate[
      _dateKey(
          checkIn.date)] =
          checkIn;
    }

    final today =
    DateTime.now();

    final todayDay = DateTime(
      today.year,
      today.month,
      today.day,
    );

    final result =
    <Map<String, dynamic>>[];

    for (int i = 6;
    i >= 0;
    i--) {
      final date =
      todayDay.subtract(
        Duration(days: i),
      );

      final key =
      _dateKey(date);

      final checkIn =
      checkInByDate[key];

      result.add({
        'date': date,
        'label':
        _shortDayLabel(date),
        'cravingLevel':
        checkIn?.cravingLevel,
        'hasData':
        checkIn != null,
      });
    }

    return result;
  }

  // =========================================================
  // SOBER CALENDAR
  // =========================================================

  Future<Map<String, int>>
  getSoberCalendarData({
    int days = 42,
  }) async {
    final checkIns =
    await DailyCheckInService
        .instance
        .getAll();

    final result =
    <String, int>{};

    for (final checkIn
    in checkIns) {
      result[
      _dateKey(checkIn.date)] =
      checkIn.stayedOnTrack
          ? 1
          : 2;
    }

    final today =
    DateTime.now();

    final todayDay = DateTime(
      today.year,
      today.month,
      today.day,
    );

    for (int i = 0;
    i < days;
    i++) {
      final date =
      todayDay.subtract(
        Duration(days: i),
      );

      final key =
      _dateKey(date);

      result.putIfAbsent(
        key,
            () => 0,
      );
    }

    return result;
  }

  // =========================================================
  // HEALTH MILESTONES
  // =========================================================

  Future<List<Map<String, dynamic>>>
  getHealthMilestones() async {
    final profile =
    await _readProfile();

    final savedPlan =
    profile[
    'aiPersonalizedPlan'];

    if (savedPlan is Map) {
      final rawMilestones =
      savedPlan[
      'healthMilestones'];

      if (rawMilestones is List &&
          rawMilestones.isNotEmpty) {
        final milestones =
        rawMilestones
            .whereType<Map>()
            .map(
              (item) =>
          Map<String, dynamic>
              .from(item),
        )
            .toList();

        if (milestones.isNotEmpty) {
          await _storage
              .setJsonList(
            _healthMilestonesKey,
            milestones,
          );

          return milestones;
        }
      }
    }

    final cached =
    await _storage.getJsonList(
      _healthMilestonesKey,
    );

    return cached
        .map(
          (item) =>
      Map<String, dynamic>
          .from(item),
    )
        .toList();
  }

  // =========================================================
  // MILESTONE STATUS
  // =========================================================

  Future<List<Map<String, dynamic>>>
  getHealthMilestonesWithStatus() async {
    final milestones =
    await getHealthMilestones();

    final daysSober =
    await getDaysSober();

    final result =
    <Map<String, dynamic>>[];

    for (final milestone
    in milestones) {
      final copy =
      Map<String, dynamic>.from(
        milestone,
      );

      final rawDay =
          milestone['day'] ??
              milestone['days'] ??
              milestone['daysSober'];

      int? milestoneDay;

      if (rawDay is num) {
        milestoneDay =
            rawDay.round();
      } else if (rawDay is String) {
        milestoneDay =
            int.tryParse(rawDay);
      }

      String status;

      if (milestoneDay == null) {
        status = 'future';
      } else if (milestoneDay <=
          daysSober) {
        status = 'reached';
      } else {
        status = 'future';
      }

      copy['status'] =
          status;

      copy['currentDaysSober'] =
          daysSober;

      result.add(copy);
    }

    return result;
  }

  // =========================================================
  // NEXT HEALTH MILESTONE
  // =========================================================

  Future<Map<String, dynamic>?>
  getNextHealthMilestone() async {
    final milestones =
    await getHealthMilestones();

    final daysSober =
    await getDaysSober();

    Map<String, dynamic>? next;

    int? nextDay;

    for (final milestone
    in milestones) {
      final rawDay =
          milestone['day'] ??
              milestone['days'] ??
              milestone['daysSober'];

      int? day;

      if (rawDay is num) {
        day = rawDay.round();
      } else if (rawDay is String) {
        day = int.tryParse(rawDay);
      }

      if (day == null) continue;

      if (day > daysSober &&
          (nextDay == null ||
              day < nextDay)) {
        nextDay = day;

        next =
        Map<String, dynamic>.from(
          milestone,
        );
      }
    }

    return next;
  }
}