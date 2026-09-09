// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kannada (`kn`).
class AppLocalizationsKn extends AppLocalizations {
  AppLocalizationsKn([String locale = 'kn']) : super(locale);

  @override
  String get skip => 'ಬಿಟ್ಟುಬಿಡಿ';

  @override
  String get continueButton => 'ಮುಂದುವರಿಸಿ';

  @override
  String get getStarted => 'ಪ್ರಾರಂಭಿಸಿ';

  @override
  String get onboardingTitle1 => 'ನಿಮ್ಮ ಜೀವನದ ನಿಯಂತ್ರಣ ಪಡೆಯಿರಿ';

  @override
  String get onboardingSubtitle1 =>
      'ನಿಮ್ಮ ಪ್ರಯಾಣವನ್ನು ದಾಖಲಿಸಿ, ಪ್ರತಿಯೊಂದು ಸಾಧನೆಯನ್ನು ಆಚರಿಸಿ ಮತ್ತು ಪ್ರತಿದಿನವೂ ಆರೋಗ್ಯಕರರಾಗಿರಿ.';

  @override
  String get onboardingTitle2 => 'ನಿಮ್ಮ AI ಚೇತರಿಕೆ ಸಹಚರ';

  @override
  String get onboardingSubtitle2 =>
      'ನಿಮ್ಮ ಪ್ರಯಾಣಕ್ಕೆ ಅನುಗುಣವಾಗಿ ವೈಯಕ್ತೀಕರಿಸಿದ ಮಾರ್ಗದರ್ಶನ, ಆರೋಗ್ಯಕರ ಅಭ್ಯಾಸಗಳು, ಪ್ರೇರಣೆಯ ಜ್ಞಾಪನೆಗಳು ಮತ್ತು ಪ್ರಗತಿ ವರದಿಗಳನ್ನು ಪಡೆಯಿರಿ.';

  @override
  String get goodMorning => 'ಶುಭೋದಯ';

  @override
  String get goodAfternoon => 'ಶುಭ ಮಧ್ಯಾಹ್ನ';

  @override
  String get goodEvening => 'ಶುಭ ಸಂಜೆ';

  @override
  String get goodNight => 'ಶುಭ ರಾತ್ರಿ';

  @override
  String get embracingClarity =>
      'ಒಂದು ದಿನದಂತೆ ಒಂದೊಂದು ದಿನ, ಸ್ಪಷ್ಟತೆಯನ್ನು ಅಳವಡಿಸಿಕೊಳ್ಳಿ.';

  @override
  String get streakLabel => 'ನಿರಂತರತೆ';

  @override
  String get goalLabel => 'ಗುರಿ';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ದಿನಗಳು',
      one: '$count ದಿನ',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'ಪ್ರೀಮಿಯಂ ಯೋಜನೆ';

  @override
  String get premiumPlanSubtitle =>
      'ನಿಮ್ಮ ಸಂಪೂರ್ಣ ಚೇತರಿಕೆ ಅನುಭವವನ್ನು ಅನ್ಲಾಕ್ ಮಾಡಿ';

  @override
  String get accountAndSupport => 'ಖಾತೆ ಮತ್ತು ಬೆಂಬಲ';

  @override
  String get privacyPolicy => 'ಗೌಪ್ಯತಾ ನೀತಿ';

  @override
  String get privacyPolicySubtitle =>
      'ಡೇಟಾ ಹಂಚಿಕೆ ಮತ್ತು ಖಾತೆಯ ಭದ್ರತೆಯನ್ನು ನಿರ್ವಹಿಸಿ';

  @override
  String get termsOfService => 'ಸೇವಾ ನಿಯಮಗಳು';

  @override
  String get termsOfServiceSubtitle =>
      'FAQಗಳು, ನಮ್ಮನ್ನು ಸಂಪರ್ಕಿಸಿ ಮತ್ತು ಸಂಪನ್ಮೂಲಗಳು';

  @override
  String get shareApp => 'ಆ್ಯಪ್ ಹಂಚಿಕೊಳ್ಳಿ';

  @override
  String get shareAppSubtitle => 'ನಿಮ್ಮ ಸ್ನೇಹಿತರೊಂದಿಗೆ ಆ್ಯಪ್ ಹಂಚಿಕೊಳ್ಳಿ';

  @override
  String get resetData => 'ಡೇಟಾ ಮರುಹೊಂದಿಸಿ';

  @override
  String get resetDataSubtitle => 'ಈ ಸಾಧನದಲ್ಲಿ ಉಳಿಸಿರುವ ಎಲ್ಲವನ್ನೂ ಅಳಿಸಿ';

  @override
  String get resetAllDataTitle => 'ಎಲ್ಲಾ ಡೇಟಾವನ್ನು ಮರುಹೊಂದಿಸುವುದೇ?';

  @override
  String get resetAllDataMessage =>
      'ಇದು ಈ ಸಾಧನದಲ್ಲಿ ಉಳಿಸಿರುವ ಪ್ರೊಫೈಲ್, ಜರ್ನಲ್ ನಮೂದುಗಳು ಮತ್ತು ಪ್ರಗತಿ ಸೇರಿದಂತೆ ಎಲ್ಲವನ್ನೂ ಅಳಿಸುತ್ತದೆ — ಮತ್ತು ಇದನ್ನು ಹಿಂತಿರುಗಿಸಲಾಗುವುದಿಲ್ಲ.';

  @override
  String get cancel => 'ರದ್ದುಮಾಡಿ';

  @override
  String get reset => 'ಮರುಹೊಂದಿಸಿ';

  @override
  String get chooseFromGallery => 'ಗ್ಯಾಲರಿಯಿಂದ ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get takePhoto => 'ಫೋಟೋ ತೆಗೆಯಿರಿ';

  @override
  String get removePhoto => 'ಫೋಟೋ ತೆಗೆದುಹಾಕಿ';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'ಫೋಟೋವನ್ನು ನವೀಕರಿಸಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'ಫೋಟೋವನ್ನು ತೆಗೆದುಹಾಕಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ: $error';
  }

  @override
  String get photoTooLarge =>
      'ಸಂಕುಚಿಸಿದ ನಂತರವೂ ಆ ಫೋಟೋ ತುಂಬಾ ದೊಡ್ಡದಾಗಿದೆ — ದಯವಿಟ್ಟು ಬೇರೆ ಫೋಟೋ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get unableToLoadProfile =>
      'ನಿಮ್ಮ ಪ್ರೊಫೈಲ್ ಅನ್ನು ಲೋಡ್ ಮಾಡಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ';

  @override
  String get pleaseTryAgain => 'ದಯವಿಟ್ಟು ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get tryAgain => 'ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ';

  @override
  String get profileNotFound => 'ಪ್ರೊಫೈಲ್ ಕಂಡುಬಂದಿಲ್ಲ';

  @override
  String get refresh => 'ರಿಫ್ರೆಶ್';

  @override
  String get noProfileDataFound =>
      'ಈ ಸಾಧನದಲ್ಲಿ ಇನ್ನೂ ಯಾವುದೇ ಪ್ರೊಫೈಲ್ ಡೇಟಾ ಕಂಡುಬಂದಿಲ್ಲ.';

  @override
  String couldNotResetData(String error) {
    return 'ಡೇಟಾವನ್ನು ಮರುಹೊಂದಿಸಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ: $error';
  }

  @override
  String get navHome => 'ಮುಖಪುಟ';

  @override
  String get navStats => 'ಅಂಕಿಅಂಶಗಳು';

  @override
  String get navJournal => 'ಜರ್ನಲ್';

  @override
  String get navBadges => 'ಬ್ಯಾಡ್ಜ್‌ಗಳು';

  @override
  String get navProfile => 'ಪ್ರೊಫೈಲ್';

  @override
  String featureComingSoon(String feature) {
    return '$feature ಶೀಘ್ರದಲ್ಲೇ ಲಭ್ಯವಾಗಲಿದೆ.';
  }

  @override
  String get appWordmark => 'ಆರೋಗ್ಯ ಮತ್ತು ಕ್ಷೇಮ';

  @override
  String get appTitle => 'ಮದ್ಯಪಾನ ತ್ಯಜಿಸಿ';

  @override
  String get splashSubtitle => 'ಮದ್ಯರಹಿತ ಜೀವನದತ್ತ\nಮೊದಲ ಹೆಜ್ಜೆ ಇಡಿ';

  @override
  String get preparingJourney => 'ನಿಮ್ಮ\nಪ್ರಯಾಣವನ್ನು ಸಿದ್ಧಪಡಿಸಲಾಗುತ್ತಿದೆ';

  @override
  String get taskMorningMeditation => 'ಬೆಳಗಿನ ಧ್ಯಾನ (10 ನಿಮಿಷ)';

  @override
  String get taskReadChapter => '\"The Sober Diaries\" ಅಧ್ಯಾಯ 4 ಓದಿ';

  @override
  String get taskEveningJournal => 'ಸಂಜೆಯ ಕೃತಜ್ಞತಾ ಜರ್ನಲ್';

  @override
  String get close => 'ಮುಚ್ಚಿ';

  @override
  String get youAreDoingGreat => 'ನೀವು ಅದ್ಭುತವಾಗಿ ಮಾಡುತ್ತಿದ್ದೀರಿ!';

  @override
  String get shareMilestone => 'ಸಾಧನೆಯನ್ನು ಹಂಚಿಕೊಳ್ಳಿ';

  @override
  String shareMilestoneMessage(int days) {
    return 'ನನ್ನ ಚೇತರಿಕೆಯ ಪ್ರಯಾಣದಲ್ಲಿ ನಾನು $daysನೇ ದಿನದಲ್ಲಿದ್ದೇನೆ! 💪';
  }

  @override
  String get shareMilestoneSubject => 'ನನ್ನ ಚೇತರಿಕೆಯ ಸಾಧನೆ';

  @override
  String get weeklyReportReadyTitle => 'ನಿಮ್ಮ ವಾರದ ವರದಿ ಸಿದ್ಧವಾಗಿದೆ';

  @override
  String get weeklyReportReadySubtitle =>
      'ನಿಮ್ಮ ವಾರ ಹೇಗಿತ್ತು ಎಂಬುದನ್ನು ನೋಡಲು ಟ್ಯಾಪ್ ಮಾಡಿ';

  @override
  String get howAreYouFeeling => 'ನಿಮಗೆ ಹೇಗನಿಸುತ್ತಿದೆ?';

  @override
  String get moodTough => 'ಕಷ್ಟವಾಗಿದೆ';

  @override
  String get moodOkay => 'ಪರವಾಗಿಲ್ಲ';

  @override
  String get moodGood => 'ಚೆನ್ನಾಗಿದೆ';

  @override
  String get moneySaved => 'ಉಳಿಸಿದ ಹಣ';

  @override
  String get caloriesSaved => 'ಉಳಿಸಿದ ಕ್ಯಾಲೊರಿಗಳು';

  @override
  String get healthScore => 'ಆರೋಗ್ಯ ಸ್ಕೋರ್';

  @override
  String get drinksAvoided => 'ತಪ್ಪಿಸಿದ ಪಾನೀಯಗಳು';

  @override
  String get estimated => 'ಅಂದಾಜು';

  @override
  String get aiGenerated => 'AI ರಚಿಸಿದ';

  @override
  String get daysCapsLabel => 'ದಿನಗಳು';

  @override
  String get todaysMotivation => 'ಇಂದಿನ ಪ್ರೇರಣೆ';

  @override
  String get defaultMotivationQuote =>
      'ನಿಮ್ಮ ಬದ್ಧತೆಯನ್ನು ಯಶಸ್ವಿಯಾಗಿ ಕಾಪಾಡಿಕೊಂಡಿದ್ದೀರಿ. ಸಕಾರಾತ್ಮಕ ಬದಲಾವಣೆಯ ಅಲೆಯ ಮೇಲೆ ಮುಂದುವರಿಯಿರಿ.';

  @override
  String get talkToCoach => 'ಕೋಚ್ ಜೊತೆ ಮಾತನಾಡಿ';

  @override
  String get havingACraving => 'ನನಗೆ ಕುಡಿಯಬೇಕೆಂಬ ಆಸೆ ಬರುತ್ತಿದೆ';

  @override
  String get unlockWeeklyReportsTitle => 'ವಾರದ ವರದಿಗಳನ್ನು ಅನ್ಲಾಕ್ ಮಾಡಿ';

  @override
  String get unlockWeeklyReportsMessage =>
      'ಪ್ರತಿ ವಾರ ನಿಮ್ಮ ಮದ್ಯರಹಿತ ದಿನಗಳು, ಮನಸ್ಥಿತಿಯ ಪ್ರವೃತ್ತಿಗಳು ಮತ್ತು ವೈಯಕ್ತೀಕರಿಸಿದ AI ಪ್ರತಿಕ್ರಿಯೆಯನ್ನು ನೋಡಿ. ಅನ್ಲಾಕ್ ಮಾಡಲು ಪ್ರೀಮಿಯಂಗೆ ಅಪ್‌ಗ್ರೇಡ್ ಮಾಡಿ.';

  @override
  String get maybeLater => 'ಬಹುಶಃ ನಂತರ';

  @override
  String get upgrade => 'ಅಪ್‌ಗ್ರೇಡ್';

  @override
  String get weeklyReportTitle => 'ವಾರದ ವರದಿ';

  @override
  String get weeklyReportsPremiumTitle =>
      'ವಾರದ ವರದಿಗಳು ಪ್ರೀಮಿಯಂ ವೈಶಿಷ್ಟ್ಯವಾಗಿದೆ';

  @override
  String get weeklyReportsPremiumMessage =>
      'ಪ್ರತಿ ವಾರ ನಿಮ್ಮ ಮದ್ಯರಹಿತ ದಿನಗಳು, ಮನಸ್ಥಿತಿಯ ಪ್ರವೃತ್ತಿಗಳು, ಕುಡಿಯಬೇಕೆಂಬ ಆಸೆಗಳು ಮತ್ತು ವೈಯಕ್ತೀಕರಿಸಿದ AI ಪ್ರತಿಕ್ರಿಯೆಯನ್ನು ನೋಡಿ.';

  @override
  String get upgradeToPremium => 'ಪ್ರೀಮಿಯಂಗೆ ಅಪ್‌ಗ್ರೇಡ್ ಮಾಡಿ';

  @override
  String get couldNotGenerateReport =>
      'ಈಗ ನಿಮ್ಮ ವರದಿಯನ್ನು ರಚಿಸಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ.';

  @override
  String get tryAgainLower => 'ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ';

  @override
  String get statSoberDays => 'ಮದ್ಯರಹಿತ ದಿನಗಳು';

  @override
  String get statAvgMood => 'ಸರಾಸರಿ ಮನಸ್ಥಿತಿ';

  @override
  String get statCravings => 'ಕುಡಿಯಬೇಕೆಂಬ ಆಸೆಗಳು';

  @override
  String get statMoneySaved => 'ಉಳಿಸಿದ ಹಣ';

  @override
  String get coachFeedback => 'ಕೋಚ್ ಪ್ರತಿಕ್ರಿಯೆ';

  @override
  String get journalInsights => 'ಜರ್ನಲ್ ಒಳನೋಟಗಳು';

  @override
  String get next => 'ಮುಂದೆ';

  @override
  String get question1Title => 'ನಿಮ್ಮ ಗುರಿ ಏನು?';

  @override
  String get question1Subtitle => 'ನಿಮಗೆ ಹೆಚ್ಚು ಮುಖ್ಯವಾದ\nಗುರಿಯನ್ನು ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get goalQuitCompletely => 'ಸಂಪೂರ್ಣವಾಗಿ ತ್ಯಜಿಸಿ';

  @override
  String get goalReduceDrinking => 'ಕುಡಿಯುವುದನ್ನು ಕಡಿಮೆ ಮಾಡಿ';

  @override
  String get goalTakeABreak => 'ವಿರಾಮ ತೆಗೆದುಕೊಳ್ಳಿ';

  @override
  String get goalBuildHealthierHabits => 'ಆರೋಗ್ಯಕರ ಅಭ್ಯಾಸಗಳನ್ನು ಬೆಳೆಸಿಕೊಳ್ಳಿ';

  @override
  String get question3Title => 'ನಿಮ್ಮ\nದಿನಚರಿಯ ಬಗ್ಗೆ ತಿಳಿಸಿ';

  @override
  String get drinksPerWeek => 'ವಾರಕ್ಕೆ ಪಾನೀಯಗಳು';

  @override
  String get moneySpentPerWeek => 'ವಾರಕ್ಕೆ ಖರ್ಚು ಮಾಡುವ ಹಣ';

  @override
  String get drinkingLevel => 'ಕುಡಿಯುವ ಮಟ್ಟ';

  @override
  String get triggersLabel => 'ಪ್ರಚೋದಕಗಳು';

  @override
  String get levelSocial => 'ಸಾಮಾಜಿಕ';

  @override
  String get levelRegular => 'ನಿಯಮಿತ';

  @override
  String get levelHeavy => 'ಹೆಚ್ಚು';

  @override
  String get levelDependent => 'ಅವಲಂಬಿತ';

  @override
  String get triggerStress => 'ಒತ್ತಡ';

  @override
  String get triggerLoneliness => 'ಒಂಟಿತನ';

  @override
  String get triggerHabit => 'ಅಭ್ಯಾಸ';

  @override
  String get triggerSadness => 'ದುಃಖ';

  @override
  String get triggerAnger => 'ಕೋಪ';

  @override
  String get triggerBoredom => 'ಬೇಸರ';

  @override
  String get triggerSocialPressure => 'ಸಾಮಾಜಿಕ ಒತ್ತಡ';

  @override
  String get triggerCelebration => 'ಆಚರಣೆ';

  @override
  String get triggerSleepProblems => 'ನಿದ್ರೆಯ ಸಮಸ್ಯೆಗಳು';

  @override
  String get triggerWorkPressure => 'ಕೆಲಸದ ಒತ್ತಡ';

  @override
  String get question4Title => 'ನೀವು ಏಕೆ ಬದಲಾಗಲು ಬಯಸುತ್ತೀರಿ?';

  @override
  String get question4Subtitle =>
      'ನಿಮ್ಮ ಕಾರಣವು ನಿಮ್ಮನ್ನು ಪ್ರೇರೇಪಿಸಲು ಸಹಾಯ ಮಾಡುತ್ತದೆ.';

  @override
  String get reasonImproveHealth => 'ನನ್ನ ಆರೋಗ್ಯವನ್ನು ಸುಧಾರಿಸಿ';

  @override
  String get reasonSaveMoney => 'ಹಣ ಉಳಿಸಿ';

  @override
  String get reasonFamily => 'ಕುಟುಂಬ';

  @override
  String get reasonBetterSleep => 'ಉತ್ತಮ ನಿದ್ರೆ';

  @override
  String get reasonMentalClarity => 'ಮಾನಸಿಕ ಸ್ಪಷ್ಟತೆ';

  @override
  String get reasonFitness => 'ಫಿಟ್ನೆಸ್';

  @override
  String get reasonSelfRespect => 'ಸ್ವಾಭಿಮಾನ';

  @override
  String get reasonCareer => 'ವೃತ್ತಿಜೀವನ';

  @override
  String get milestoneUnlockedLabel => 'ಸಾಧನೆ ಅನ್ಲಾಕ್ ಆಗಿದೆ';

  @override
  String incredibleNamePrefix(String name) {
    return 'ಅದ್ಭುತ, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount ಉಳಿಸಲಾಗಿದೆ';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count ತಪ್ಪಿಸಲಾಗಿದೆ';
  }

  @override
  String get shareMyMilestone => 'ನನ್ನ ಸಾಧನೆಯನ್ನು ಹಂಚಿಕೊಳ್ಳಿ';

  @override
  String get milestoneImageShareError =>
      'ಸಾಧನೆಯ ಚಿತ್ರವನ್ನು ರಚಿಸಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ. ದಯವಿಟ್ಟು ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get dailyCheckInTitle => 'ದೈನಂದಿನ ಚೆಕ್-ಇನ್';

  @override
  String get howAreYouFeelingToday => 'ಇಂದು ನಿಮಗೆ ಹೇಗನಿಸುತ್ತಿದೆ?';

  @override
  String get honestAnswerHelp =>
      'ನಿಮ್ಮ ಪ್ರಾಮಾಣಿಕ ಉತ್ತರವು ನಿಮಗೆ ಉತ್ತಮವಾಗಿ ಬೆಂಬಲ ನೀಡಲು ನಮಗೆ ಸಹಾಯ ಮಾಡುತ್ತದೆ';

  @override
  String get didYouDrinkToday => 'ನೀವು ಇಂದು ಕುಡಿದಿದ್ದೀರಾ?';

  @override
  String get noLabel => 'ಇಲ್ಲ';

  @override
  String get yesLabel => 'ಹೌದು';

  @override
  String get cravingLevelNow => 'ಈಗ ಕುಡಿಯಬೇಕೆಂಬ ಆಸೆಯ ಮಟ್ಟ ಎಷ್ಟು?';

  @override
  String get anythingOnMind => 'ನಿಮ್ಮ ಮನಸ್ಸಿನಲ್ಲಿ ಏನಾದರೂ ಇದೆಯೇ?';

  @override
  String get optionalLabel => '(ಐಚ್ಛಿಕ)';

  @override
  String get dailyNoteHint => 'ನಿಮ್ಮ ದಿನ, ಪ್ರಚೋದಕಗಳು, ಸಾಧನೆಗಳ ಬಗ್ಗೆ ಬರೆಯಿರಿ...';

  @override
  String get alreadyCheckedInToday => 'ಇಂದು ಈಗಾಗಲೇ ಚೆಕ್-ಇನ್ ಮಾಡಲಾಗಿದೆ';

  @override
  String get saveCheckIn => 'ಚೆಕ್-ಇನ್ ಉಳಿಸಿ';

  @override
  String get checkInsHelpTrack =>
      'ಚೆಕ್-ಇನ್‌ಗಳು ಕಾಲಾನಂತರದಲ್ಲಿ ನಿಮ್ಮ ಪ್ರಗತಿಯನ್ನು ಟ್ರ್ಯಾಕ್ ಮಾಡಲು ಸಹಾಯ ಮಾಡುತ್ತವೆ';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'ನೀವು ಇಂದಿನ ಚೆಕ್-ಇನ್ ಅನ್ನು ಈಗಾಗಲೇ ಪೂರ್ಣಗೊಳಿಸಿದ್ದೀರಿ.';

  @override
  String get pleaseAnswerBothQuestions =>
      'ದಯವಿಟ್ಟು ಮೊದಲು ಮೇಲಿನ ಎರಡೂ ಪ್ರಶ್ನೆಗಳಿಗೆ ಉತ್ತರಿಸಿ';

  @override
  String get checkInSaved => 'ಚೆಕ್-ಇನ್ ಉಳಿಸಲಾಗಿದೆ';

  @override
  String get cravingNone => 'ಯಾವುದೂ ಇಲ್ಲ';

  @override
  String get cravingLow => 'ಕಡಿಮೆ';

  @override
  String get cravingMedium => 'ಮಧ್ಯಮ';

  @override
  String get cravingStrong => 'ತೀವ್ರ';

  @override
  String get moodBad => 'ಕೆಟ್ಟದು';

  @override
  String get moodLow => 'ಕಡಿಮೆ';

  @override
  String get moodGreat => 'ಅತ್ಯುತ್ತಮ';

  @override
  String get sosSupportTitle => 'SOS ಬೆಂಬಲ';

  @override
  String notAloneMessage(String name) {
    return 'ನೀವು ಒಬ್ಬರೇ ಅಲ್ಲ, $name';
  }

  @override
  String get cravingsPassMessage =>
      'ಕುಡಿಯಬೇಕೆಂಬ ಆಸೆಗಳು ಕಳೆದುಹೋಗುತ್ತವೆ. ಈ ಕ್ಷಣವನ್ನು ದಾಟಲು ಸಹಾಯ ಮಾಡುವ ಯಾವುದನ್ನಾದರೂ ಕೆಳಗಿನಿಂದ ಆಯ್ಕೆಮಾಡಿ.';

  @override
  String get breathingExercise => 'ಉಸಿರಾಟದ ವ್ಯಾಯಾಮ';

  @override
  String get breathingExerciseSubtitle => 'ಮಾರ್ಗದರ್ಶಿತ 4-7-8 ತಂತ್ರ, 2 ನಿಮಿಷಗಳು';

  @override
  String get rideTheWave => 'ಅಲೆಯನ್ನು ದಾಟಿ';

  @override
  String get rideTheWaveSubtitle =>
      '15 ನಿಮಿಷಗಳ ಟೈಮರ್ — ಕುಡಿಯಬೇಕೆಂಬ ಆಸೆಗಳು ಯಾವಾಗಲೂ ಕಳೆದುಹೋಗುತ್ತವೆ';

  @override
  String get copingTips => 'ನಿಭಾಯಿಸುವ ಸಲಹೆಗಳು';

  @override
  String get copingTipsSubtitle => 'ನಿಮ್ಮ ಪ್ರಚೋದಕಗಳಿಗೆ ವೈಯಕ್ತೀಕರಿಸಿದ ತಂತ್ರಗಳು';

  @override
  String get talkToAiCoach => 'AI ಕೋಚ್ ಜೊತೆ ಮಾತನಾಡಿ';

  @override
  String get talkToAiCoachSubtitle => 'ನಿಮ್ಮ ಚೇತರಿಕೆ ಸಹಚರರೊಂದಿಗೆ ಚಾಟ್ ಮಾಡಿ';

  @override
  String get callSomeone => 'ಯಾರಿಗಾದರೂ ಕರೆ ಮಾಡಿ';

  @override
  String get callSomeoneSubtitle => 'ನಿಮ್ಮ ವಿಶ್ವಾಸಾರ್ಹ ಸಂಪರ್ಕವನ್ನು ಸಂಪರ್ಕಿಸಿ';

  @override
  String get contactsPermissionNeeded =>
      'ಸಂಪರ್ಕಕ್ಕೆ ಕರೆ ಮಾಡಲು ಸಂಪರ್ಕಗಳ ಅನುಮತಿ ಅಗತ್ಯವಿದೆ.';

  @override
  String get beatenCravingsPrefix => 'ನೀವು ಕುಡಿಯಬೇಕೆಂಬ ಆಸೆಯನ್ನು ';

  @override
  String beatenCravingsCount(int count) {
    return '$count ಬಾರಿ';
  }

  @override
  String get beatenCravingsSuffix => ' ಎದುರಿಸಿದ್ದೀರಿ. ನೀವು ಮತ್ತೆ ಮಾಡಬಹುದು.';

  @override
  String get tellUsAboutYourself => 'ನಿಮ್ಮ ಬಗ್ಗೆ ತಿಳಿಸಿ';

  @override
  String get detailsSubtitle =>
      'ಈ ಮಾಹಿತಿಯು ನಿಮ್ಮ ಚೇತರಿಕೆಯ ಪ್ರಯಾಣವನ್ನು ವೈಯಕ್ತೀಕರಿಸಲು ಮತ್ತು ನಿಖರವಾದ ಒಳನೋಟಗಳನ್ನು ನೀಡಲು ನಮಗೆ ಸಹಾಯ ಮಾಡುತ್ತದೆ.';

  @override
  String get nameLabel => 'ಹೆಸರು';

  @override
  String get nameHint => 'ಉದಾ., Alex Rivers';

  @override
  String get ageLabel => 'ವಯಸ್ಸು';

  @override
  String get ageHint => 'ಉದಾ., 32';

  @override
  String get sexAssignedAtBirth => 'ಜನನದ ಸಮಯದಲ್ಲಿ ನಿಗದಿಪಡಿಸಿದ ಲಿಂಗ';

  @override
  String get sexFemale => 'ಮಹಿಳೆ';

  @override
  String get sexMale => 'ಪುರುಷ';

  @override
  String get heightLabel => 'ಎತ್ತರ';

  @override
  String get weightLabel => 'ತೂಕ';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'ದೈನಂದಿನ ಮಿತಿ ತಲುಪಿದೆ';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'ನೀವು ಇಂದು ಎಲ್ಲಾ $limit ಉಚಿತ ಸಂದೇಶಗಳನ್ನು ಬಳಸಿದ್ದೀರಿ. ಅನಿಯಮಿತ ಕೋಚ್ ಚಾಟ್‌ಗಾಗಿ ಪ್ರೀಮಿಯಂಗೆ ಅಪ್‌ಗ್ರೇಡ್ ಮಾಡಿ.';
  }

  @override
  String get coachConnectError =>
      'ಈಗ ಸಂಪರ್ಕಿಸಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ. ಸ್ವಲ್ಪ ಸಮಯದ ನಂತರ ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get clearConversationTitle => 'ಸಂಭಾಷಣೆಯನ್ನು ತೆರವುಗೊಳಿಸುವುದೇ?';

  @override
  String get clearConversationMessage =>
      'ಇದು ನಿಮ್ಮ ಕೋಚ್ ಚಾಟ್ ಇತಿಹಾಸವನ್ನು ಶಾಶ್ವತವಾಗಿ ತೆಗೆದುಹಾಕುತ್ತದೆ.';

  @override
  String get clearLabel => 'ತೆರವುಗೊಳಿಸಿ';

  @override
  String get recoveryCoachTitle => 'ಚೇತರಿಕೆ ಕೋಚ್';

  @override
  String get onlineLabel => 'ಆನ್‌ಲೈನ್';

  @override
  String get clearConversationMenuItem => 'ಸಂಭಾಷಣೆ ತೆರವುಗೊಳಿಸಿ';

  @override
  String chatGreeting(String name) {
    return 'ಹಾಯ್ $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'ನಿಮ್ಮ ಪ್ರಯಾಣದ $daysನೇ ದಿನದಲ್ಲಿದ್ದೀರಿ. ವಿಷಯಗಳನ್ನು ಮಾತನಾಡಲು ಬಯಸಿದಾಗಲೆಲ್ಲ ನಾನು ಇಲ್ಲಿದ್ದೇನೆ.';
  }

  @override
  String get quickPromptsLabel => 'ತ್ವರಿತ ಪ್ರಾಂಪ್ಟ್‌ಗಳು';

  @override
  String get promptCravingLabel => 'ಕುಡಿಯಬೇಕೆಂಬ ಆಸೆ ಇದೆ';

  @override
  String get promptCravingSubtitle => 'ತ್ವರಿತವಾಗಿ ಮನಸ್ಸನ್ನು ಸ್ಥಿರಗೊಳಿಸಿ';

  @override
  String get promptMotivationLabel => 'ಪ್ರೇರಣೆ ಬೇಕು';

  @override
  String get promptMotivationSubtitle => 'ಕಷ್ಟವಾದಾಗ ಒಂದು ಉತ್ತೇಜನ';

  @override
  String get promptSocialLabel => 'ಸಾಮಾಜಿಕ ಪರಿಸ್ಥಿತಿ';

  @override
  String get promptSocialSubtitle => 'ಒಂದು ಸಮಾರಂಭವನ್ನು ನಿಭಾಯಿಸಿ';

  @override
  String get promptSlippedLabel => 'ನಾನು ತಪ್ಪಿಹೋದೆ';

  @override
  String get promptSlippedSubtitle => 'ಯಾವುದೇ ತೀರ್ಪಿಲ್ಲ, ಕೇವಲ ಬೆಂಬಲ';

  @override
  String get typeMessageHint => 'ಸಂದೇಶವನ್ನು ಟೈಪ್ ಮಾಡಿ...';

  @override
  String get editProfileTitle => 'ಪ್ರೊಫೈಲ್ ಸಂಪಾದಿಸಿ';

  @override
  String couldNotSaveProfile(String error) {
    return 'ಪ್ರೊಫೈಲ್ ಉಳಿಸಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ: $error';
  }

  @override
  String get heightCmLabel => 'ಎತ್ತರ (ಸೆಂ.ಮೀ.)';

  @override
  String get weightKgLabel => 'ತೂಕ (ಕೆ.ಜಿ.)';

  @override
  String get saveChangesLabel => 'ಬದಲಾವಣೆಗಳನ್ನು ಉಳಿಸಿ';

  @override
  String get premiumBadgeLabel => 'ಪ್ರೀಮಿಯಂ';

  @override
  String get featureAdvancedInsights => 'ಸುಧಾರಿತ ಒಳನೋಟಗಳು ಮತ್ತು ವಿಶ್ಲೇಷಣೆ';

  @override
  String get featureUnlimitedJournal => 'ಅನಿಯಮಿತ ಜರ್ನಲ್ ನಮೂದುಗಳು';

  @override
  String get featureUnlimitedChat => 'AI ಕೋಚ್ ಜೊತೆ ಅನಿಯಮಿತ ಚಾಟ್';

  @override
  String get featureCommunityGroups => 'ವಿಶೇಷ ಸಮುದಾಯ ಗುಂಪುಗಳು';

  @override
  String get featurePrioritySupport => 'ಆದ್ಯತೆಯ ತಜ್ಞರ ಬೆಂಬಲ';

  @override
  String get featureThemePacks => 'ಕಸ್ಟಮ್ ಥೀಮ್ ಪ್ಯಾಕ್‌ಗಳು';

  @override
  String get featureDataExport => 'ಡೇಟಾ ರಫ್ತು';

  @override
  String get featureAdFree => 'ಜಾಹೀರಾತು-ಮುಕ್ತ ಅನುಭವ';

  @override
  String get premiumMemberTitle => 'ನೀವು ಪ್ರೀಮಿಯಂ ಸದಸ್ಯರಾಗಿದ್ದೀರಿ';

  @override
  String get unlockFullRecoveryTitle =>
      'ನಿಮ್ಮ ಸಂಪೂರ್ಣ ಚೇತರಿಕೆ\nಅನುಭವವನ್ನು ಅನ್ಲಾಕ್ ಮಾಡಿ';

  @override
  String get premiumMemberSubtitle =>
      'ನಿಮ್ಮ ಚೇತರಿಕೆಯ ಪ್ರಯಾಣವನ್ನು ಬೆಂಬಲಿಸಿದ್ದಕ್ಕಾಗಿ ಧನ್ಯವಾದಗಳು — ಕೆಳಗಿನ ಎಲ್ಲಾ ಪ್ರೀಮಿಯಂ ವೈಶಿಷ್ಟ್ಯಗಳು ಅನ್ಲಾಕ್ ಆಗಿವೆ.';

  @override
  String get premiumJoinSubtitle =>
      'ನಮ್ಮ ಪ್ರೀಮಿಯಂ ಸಾಧನಗಳು ಮತ್ತು ವೈಯಕ್ತೀಕರಿಸಿದ ಬೆಂಬಲದೊಂದಿಗೆ\nತಮ್ಮ ಚೇತರಿಕೆಯ ಪ್ರಯಾಣವನ್ನು ವೇಗಗೊಳಿಸುತ್ತಿರುವ\nಸಾವಿರಾರು ಜನರ ಸಮುದಾಯಕ್ಕೆ ಸೇರಿ.';

  @override
  String get monthlyPlanLabel => 'ಮಾಸಿಕ';

  @override
  String get perMonthSuffix => '/ತಿಂಗಳು';

  @override
  String get cancelAnytimeLabel => 'ಯಾವುದೇ ಸಮಯದಲ್ಲಿ ರದ್ದುಮಾಡಿ';

  @override
  String get yearlyPlanLabel => 'ವಾರ್ಷಿಕ';

  @override
  String billedAnnuallyLabel(String amount) {
    return '$amount ವಾರ್ಷಿಕವಾಗಿ ವಿಧಿಸಲಾಗುತ್ತದೆ';
  }

  @override
  String get bestValueLabel => 'ಅತ್ಯುತ್ತಮ ಮೌಲ್ಯ';

  @override
  String get alreadyPremiumLabel => 'ನೀವು ಪ್ರೀಮಿಯಂ ✓';

  @override
  String get startPremiumLabel => 'ಪ್ರೀಮಿಯಂ ಪ್ರಾರಂಭಿಸಿ';

  @override
  String get manageSubscriptionLabel =>
      'ನಿಮ್ಮ ಸಾಧನದ ಚಂದಾದಾರಿಕೆ ಸೆಟ್ಟಿಂಗ್‌ಗಳಿಂದ ನಿರ್ವಹಿಸಿ ಅಥವಾ ರದ್ದುಮಾಡಿ.';

  @override
  String get noCommitmentLabel =>
      'ಯಾವುದೇ ಬದ್ಧತೆ ಇಲ್ಲ. ಯಾವಾಗ ಬೇಕಾದರೂ ರದ್ದುಮಾಡಿ.';

  @override
  String get continueFreePlanLabel => 'ಉಚಿತ ಯೋಜನೆಯೊಂದಿಗೆ ಮುಂದುವರಿಸಿ';

  @override
  String get backToHomeLabel => 'ಮುಖಪುಟಕ್ಕೆ ಹಿಂತಿರುಗಿ';

  @override
  String get cancelPremiumLabel => 'ಪ್ರೀಮಿಯಂ ರದ್ದುಮಾಡಿ';

  @override
  String get cancelPremiumTitle => 'ಪ್ರೀಮಿಯಂ ರದ್ದುಮಾಡುವುದೇ?';

  @override
  String get cancelPremiumMessage =>
      'ನೀವು ಅನಿಯಮಿತ ಜರ್ನಲ್ ನಮೂದುಗಳು, ಅನಿಯಮಿತ ಕೋಚ್ ಚಾಟ್, ಅಂಕಿಅಂಶಗಳ ಒಳನೋಟಗಳು ಮತ್ತು ವಾರದ ವರದಿಗಳಿಗೆ ಪ್ರವೇಶವನ್ನು ಕಳೆದುಕೊಳ್ಳುತ್ತೀರಿ. ಯಾವಾಗ ಬೇಕಾದರೂ ಮರುಚಂದಾದಾರರಾಗಬಹುದು.';

  @override
  String get keepPremiumLabel => 'ಪ್ರೀಮಿಯಂ ಮುಂದುವರಿಸಿ';

  @override
  String get nowPremiumMessage =>
      'ಈಗ ನೀವು ಪ್ರೀಮಿಯಂ ಸದಸ್ಯರಾಗಿದ್ದೀರಿ! ನಿಮ್ಮ ಸಂಪೂರ್ಣ ಚೇತರಿಕೆ ಅನುಭವವನ್ನು ಆನಂದಿಸಿ.';

  @override
  String get premiumCancelledMessage =>
      'ಪ್ರೀಮಿಯಂ ರದ್ದುಮಾಡಲಾಗಿದೆ. ನೀವು ಮತ್ತೆ ಉಚಿತ ಯೋಜನೆಯಲ್ಲಿದ್ದೀರಿ.';

  @override
  String get termsOfUseLabel => 'ಬಳಕೆಯ ನಿಯಮಗಳು';

  @override
  String get navHomeLabel => 'ಮುಖಪುಟ';

  @override
  String get navStatsLabel => 'ಅಂಕಿಅಂಶಗಳು';

  @override
  String get navJournalLabel => 'ಜರ್ನಲ್';

  @override
  String get navBadgesLabel => 'ಬ್ಯಾಡ್ಜ್‌ಗಳು';

  @override
  String get navProfileLabel => 'ಪ್ರೊಫೈಲ್';

  @override
  String get recoveryGoalsTitle => 'ಚೇತರಿಕೆಯ ಗುರಿಗಳು';

  @override
  String get drinksPerWeekLabel => 'ವಾರಕ್ಕೆ ಪಾನೀಯಗಳು';

  @override
  String get quitReasonsLabel => 'ತ್ಯಜಿಸುವ ಕಾರಣಗಳು';

  @override
  String get quitReasonsHelperText =>
      'ಹಲವು ಕಾರಣಗಳನ್ನು ಅಲ್ಪವಿರಾಮದಿಂದ ಬೇರ್ಪಡಿಸಿ.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'ಚೇತರಿಕೆಯ ಗುರಿಗಳನ್ನು ಉಳಿಸಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ: $error';
  }

  @override
  String get goalHint => 'ಉದಾ., ಸಂಪೂರ್ಣ ತ್ಯಜಿಸುವಿಕೆ';

  @override
  String get drinksPerWeekHint => 'ಉದಾ., 12';

  @override
  String get quitReasonsHint => 'ಉದಾ., ಆರೋಗ್ಯ, ಕುಟುಂಬ, ಹಣ';

  @override
  String get todaysPrompt => 'ಇಂದಿನ ಪ್ರಾಂಪ್ಟ್';

  @override
  String get defaultJournalPrompt => 'ಇಂದು ನಿಮ್ಮ ಮನಸ್ಸಿನಲ್ಲಿ ಏನಿದೆ?';

  @override
  String get aiJournalInsights => 'AI ಜರ್ನಲ್ ಒಳನೋಟಗಳು';

  @override
  String get unlockJournalInsightsMessage =>
      'ನಿಮ್ಮ ಜರ್ನಲ್ ನಮೂದುಗಳಿಂದ ವಾರದ ಮಾದರಿಗಳು, ಮನಸ್ಥಿತಿಯ ಪ್ರವೃತ್ತಿಗಳು ಮತ್ತು ವೈಯಕ್ತೀಕರಿಸಿದ ಒಳನೋಟಗಳನ್ನು ಅನ್ಲಾಕ್ ಮಾಡಿ.';

  @override
  String get notEnoughJournalData =>
      'ಇನ್ನೂ ಸಾಕಷ್ಟು ಡೇಟಾ ಇಲ್ಲ — ಈ ವಾರ ಕೆಲವು ನಮೂದುಗಳನ್ನು ಬರೆಯಿರಿ ಮತ್ತು ಮತ್ತೆ ಪರಿಶೀಲಿಸಿ.';

  @override
  String get openEntry => 'ತೆರೆಯಿರಿ';

  @override
  String get editEntry => 'ಸಂಪಾದಿಸಿ';

  @override
  String get deleteEntry => 'ಅಳಿಸಿ';

  @override
  String get searchJournalEntries => 'ನಮೂದುಗಳನ್ನು ಹುಡುಕಿ...';

  @override
  String get writeNewEntry => 'ಹೊಸ ನಮೂದು ಬರೆಯಿರಿ';

  @override
  String get recentEntries => 'ಇತ್ತೀಚಿನ ನಮೂದುಗಳು';

  @override
  String get noJournalEntriesYet =>
      'ಇನ್ನೂ ಯಾವುದೇ ಜರ್ನಲ್ ನಮೂದುಗಳಿಲ್ಲ — ಮೇಲಿನ ನಿಮ್ಮ ಮೊದಲ ಪ್ರತಿಬಿಂಬವನ್ನು ಬರೆಯಿರಿ.';

  @override
  String get noEntriesMatchFilters =>
      'ನಿಮ್ಮ ಫಿಲ್ಟರ್‌ಗಳಿಗೆ ಹೊಂದುವ ಯಾವುದೇ ನಮೂದುಗಳಿಲ್ಲ.';

  @override
  String get weeklyJournalLimitReached => 'ವಾರದ ಮಿತಿ ತಲುಪಿದೆ';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'ನೀವು ಈ ವಾರದ ಎಲ್ಲಾ $limit ಉಚಿತ ಜರ್ನಲ್ ನಮೂದುಗಳನ್ನು ಬಳಸಿದ್ದೀರಿ. ಅನಿಯಮಿತ ನಮೂದುಗಳಿಗಾಗಿ ಪ್ರೀಮಿಯಂಗೆ ಅಪ್‌ಗ್ರೇಡ್ ಮಾಡಿ.';
  }

  @override
  String get newEntry => 'ಹೊಸ ನಮೂದು';

  @override
  String get writeYourThoughts => 'ನಿಮ್ಮ ಆಲೋಚನೆಗಳನ್ನು ಬರೆಯಿರಿ';

  @override
  String get saveEntry => 'ನಮೂದು ಉಳಿಸಿ';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return 'ಈ ವಾರ $limitರಲ್ಲಿ $remaining ಉಚಿತ ನಮೂದುಗಳು ಉಳಿದಿವೆ';
  }

  @override
  String get deleteEntryQuestion => 'ನಮೂದನ್ನು ಅಳಿಸುವುದೇ?';

  @override
  String get deleteEntryConfirmation =>
      'ಈ ನಮೂದನ್ನು ಶಾಶ್ವತವಾಗಿ ಅಳಿಸಲಾಗುತ್ತದೆ. ಇದನ್ನು ಹಿಂತಿರುಗಿಸಲಾಗುವುದಿಲ್ಲ.';

  @override
  String get journalEntryNotFound => 'ನಮೂದು ಕಂಡುಬಂದಿಲ್ಲ';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'ಈ ಜರ್ನಲ್ ನಮೂದನ್ನು ಅಳಿಸಲಾಗಿರಬಹುದು.';

  @override
  String get goBack => 'ಹಿಂದಕ್ಕೆ ಹೋಗಿ';

  @override
  String get journalEntryTitle => 'ಜರ್ನಲ್ ನಮೂದು';

  @override
  String get moodStruggling => 'ಸಂಕಷ್ಟದಲ್ಲಿದೆ';

  @override
  String get moodUnwell => 'ಅಸ್ವಸ್ಥ';

  @override
  String get moodNeutral => 'ತಟಸ್ಥ';

  @override
  String get whatHappenedToday => 'ಇಂದು ಏನಾಯಿತು?';

  @override
  String get trigger => 'ಪ್ರಚೋದಕ';

  @override
  String get whatHelped => 'ಏನು ಸಹಾಯ ಮಾಡಿತು';

  @override
  String get whatIllTryNextTime => 'ಮುಂದಿನ ಬಾರಿ ನಾನು ಪ್ರಯತ್ನಿಸುವುದು';

  @override
  String get journalPrivacyMessage =>
      'ನಿಮ್ಮ ಪ್ರತಿಬಿಂಬ ಖಾಸಗಿಯಾಗಿದ್ದು ನಿಮ್ಮ ಜರ್ನಲ್‌ನಲ್ಲಿ ಉಳಿಸಲಾಗುತ್ತದೆ.';

  @override
  String get unlocked => 'ಅನ್ಲಾಕ್ ಆಗಿದೆ';

  @override
  String daysLeft(int count) {
    return '$count ದಿನಗಳು ಉಳಿದಿವೆ';
  }

  @override
  String daysCount(int count) {
    return '$count ದಿನಗಳು';
  }

  @override
  String get firstReflection => 'ಮೊದಲ\nಪ್ರತಿಬಿಂಬ';

  @override
  String get oneJournalEntry => '1 ಜರ್ನಲ್ ನಮೂದು';

  @override
  String get openBook => 'ಪುಸ್ತಕ ತೆರೆಯಿರಿ';

  @override
  String get tenJournalEntries => '10 ಜರ್ನಲ್ ನಮೂದುಗಳು';

  @override
  String get dedicatedWriter => 'ಸಮರ್ಪಿತ\nಬರಹಗಾರ';

  @override
  String get thirtyJournalEntries => '30 ಜರ್ನಲ್ ನಮೂದುಗಳು';

  @override
  String get firstConversation => 'ಮೊದಲ\nಸಂಭಾಷಣೆ';

  @override
  String get oneAiCoachChat => '1 AI ಕೋಚ್ ಚಾಟ್';

  @override
  String get keepTalking => 'ಮಾತನಾಡುತ್ತಿರಿ';

  @override
  String get fiveConversations => '5 ಸಂಭಾಷಣೆಗಳು';

  @override
  String get coachCompanion => 'ಕೋಚ್\nಸಹಚರ';

  @override
  String get twentyConversations => '20 ಸಂಭಾಷಣೆಗಳು';

  @override
  String get checkInHabit => 'ಚೆಕ್-ಇನ್\nಅಭ್ಯಾಸ';

  @override
  String get sevenCheckIns => '7 ಚೆಕ್-ಇನ್‌ಗಳು';

  @override
  String get consistencyPro => 'ನಿರಂತರತೆಯ\nಪ್ರೊ';

  @override
  String get thirtyCheckIns => '30 ಚೆಕ್-ಇನ್‌ಗಳು';

  @override
  String get dedicatedJourney => 'ಸಮರ್ಪಿತ\nಪ್ರಯಾಣ';

  @override
  String get hundredCheckIns => '100 ಚೆಕ್-ಇನ್‌ಗಳು';

  @override
  String get goalGetter => 'ಗುರಿ ಸಾಧಕ';

  @override
  String get threeGoalsCompleted => '3 ಗುರಿಗಳು ಪೂರ್ಣಗೊಂಡಿವೆ';

  @override
  String get goalAchiever => 'ಗುರಿ\nಸಾಧಕ';

  @override
  String get tenGoalsCompleted => '10 ಗುರಿಗಳು ಪೂರ್ಣಗೊಂಡಿವೆ';

  @override
  String get firstSavings => 'ಮೊದಲ\nಉಳಿತಾಯ';

  @override
  String get fiveHundredSaved => '\$500 ಉಳಿಸಲಾಗಿದೆ';

  @override
  String get smartSaver => 'ಬುದ್ಧಿವಂತ ಉಳಿತಾಯಗಾರ';

  @override
  String get oneThousandSaved => '\$1,000 ಉಳಿಸಲಾಗಿದೆ';

  @override
  String get bigSaver => 'ದೊಡ್ಡ ಉಳಿತಾಯಗಾರ';

  @override
  String get fiveThousandSaved => '\$5,000 ಉಳಿಸಲಾಗಿದೆ';

  @override
  String currencyProgress(String current, String target) {
    return '\$$current / \$$target';
  }

  @override
  String countProgress(int current, int target) {
    return '$current / $target';
  }

  @override
  String get firstMilestoneWaiting =>
      'ಮುಂದುವರಿಯಿರಿ — ನಿಮ್ಮ ಮೊದಲ ಸಾಧನೆ ನಿಮಗಾಗಿ ಕಾಯುತ್ತಿದೆ!';

  @override
  String get badgesAndMilestones => 'ಬ್ಯಾಡ್ಜ್‌ಗಳು ಮತ್ತು ಸಾಧನೆಗಳು';

  @override
  String get yourMilestoneJourney => 'ನಿಮ್ಮ ಸಾಧನೆಯ ಪ್ರಯಾಣ';

  @override
  String milestonesAchieved(int count) {
    return '$count ಸಾಧನೆಗಳನ್ನು ಪೂರ್ಣಗೊಳಿಸಲಾಗಿದೆ.\nವೀಕ್ಷಿಸಲು ಟ್ಯಾಪ್ ಮಾಡಿ';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'ನಿಮ್ಮ ಪ್ರಯಾಣದಲ್ಲಿ ಒಟ್ಟು $totalರಲ್ಲಿ $unlocked ಸಾಧನೆಗಳನ್ನು ಅನ್ಲಾಕ್ ಮಾಡಿದ್ದೀರಿ.';
  }

  @override
  String get remaining => 'ಉಳಿದಿದೆ';

  @override
  String get complete => 'ಪೂರ್ಣ';

  @override
  String get nextMilestone => 'ಮುಂದಿನ ಸಾಧನೆ';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% ಪೂರ್ಣ';
  }

  @override
  String get sobrietyMilestones => 'ಮದ್ಯರಹಿತ ಸಾಧನೆಗಳು';

  @override
  String get journeyBadges => 'ಪ್ರಯಾಣದ ಬ್ಯಾಡ್ಜ್‌ಗಳು';

  @override
  String get bronze => 'ಕಂಚು';

  @override
  String get silver => 'ಬೆಳ್ಳಿ';

  @override
  String get gold => 'ಚಿನ್ನ';

  @override
  String get platinum => 'ಪ್ಲಾಟಿನಂ';

  @override
  String get diamond => 'ವಜ್ರ';

  @override
  String get analyzingYourJourney => 'ನಿಮ್ಮ ಪ್ರಯಾಣವನ್ನು ವಿಶ್ಲೇಷಿಸಲಾಗುತ್ತಿದೆ...';

  @override
  String get aiCreatingSanctuary =>
      'ನಿಮಗಾಗಿ ವೈಯಕ್ತೀಕರಿಸಿದ ಚೇತರಿಕೆ ಸ್ಥಳವನ್ನು ನಮ್ಮ AI ರಚಿಸುತ್ತಿದೆ.';

  @override
  String get understandingHabits => 'ಅಭ್ಯಾಸಗಳನ್ನು ಅರ್ಥಮಾಡಿಕೊಳ್ಳಲಾಗುತ್ತಿದೆ...';

  @override
  String get calculatingBaseline => 'ನಿಮ್ಮ ಮೂಲಮಟ್ಟವನ್ನು ಲೆಕ್ಕಹಾಕಲಾಗುತ್ತಿದೆ...';

  @override
  String get personalizingPlan => 'ನಿಮ್ಮ ಯೋಜನೆಯನ್ನು ವೈಯಕ್ತೀಕರಿಸಲಾಗುತ್ತಿದೆ...';

  @override
  String get finalizingSanctuary =>
      'ನಿಮ್ಮ ಚೇತರಿಕೆ ಸ್ಥಳವನ್ನು ಅಂತಿಮಗೊಳಿಸಲಾಗುತ್ತಿದೆ...';

  @override
  String get creatingYourPlan => 'ನಿಮ್ಮ ಯೋಜನೆಯನ್ನು ರಚಿಸಲಾಗುತ್ತಿದೆ...';

  @override
  String get personalizedPlanError =>
      'ನಿಮ್ಮ ವೈಯಕ್ತೀಕರಿಸಿದ ಯೋಜನೆಯನ್ನು ರಚಿಸಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ. ದಯವಿಟ್ಟು ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get retry => 'ಮರುಪ್ರಯತ್ನಿಸಿ';

  @override
  String get breathInhale => 'ಉಸಿರೆಳೆದುಕೊಳ್ಳಿ';

  @override
  String get breathHold => 'ಹಿಡಿದುಕೊಳ್ಳಿ';

  @override
  String get breathExhale => 'ಉಸಿರು ಬಿಡಿ';

  @override
  String get breathDone => 'ಮುಗಿದಿದೆ';

  @override
  String get breathGreatJob => 'ಅದ್ಭುತ ಕೆಲಸ!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಸೆಷನ್‌ಗಳು ಇಂದು',
      one: '$count ಸೆಷನ್ ಇಂದು',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'ವ್ಯಾಯಾಮ ಮುಗಿಸಿ';

  @override
  String get done => 'ಮುಗಿದಿದೆ';

  @override
  String get noCopingTipsYet => 'ಇನ್ನೂ ಯಾವುದೇ ನಿಭಾಯಿಸುವ ಸಲಹೆಗಳಿಲ್ಲ';

  @override
  String get copingStrategiesWillAppear =>
      'ನಿಮ್ಮ ಚೇತರಿಕೆ ಯೋಜನೆ ರಚನೆಯಾದ ನಂತರ ನಿಮ್ಮ ವೈಯಕ್ತೀಕರಿಸಿದ ನಿಭಾಯಿಸುವ ತಂತ್ರಗಳು ಇಲ್ಲಿ ಕಾಣಿಸುತ್ತವೆ.';

  @override
  String get strategiesTailoredToTriggers =>
      'ನಿಮ್ಮ ಪ್ರಚೋದಕಗಳಿಗೆ ಹೊಂದಿಕೊಂಡ ತಂತ್ರಗಳು';

  @override
  String get cravingsPeakAndPass =>
      'ಕುಡಿಯಬೇಕೆಂಬ ಆಸೆಗಳು\nಉಕ್ಕಿ ಬಂದು ಕಳೆದುಹೋಗುತ್ತವೆ';

  @override
  String get rideTheWaveDescription =>
      'ಹೆಚ್ಚಿನ ಕುಡಿಯಬೇಕೆಂಬ ಆಸೆಗಳು 15 ನಿಮಿಷಗಳಲ್ಲಿ ಕಳೆದುಹೋಗುತ್ತವೆ. ನೀವು ಅದರಂತೆ ನಡೆದುಕೊಳ್ಳಬೇಕಾಗಿಲ್ಲ — ನಮ್ಮೊಂದಿಗೆ ಅದನ್ನು ದಾಟಿ.';

  @override
  String get stayWithIt => 'ಮುಂದುವರಿಯಿರಿ';

  @override
  String get youMadeIt => 'ನೀವು ಸಾಧಿಸಿದ್ದೀರಿ';

  @override
  String get readyWhenYouAre => 'ನೀವು ಸಿದ್ಧರಾದಾಗ';

  @override
  String get rideItAgain => 'ಮತ್ತೆ ದಾಟಿ';

  @override
  String get start15MinuteTimer => '15 ನಿಮಿಷಗಳ ಟೈಮರ್ ಪ್ರಾರಂಭಿಸಿ';

  @override
  String get rideTheWaveCompletedMessage =>
      'ನೀವು ಅಲೆಯನ್ನು ದಾಟಿದ್ದೀರಿ. ಅದು ನಿಜವಾದ ಶಕ್ತಿ. 💪';

  @override
  String get myProgress => 'ನನ್ನ ಪ್ರಗತಿ';

  @override
  String get weekLabel => 'ವಾರ';

  @override
  String get monthLabel => 'ತಿಂಗಳು';

  @override
  String get allLabel => 'ಎಲ್ಲಾ';

  @override
  String get daysSoberStatLabel => 'ಮದ್ಯರಹಿತ\nದಿನಗಳು';

  @override
  String get savedStatLabel => 'ಉಳಿಸಲಾಗಿದೆ';

  @override
  String get avoidedStatLabel => 'ತಪ್ಪಿಸಲಾಗಿದೆ';

  @override
  String get moodTrends => 'ಮನಸ್ಥಿತಿಯ ಪ್ರವೃತ್ತಿಗಳು';

  @override
  String get cravingsPattern => 'ಕುಡಿಯಬೇಕೆಂಬ ಆಸೆಯ ಮಾದರಿ';

  @override
  String get unlockLabel => 'ಅನ್ಲಾಕ್';

  @override
  String get unlockFullStats => 'ಸಂಪೂರ್ಣ ಅಂಕಿಅಂಶಗಳನ್ನು ಅನ್ಲಾಕ್ ಮಾಡಿ';

  @override
  String get premiumStatsMessage =>
      'ಮನಸ್ಥಿತಿಯ ಪ್ರವೃತ್ತಿಗಳು ಮತ್ತು ಕುಡಿಯಬೇಕೆಂಬ ಆಸೆಯ ಮಾದರಿಗಳು ಪ್ರೀಮಿಯಂ ವೈಶಿಷ್ಟ್ಯಗಳಾಗಿವೆ. ನಿಮ್ಮ ಸಂಪೂರ್ಣ ಅಂಕಿಅಂಶಗಳನ್ನು ನೋಡಲು ಅಪ್‌ಗ್ರೇಡ್ ಮಾಡಿ.';

  @override
  String get healthMilestonesWillAppear =>
      'ನಿಮ್ಮ ಆರೋಗ್ಯದ ಸಾಧನೆಗಳು ಇಲ್ಲಿ ಕಾಣಿಸುತ್ತವೆ.';

  @override
  String get healthMilestones => 'ಆರೋಗ್ಯದ ಸಾಧನೆಗಳು';

  @override
  String dayNumber(int day) {
    return '$dayನೇ ದಿನ';
  }

  @override
  String get soberLabel => 'ಮದ್ಯರಹಿತ';

  @override
  String get slipLabel => 'ಮತ್ತೆ ಕುಡಿದದ್ದು';

  @override
  String get noDataLabel => 'ಯಾವುದೇ ಡೇಟಾ ಇಲ್ಲ';

  @override
  String get milestone24Hours => '24 ಗಂಟೆಗಳು';

  @override
  String get milestoneOneWeek => 'ಒಂದು ವಾರ';

  @override
  String get milestoneOneMonth => 'ಒಂದು ತಿಂಗಳು';

  @override
  String get milestoneThreeMonths => 'ಮೂರು ತಿಂಗಳು';

  @override
  String get milestoneSixMonths => 'ಆರು ತಿಂಗಳು';

  @override
  String get milestoneOneYear => 'ಒಂದು ವರ್ಷ';

  @override
  String milestoneDayCount(int day) {
    return '$dayನೇ ದಿನದ ಸಾಧನೆ';
  }

  @override
  String get maybeLaterLabel => 'ಬಹುಶಃ ನಂತರ';

  @override
  String get cancelLabel => 'ರದ್ದುಮಾಡಿ';
}
