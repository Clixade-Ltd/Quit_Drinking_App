import 'package:flutter/foundation.dart';

class OnboardingAnswers extends ChangeNotifier {
  OnboardingAnswers._internal();

  static final OnboardingAnswers instance =
  OnboardingAnswers._internal();

  // ---------------------------------------------------------
  // STEP 1: GOAL
  // ---------------------------------------------------------

  String? goal;

  // ---------------------------------------------------------
  // STEP 2: QUIT TIMING
  // ---------------------------------------------------------

  /// 'Today' / 'Tomorrow' / 'Choose a date'
  String? quitTiming;

  /// Only set when quitTiming == 'Choose a date'
  DateTime? customQuitDate;

  // ---------------------------------------------------------
  // STEP 3: ROUTINE
  // ---------------------------------------------------------

  int drinksPerWeek = 0;

  /// 'Social' / 'Regular' / 'Heavy' / 'Dependent'
  String? drinkingLevel;

  /// e.g. {'Stress', 'Boredom', 'Habit'}
  final Set<String> triggers = {};

  // ---------------------------------------------------------
  // STEP 4: REASONS
  // ---------------------------------------------------------

  final Set<String> quitReasons = {};

  // ---------------------------------------------------------
  // SETTERS
  // ---------------------------------------------------------

  void setGoal(String value) {
    goal = value;
    notifyListeners();
  }

  void setQuitTiming(
      String value, {
        DateTime? date,
      }) {
    quitTiming = value;
    customQuitDate = date;
    notifyListeners();
  }

  void setDrinksPerWeek(int value) {
    drinksPerWeek = value < 0 ? 0 : value;
    notifyListeners();
  }

  void setDrinkingLevel(String value) {
    drinkingLevel = value;
    notifyListeners();
  }

  void toggleTrigger(String trigger) {
    if (triggers.contains(trigger)) {
      triggers.remove(trigger);
    } else {
      triggers.add(trigger);
    }

    notifyListeners();
  }

  void toggleReason(String reason) {
    if (quitReasons.contains(reason)) {
      quitReasons.remove(reason);
    } else {
      quitReasons.add(reason);
    }

    notifyListeners();
  }

  // ---------------------------------------------------------
  //  MAP
  // ---------------------------------------------------------

  Map<String, dynamic> toMap() {
    return {
      'goal': goal,

      // 'quitTiming': quitTiming,
      //
      // 'customQuitDate':
      // customQuitDate?.toIso8601String(),

      'drinksPerWeek': drinksPerWeek,

      'drinkingLevel': drinkingLevel,

      'triggers': triggers.toList(),

      'quitReasons':
      quitReasons.toList(),
    };
  }

  // ---------------------------------------------------------
  // CLEAR
  // ---------------------------------------------------------

  void clear() {
    goal = null;

    // quitTiming = null;

    // customQuitDate = null;

    // Keep your original defaults.
    drinksPerWeek = 0;

    drinkingLevel = null;

    triggers.clear();

    quitReasons.clear();

    notifyListeners();
  }

  // ---------------------------------------------------------
  // DEBUG
  // ---------------------------------------------------------

  @override
  String toString() {
    return 'OnboardingAnswers('
        'goal: $goal, '
        // 'quitTiming: $quitTiming, '
        // 'customQuitDate: $customQuitDate, '
        'drinksPerWeek: $drinksPerWeek, '
        'drinkingLevel: $drinkingLevel, '
        'triggers: $triggers, '
        'quitReasons: $quitReasons'
        ')';
  }
}