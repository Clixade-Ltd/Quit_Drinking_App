// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Khmer Central Khmer (`km`).
class AppLocalizationsKm extends AppLocalizations {
  AppLocalizationsKm([String locale = 'km']) : super(locale);

  @override
  String get skip => 'រំលង';

  @override
  String get continueButton => 'បន្ត';

  @override
  String get getStarted => 'ចាប់ផ្តើម';

  @override
  String get onboardingTitle1 => 'គ្រប់គ្រងជីវិតរបស់អ្នក';

  @override
  String get onboardingSubtitle1 =>
      'តាមដានដំណើររបស់អ្នក អបអរសាទររាល់សមិទ្ធផល និងកាន់តែមានសុខភាពល្អមួយថ្ងៃម្តងៗ។';

  @override
  String get onboardingTitle2 => 'ដៃគូស្តារនីតិសម្បទា AI របស់អ្នក';

  @override
  String get onboardingSubtitle2 =>
      'ទទួលបានការណែនាំផ្ទាល់ខ្លួន ទម្លាប់ដែលមានសុខភាពល្អ ការរំលឹកលើកទឹកចិត្ត និងរបាយការណ៍វឌ្ឍនភាពដែលរៀបចំតាមដំណើររបស់អ្នក។';

  @override
  String get goodMorning => 'អរុណសួស្តី';

  @override
  String get goodAfternoon => 'សួស្តីពេលរសៀល';

  @override
  String get goodEvening => 'សួស្តីពេលល្ងាច';

  @override
  String get goodNight => 'រាត្រីសួស្តី';

  @override
  String get embracingClarity => 'ស្វែងរកភាពច្បាស់លាស់ មួយថ្ងៃម្តងៗ។';

  @override
  String get streakLabel => 'ថ្ងៃជាប់គ្នា';

  @override
  String get goalLabel => 'គោលដៅ';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ថ្ងៃ',
      one: '$count ថ្ងៃ',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'គម្រោង Premium';

  @override
  String get premiumPlanSubtitle =>
      'ដោះសោបទពិសោធន៍ស្តារនីតិសម្បទាពេញលេញរបស់អ្នក';

  @override
  String get accountAndSupport => 'គណនី និងការគាំទ្រ';

  @override
  String get privacyPolicy => 'គោលការណ៍ឯកជនភាព';

  @override
  String get privacyPolicySubtitle =>
      'គ្រប់គ្រងការចែករំលែកទិន្នន័យ និងសុវត្ថិភាពគណនី';

  @override
  String get termsOfService => 'លក្ខខណ្ឌសេវាកម្ម';

  @override
  String get termsOfServiceSubtitle =>
      'សំណួរដែលសួរញឹកញាប់ ទាក់ទងមកយើង និងធនធាន';

  @override
  String get shareApp => 'ចែករំលែកកម្មវិធី';

  @override
  String get shareAppSubtitle => 'ចែករំលែកកម្មវិធីជាមួយមិត្តភក្តិរបស់អ្នក';

  @override
  String get resetData => 'កំណត់ទិន្នន័យឡើងវិញ';

  @override
  String get resetDataSubtitle => 'លុបអ្វីៗទាំងអស់ដែលបានរក្សាទុកនៅលើឧបករណ៍នេះ';

  @override
  String get resetAllDataTitle => 'កំណត់ទិន្នន័យទាំងអស់ឡើងវិញ?';

  @override
  String get resetAllDataMessage =>
      'វានឹងលុបអ្វីៗទាំងអស់ដែលបានរក្សាទុកនៅលើឧបករណ៍នេះ — ប្រវត្តិរូប កំណត់ហេតុ និងវឌ្ឍនភាព — ហើយមិនអាចត្រឡប់វិញបានទេ។';

  @override
  String get cancel => 'បោះបង់';

  @override
  String get reset => 'កំណត់ឡើងវិញ';

  @override
  String get chooseFromGallery => 'ជ្រើសពីវិចិត្រសាល';

  @override
  String get takePhoto => 'ថតរូប';

  @override
  String get removePhoto => 'លុបរូបថត';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'មិនអាចធ្វើបច្ចុប្បន្នភាពរូបថតបានទេ៖ $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'មិនអាចលុបរូបថតបានទេ៖ $error';
  }

  @override
  String get photoTooLarge =>
      'រូបថតនេះធំពេក ទោះបីបានបង្រួមក៏ដោយ — សូមសាកល្បងរូបថតផ្សេង។';

  @override
  String get unableToLoadProfile => 'មិនអាចផ្ទុកប្រវត្តិរូបរបស់អ្នកបានទេ';

  @override
  String get pleaseTryAgain => 'សូមព្យាយាមម្តងទៀត។';

  @override
  String get tryAgain => 'ព្យាយាមម្តងទៀត';

  @override
  String get profileNotFound => 'រកមិនឃើញប្រវត្តិរូប';

  @override
  String get refresh => 'ធ្វើឱ្យស្រស់';

  @override
  String get noProfileDataFound =>
      'មិនទាន់រកឃើញទិន្នន័យប្រវត្តិរូបនៅលើឧបករណ៍នេះទេ។';

  @override
  String couldNotResetData(String error) {
    return 'មិនអាចកំណត់ទិន្នន័យឡើងវិញបានទេ៖ $error';
  }

  @override
  String get navHome => 'ទំព័រដើម';

  @override
  String get navStats => 'ស្ថិតិ';

  @override
  String get navJournal => 'កំណត់ហេតុ';

  @override
  String get navBadges => 'ផ្លាកសញ្ញា';

  @override
  String get navProfile => 'ប្រវត្តិរូប';

  @override
  String featureComingSoon(String feature) {
    return '$feature នឹងមានក្នុងពេលឆាប់ៗនេះ។';
  }

  @override
  String get appWordmark => 'សុខភាពល្អ';

  @override
  String get appTitle => 'បញ្ឈប់ការផឹកស្រា';

  @override
  String get splashSubtitle =>
      'ចាប់ផ្តើមជំហានដំបូងឆ្ពោះទៅរក\nជីវិតគ្មានជាតិអាល់កុល';

  @override
  String get preparingJourney => 'កំពុងរៀបចំ\nដំណើររបស់អ្នក';

  @override
  String get taskMorningMeditation => 'សមាធិពេលព្រឹក (10 នាទី)';

  @override
  String get taskReadChapter => 'អានជំពូកទី 4 នៃ \"The Sober Diaries\"';

  @override
  String get taskEveningJournal => 'កំណត់ហេតុអំណរគុណពេលល្ងាច';

  @override
  String get close => 'បិទ';

  @override
  String get youAreDoingGreat => 'អ្នកកំពុងធ្វើបានល្អណាស់!';

  @override
  String get shareMilestone => 'ចែករំលែកសមិទ្ធផល';

  @override
  String shareMilestoneMessage(int days) {
    return 'ខ្ញុំស្ថិតនៅថ្ងៃទី $days នៃដំណើរស្តារនីតិសម្បទារបស់ខ្ញុំ! 💪';
  }

  @override
  String get shareMilestoneSubject => 'សមិទ្ធផលស្តារនីតិសម្បទារបស់ខ្ញុំ';

  @override
  String get weeklyReportReadyTitle =>
      'របាយការណ៍ប្រចាំសប្តាហ៍របស់អ្នករួចរាល់ហើយ';

  @override
  String get weeklyReportReadySubtitle =>
      'ចុចដើម្បីមើលថាសប្តាហ៍របស់អ្នកបានទៅយ៉ាងដូចម្តេច';

  @override
  String get howAreYouFeeling => 'តើអ្នកមានអារម្មណ៍យ៉ាងដូចម្តេច?';

  @override
  String get moodTough => 'ពិបាក';

  @override
  String get moodOkay => 'មធ្យម';

  @override
  String get moodGood => 'ល្អ';

  @override
  String get moneySaved => 'ប្រាក់ដែលបានសន្សំ';

  @override
  String get caloriesSaved => 'កាឡូរីដែលបានសន្សំ';

  @override
  String get healthScore => 'ពិន្ទុសុខភាព';

  @override
  String get drinksAvoided => 'ភេសជ្ជៈដែលបានជៀសវាង';

  @override
  String get estimated => 'ប៉ាន់ស្មាន';

  @override
  String get aiGenerated => 'បង្កើតដោយ AI';

  @override
  String get daysCapsLabel => 'ថ្ងៃ';

  @override
  String get todaysMotivation => 'ការលើកទឹកចិត្តថ្ងៃនេះ';

  @override
  String get defaultMotivationQuote =>
      'អ្នកបានរក្សាការប្តេជ្ញាចិត្តរបស់អ្នកដោយជោគជ័យ។ បន្តជិះលើរលកនៃការផ្លាស់ប្តូរវិជ្ជមាន។';

  @override
  String get talkToCoach => 'និយាយជាមួយគ្រូណែនាំ';

  @override
  String get havingACraving => 'ខ្ញុំកំពុងមានចំណង់ចង់ផឹក';

  @override
  String get unlockWeeklyReportsTitle => 'ដោះសោរបាយការណ៍ប្រចាំសប្តាហ៍';

  @override
  String get unlockWeeklyReportsMessage =>
      'មើលថ្ងៃដែលអ្នកមិនផឹកស្រា និន្នាការអារម្មណ៍ និងមតិកែលម្អ AI ផ្ទាល់ខ្លួនរៀងរាល់សប្តាហ៍។ ដំឡើងទៅ Premium ដើម្បីដោះសោ។';

  @override
  String get maybeLater => 'ប្រហែលជាពេលក្រោយ';

  @override
  String get upgrade => 'ដំឡើង';

  @override
  String get weeklyReportTitle => 'របាយការណ៍ប្រចាំសប្តាហ៍';

  @override
  String get weeklyReportsPremiumTitle =>
      'របាយការណ៍ប្រចាំសប្តាហ៍គឺជាមុខងារ Premium';

  @override
  String get weeklyReportsPremiumMessage =>
      'មើលថ្ងៃដែលអ្នកមិនផឹកស្រា និន្នាការអារម្មណ៍ ចំណង់ចង់ផឹក និងមតិកែលម្អ AI ផ្ទាល់ខ្លួនរៀងរាល់សប្តាហ៍។';

  @override
  String get upgradeToPremium => 'ដំឡើងទៅ Premium';

  @override
  String get couldNotGenerateReport =>
      'មិនអាចបង្កើតរបាយការណ៍របស់អ្នកនៅពេលនេះបានទេ។';

  @override
  String get tryAgainLower => 'ព្យាយាមម្តងទៀត';

  @override
  String get statSoberDays => 'ថ្ងៃមិនផឹកស្រា';

  @override
  String get statAvgMood => 'អារម្មណ៍ជាមធ្យម';

  @override
  String get statCravings => 'ចំណង់ចង់ផឹក';

  @override
  String get statMoneySaved => 'ប្រាក់ដែលបានសន្សំ';

  @override
  String get coachFeedback => 'មតិកែលម្អពីគ្រូណែនាំ';

  @override
  String get journalInsights => 'ការយល់ដឹងពីកំណត់ហេតុ';

  @override
  String get next => 'បន្ទាប់';

  @override
  String get question1Title => 'តើគោលដៅរបស់អ្នកជាអ្វី?';

  @override
  String get question1Subtitle => 'ជ្រើសរើសគោលដៅដែលសំខាន់\nបំផុតសម្រាប់អ្នក';

  @override
  String get goalQuitCompletely => 'ឈប់ទាំងស្រុង';

  @override
  String get goalReduceDrinking => 'កាត់បន្ថយការផឹក';

  @override
  String get goalTakeABreak => 'សម្រាកពីការផឹក';

  @override
  String get goalBuildHealthierHabits => 'បង្កើតទម្លាប់ដែលមានសុខភាពល្អ';

  @override
  String get question3Title => 'ប្រាប់យើងអំពី\nទម្លាប់ប្រចាំថ្ងៃរបស់អ្នក';

  @override
  String get drinksPerWeek => 'ភេសជ្ជៈក្នុងមួយសប្តាហ៍';

  @override
  String get moneySpentPerWeek => 'ប្រាក់ចំណាយក្នុងមួយសប្តាហ៍';

  @override
  String get drinkingLevel => 'កម្រិតនៃការផឹក';

  @override
  String get triggersLabel => 'កត្តាជំរុញ';

  @override
  String get levelSocial => 'សង្គម';

  @override
  String get levelRegular => 'ទៀងទាត់';

  @override
  String get levelHeavy => 'ច្រើន';

  @override
  String get levelDependent => 'ពឹងផ្អែក';

  @override
  String get triggerStress => 'ភាពតានតឹង';

  @override
  String get triggerLoneliness => 'ភាពឯកា';

  @override
  String get triggerHabit => 'ទម្លាប់';

  @override
  String get triggerSadness => 'ភាពសោកសៅ';

  @override
  String get triggerAnger => 'កំហឹង';

  @override
  String get triggerBoredom => 'ភាពធុញទ្រាន់';

  @override
  String get triggerSocialPressure => 'សម្ពាធសង្គម';

  @override
  String get triggerCelebration => 'ការអបអរសាទរ';

  @override
  String get triggerSleepProblems => 'បញ្ហាដំណេក';

  @override
  String get triggerWorkPressure => 'សម្ពាធការងារ';

  @override
  String get question4Title => 'ហេតុអ្វីអ្នកចង់ផ្លាស់ប្តូរ?';

  @override
  String get question4Subtitle => 'ហេតុផលរបស់អ្នកនឹងជួយជំរុញទឹកចិត្តអ្នក។';

  @override
  String get reasonImproveHealth => 'កែលម្អសុខភាពរបស់ខ្ញុំ';

  @override
  String get reasonSaveMoney => 'សន្សំប្រាក់';

  @override
  String get reasonFamily => 'គ្រួសារ';

  @override
  String get reasonBetterSleep => 'ដំណេកកាន់តែល្អ';

  @override
  String get reasonMentalClarity => 'ភាពច្បាស់លាស់ផ្លូវចិត្ត';

  @override
  String get reasonFitness => 'កាយសម្បទា';

  @override
  String get reasonSelfRespect => 'ការគោរពខ្លួនឯង';

  @override
  String get reasonCareer => 'អាជីព';

  @override
  String get milestoneUnlockedLabel => 'សមិទ្ធផលត្រូវបានដោះសោ';

  @override
  String incredibleNamePrefix(String name) {
    return 'អស្ចារ្យណាស់, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return 'បានសន្សំ $amount';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return 'បានជៀសវាង $count';
  }

  @override
  String get shareMyMilestone => 'ចែករំលែកសមិទ្ធផលរបស់ខ្ញុំ';

  @override
  String get milestoneImageShareError =>
      'មិនអាចបង្កើតរូបភាពសមិទ្ធផលបានទេ។ សូមព្យាយាមម្តងទៀត។';

  @override
  String get dailyCheckInTitle => 'ការឆែកប្រចាំថ្ងៃ';

  @override
  String get howAreYouFeelingToday => 'ថ្ងៃនេះអ្នកមានអារម្មណ៍យ៉ាងដូចម្តេច?';

  @override
  String get honestAnswerHelp =>
      'ចម្លើយស្មោះត្រង់របស់អ្នកជួយឱ្យយើងគាំទ្រអ្នកបានកាន់តែប្រសើរ';

  @override
  String get didYouDrinkToday => 'តើថ្ងៃនេះអ្នកបានផឹកស្រាទេ?';

  @override
  String get noLabel => 'ទេ';

  @override
  String get yesLabel => 'បាទ/ចាស';

  @override
  String get cravingLevelNow => 'តើចំណង់ចង់ផឹករបស់អ្នកឥឡូវនេះខ្លាំងកម្រិតណា?';

  @override
  String get anythingOnMind => 'តើមានអ្វីនៅក្នុងចិត្តរបស់អ្នកទេ?';

  @override
  String get optionalLabel => '(ជាជម្រើស)';

  @override
  String get dailyNoteHint => 'សរសេរអំពីថ្ងៃរបស់អ្នក កត្តាជំរុញ ជ័យជម្នះ...';

  @override
  String get alreadyCheckedInToday => 'បានឆែកថ្ងៃនេះរួចហើយ';

  @override
  String get saveCheckIn => 'រក្សាទុកការឆែក';

  @override
  String get checkInsHelpTrack => 'ការឆែកជួយតាមដានវឌ្ឍនភាពរបស់អ្នកតាមពេលវេលា';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'អ្នកបានបញ្ចប់ការឆែកថ្ងៃនេះរួចហើយ។';

  @override
  String get pleaseAnswerBothQuestions => 'សូមឆ្លើយសំណួរទាំងពីរខាងលើជាមុនសិន';

  @override
  String get checkInSaved => 'បានរក្សាទុកការឆែក';

  @override
  String get cravingNone => 'គ្មាន';

  @override
  String get cravingLow => 'ទាប';

  @override
  String get cravingMedium => 'មធ្យម';

  @override
  String get cravingStrong => 'ខ្លាំង';

  @override
  String get moodBad => 'មិនល្អ';

  @override
  String get moodLow => 'ទាប';

  @override
  String get moodGreat => 'ល្អណាស់';

  @override
  String get sosSupportTitle => 'ជំនួយ SOS';

  @override
  String notAloneMessage(String name) {
    return 'អ្នកមិននៅម្នាក់ឯងទេ, $name';
  }

  @override
  String get cravingsPassMessage =>
      'ចំណង់ចង់ផឹកនឹងកន្លងផុតទៅ។ ជ្រើសរើសអ្វីមួយខាងក្រោមដើម្បីជួយអ្នកឆ្លងកាត់ពេលនេះ។';

  @override
  String get breathingExercise => 'លំហាត់ដកដង្ហើម';

  @override
  String get breathingExerciseSubtitle =>
      'បច្ចេកទេស 4-7-8 ដែលមានការណែនាំ 2 នាទី';

  @override
  String get rideTheWave => 'ឆ្លងកាត់រលក';

  @override
  String get rideTheWaveSubtitle =>
      'កម្មវិធីកំណត់ពេល 15 នាទី — ចំណង់ចង់ផឹកតែងតែកន្លងផុតទៅ';

  @override
  String get copingTips => 'គន្លឹះដោះស្រាយ';

  @override
  String get copingTipsSubtitle =>
      'យុទ្ធសាស្ត្រផ្ទាល់ខ្លួនសម្រាប់កត្តាជំរុញរបស់អ្នក';

  @override
  String get talkToAiCoach => 'និយាយជាមួយគ្រូណែនាំ AI';

  @override
  String get talkToAiCoachSubtitle => 'ជជែកជាមួយដៃគូស្តារនីតិសម្បទារបស់អ្នក';

  @override
  String get callSomeone => 'ហៅទៅនរណាម្នាក់';

  @override
  String get callSomeoneSubtitle => 'ទាក់ទងអ្នកដែលអ្នកទុកចិត្ត';

  @override
  String get contactsPermissionNeeded =>
      'ត្រូវការការអនុញ្ញាតចូលប្រើទំនាក់ទំនងដើម្បីហៅទៅអ្នកណាម្នាក់។';

  @override
  String get beatenCravingsPrefix => 'អ្នកបានយកឈ្នះចំណង់ចង់ផឹក ';

  @override
  String beatenCravingsCount(int count) {
    return '$count ដង';
  }

  @override
  String get beatenCravingsSuffix => ' ពីមុន។ អ្នកអាចធ្វើវាម្តងទៀតបាន។';

  @override
  String get tellUsAboutYourself => 'ប្រាប់យើងអំពីខ្លួនអ្នក';

  @override
  String get detailsSubtitle =>
      'ព័ត៌មាននេះជួយយើងកំណត់ដំណើរស្តារនីតិសម្បទារបស់អ្នកឱ្យសមស្រប និងផ្តល់ការយល់ដឹងត្រឹមត្រូវ។';

  @override
  String get nameLabel => 'ឈ្មោះ';

  @override
  String get nameHint => 'ឧ., Alex Rivers';

  @override
  String get ageLabel => 'អាយុ';

  @override
  String get ageHint => 'ឧ., 32';

  @override
  String get sexAssignedAtBirth => 'ភេទដែលបានកំណត់នៅពេលកើត';

  @override
  String get sexFemale => 'ស្រី';

  @override
  String get sexMale => 'ប្រុស';

  @override
  String get heightLabel => 'កម្ពស់';

  @override
  String get weightLabel => 'ទម្ងន់';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'ដល់កម្រិតប្រចាំថ្ងៃ';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'អ្នកបានប្រើសារឥតគិតថ្លៃទាំង $limit សម្រាប់ថ្ងៃនេះហើយ។ ដំឡើងទៅ Premium ដើម្បីជជែកជាមួយគ្រូណែនាំដោយគ្មានដែនកំណត់។';
  }

  @override
  String get coachConnectError =>
      'ខ្ញុំមិនអាចភ្ជាប់បាននៅពេលនេះទេ។ សូមព្យាយាមម្តងទៀតបន្តិចក្រោយ។';

  @override
  String get clearConversationTitle => 'លុបការសន្ទនា?';

  @override
  String get clearConversationMessage =>
      'វានឹងលុបប្រវត្តិជជែកជាមួយគ្រូណែនាំរបស់អ្នកជាអចិន្ត្រៃយ៍។';

  @override
  String get clearLabel => 'លុប';

  @override
  String get recoveryCoachTitle => 'គ្រូណែនាំការស្តារនីតិសម្បទា';

  @override
  String get onlineLabel => 'អនឡាញ';

  @override
  String get clearConversationMenuItem => 'លុបការសន្ទនា';

  @override
  String chatGreeting(String name) {
    return 'សួស្តី $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'អ្នកស្ថិតនៅថ្ងៃទី $days នៃដំណើររបស់អ្នក។ ខ្ញុំនៅទីនេះគ្រប់ពេលដែលអ្នកចង់និយាយ។';
  }

  @override
  String get quickPromptsLabel => 'សំណួររហ័ស';

  @override
  String get promptCravingLabel => 'កំពុងមានចំណង់ចង់ផឹក';

  @override
  String get promptCravingSubtitle => 'ធ្វើឱ្យចិត្តស្ងប់យ៉ាងឆាប់រហ័ស';

  @override
  String get promptMotivationLabel => 'ត្រូវការការលើកទឹកចិត្ត';

  @override
  String get promptMotivationSubtitle => 'ការជំរុញនៅពេលពិបាក';

  @override
  String get promptSocialLabel => 'ស្ថានភាពសង្គម';

  @override
  String get promptSocialSubtitle => 'ដោះស្រាយការជួបជុំ';

  @override
  String get promptSlippedLabel => 'ខ្ញុំបានភ្លាត់';

  @override
  String get promptSlippedSubtitle => 'គ្មានការវិនិច្ឆ័យ មានតែការគាំទ្រ';

  @override
  String get typeMessageHint => 'វាយសារ...';

  @override
  String get editProfileTitle => 'កែសម្រួលប្រវត្តិរូប';

  @override
  String couldNotSaveProfile(String error) {
    return 'មិនអាចរក្សាទុកប្រវត្តិរូបបានទេ៖ $error';
  }

  @override
  String get heightCmLabel => 'កម្ពស់ (សម.)';

  @override
  String get weightKgLabel => 'ទម្ងន់ (គីឡូក្រាម)';

  @override
  String get saveChangesLabel => 'រក្សាទុកការផ្លាស់ប្តូរ';

  @override
  String get premiumBadgeLabel => 'PREMIUM';

  @override
  String get featureAdvancedInsights => 'ការយល់ដឹង និងការវិភាគកម្រិតខ្ពស់';

  @override
  String get featureUnlimitedJournal => 'កំណត់ហេតុគ្មានដែនកំណត់';

  @override
  String get featureUnlimitedChat => 'ជជែកជាមួយគ្រូណែនាំ AI គ្មានដែនកំណត់';

  @override
  String get featureCommunityGroups => 'ក្រុមសហគមន៍ផ្តាច់មុខ';

  @override
  String get featurePrioritySupport => 'ជំនួយពីអ្នកជំនាញអាទិភាព';

  @override
  String get featureThemePacks => 'កញ្ចប់រូបរាងផ្ទាល់ខ្លួន';

  @override
  String get featureDataExport => 'នាំចេញទិន្នន័យ';

  @override
  String get featureAdFree => 'បទពិសោធន៍គ្មានការផ្សាយពាណិជ្ជកម្ម';

  @override
  String get premiumMemberTitle => 'អ្នកគឺជាសមាជិក Premium';

  @override
  String get unlockFullRecoveryTitle => 'ដោះសោបទពិសោធន៍\nស្តារនីតិសម្បទាពេញលេញ';

  @override
  String get premiumMemberSubtitle =>
      'អរគុណសម្រាប់ការគាំទ្រដំណើរស្តារនីតិសម្បទារបស់អ្នក — មុខងារ Premium ខាងក្រោមទាំងអស់ត្រូវបានដោះសោ។';

  @override
  String get premiumJoinSubtitle =>
      'ចូលរួមជាមួយមនុស្សរាប់ពាន់នាក់ដែលកំពុង\nពន្លឿនដំណើរស្តារនីតិសម្បទារបស់ពួកគេជាមួយ\nឧបករណ៍ Premium និងការគាំទ្រផ្ទាល់ខ្លួន។';

  @override
  String get monthlyPlanLabel => 'ប្រចាំខែ';

  @override
  String get perMonthSuffix => '/ខែ';

  @override
  String get cancelAnytimeLabel => 'បោះបង់បានគ្រប់ពេល';

  @override
  String get yearlyPlanLabel => 'ប្រចាំឆ្នាំ';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'គិតថ្លៃប្រចាំឆ្នាំ $amount';
  }

  @override
  String get bestValueLabel => 'តម្លៃល្អបំផុត';

  @override
  String get alreadyPremiumLabel => 'អ្នកជា Premium ✓';

  @override
  String get startPremiumLabel => 'ចាប់ផ្តើម Premium';

  @override
  String get manageSubscriptionLabel =>
      'គ្រប់គ្រង ឬបោះបង់ពីការកំណត់ការជាវរបស់ឧបករណ៍អ្នក។';

  @override
  String get noCommitmentLabel => 'គ្មានការប្តេជ្ញាចិត្ត។ បោះបង់បានគ្រប់ពេល។';

  @override
  String get continueFreePlanLabel => 'បន្តជាមួយគម្រោងឥតគិតថ្លៃ';

  @override
  String get backToHomeLabel => 'ត្រឡប់ទៅទំព័រដើម';

  @override
  String get cancelPremiumLabel => 'បោះបង់ Premium';

  @override
  String get cancelPremiumTitle => 'បោះបង់ Premium?';

  @override
  String get cancelPremiumMessage =>
      'អ្នកនឹងបាត់បង់សិទ្ធិប្រើកំណត់ហេតុគ្មានដែនកំណត់ ការជជែកជាមួយគ្រូណែនាំគ្មានដែនកំណត់ ការយល់ដឹងពីស្ថិតិ និងរបាយការណ៍ប្រចាំសប្តាហ៍។ អ្នកអាចជាវម្តងទៀតបានគ្រប់ពេល។';

  @override
  String get keepPremiumLabel => 'រក្សា Premium';

  @override
  String get nowPremiumMessage =>
      'ឥឡូវនេះអ្នកជា Premium ហើយ! រីករាយជាមួយបទពិសោធន៍ស្តារនីតិសម្បទាពេញលេញរបស់អ្នក។';

  @override
  String get premiumCancelledMessage =>
      'Premium ត្រូវបានបោះបង់។ អ្នកត្រឡប់ទៅគម្រោងឥតគិតថ្លៃវិញ។';

  @override
  String get termsOfUseLabel => 'លក្ខខណ្ឌប្រើប្រាស់';

  @override
  String get navHomeLabel => 'ទំព័រដើម';

  @override
  String get navStatsLabel => 'ស្ថិតិ';

  @override
  String get navJournalLabel => 'កំណត់ហេតុ';

  @override
  String get navBadgesLabel => 'ផ្លាកសញ្ញា';

  @override
  String get navProfileLabel => 'ប្រវត្តិរូប';

  @override
  String get recoveryGoalsTitle => 'គោលដៅស្តារនីតិសម្បទា';

  @override
  String get drinksPerWeekLabel => 'ភេសជ្ជៈក្នុងមួយសប្តាហ៍';

  @override
  String get quitReasonsLabel => 'មូលហេតុចង់ឈប់';

  @override
  String get quitReasonsHelperText => 'បំបែកមូលហេតុជាច្រើនដោយសញ្ញាក្បៀស។';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'មិនអាចរក្សាទុកគោលដៅស្តារនីតិសម្បទាបានទេ៖ $error';
  }

  @override
  String get goalHint => 'ឧ., ឈប់ទាំងស្រុង';

  @override
  String get drinksPerWeekHint => 'ឧ., 12';

  @override
  String get quitReasonsHint => 'ឧ., សុខភាព គ្រួសារ ប្រាក់';

  @override
  String get todaysPrompt => 'សំណួរថ្ងៃនេះ';

  @override
  String get defaultJournalPrompt => 'តើមានអ្វីនៅក្នុងគំនិតរបស់អ្នកថ្ងៃនេះ?';

  @override
  String get aiJournalInsights => 'ការយល់ដឹងពីកំណត់ហេតុ AI';

  @override
  String get unlockJournalInsightsMessage =>
      'ដោះសោលំនាំប្រចាំសប្តាហ៍ និន្នាការអារម្មណ៍ និងការយល់ដឹងផ្ទាល់ខ្លួនពីកំណត់ហេតុរបស់អ្នក។';

  @override
  String get notEnoughJournalData =>
      'មិនទាន់មានទិន្នន័យគ្រប់គ្រាន់ទេ — សរសេរកំណត់ហេតុមួយចំនួនក្នុងសប្តាហ៍នេះ ហើយពិនិត្យម្តងទៀត។';

  @override
  String get openEntry => 'បើក';

  @override
  String get editEntry => 'កែសម្រួល';

  @override
  String get deleteEntry => 'លុប';

  @override
  String get searchJournalEntries => 'ស្វែងរកកំណត់ហេតុ...';

  @override
  String get writeNewEntry => 'សរសេរកំណត់ហេតុថ្មី';

  @override
  String get recentEntries => 'កំណត់ហេតុថ្មីៗ';

  @override
  String get noJournalEntriesYet =>
      'មិនទាន់មានកំណត់ហេតុទេ — សរសេរការឆ្លុះបញ្ចាំងដំបូងរបស់អ្នកខាងលើ។';

  @override
  String get noEntriesMatchFilters =>
      'គ្មានកំណត់ហេតុដែលត្រូវនឹងតម្រងរបស់អ្នកទេ។';

  @override
  String get weeklyJournalLimitReached => 'ដល់កម្រិតប្រចាំសប្តាហ៍';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'អ្នកបានប្រើកំណត់ហេតុឥតគិតថ្លៃទាំង $limit សម្រាប់សប្តាហ៍នេះហើយ។ ដំឡើងទៅ Premium ដើម្បីប្រើកំណត់ហេតុគ្មានដែនកំណត់។';
  }

  @override
  String get newEntry => 'កំណត់ហេតុថ្មី';

  @override
  String get writeYourThoughts => 'សរសេរគំនិតរបស់អ្នក';

  @override
  String get saveEntry => 'រក្សាទុកកំណត់ហេតុ';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return 'នៅសល់ $remaining ក្នុងចំណោម $limit កំណត់ហេតុឥតគិតថ្លៃសម្រាប់សប្តាហ៍នេះ';
  }

  @override
  String get deleteEntryQuestion => 'លុបកំណត់ហេតុ?';

  @override
  String get deleteEntryConfirmation =>
      'កំណត់ហេតុនេះនឹងត្រូវបានលុបជាអចិន្ត្រៃយ៍។ វាមិនអាចត្រឡប់វិញបានទេ។';

  @override
  String get journalEntryNotFound => 'រកមិនឃើញកំណត់ហេតុ';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'កំណត់ហេតុនេះប្រហែលជាត្រូវបានលុបហើយ។';

  @override
  String get goBack => 'ត្រឡប់ក្រោយ';

  @override
  String get journalEntryTitle => 'កំណត់ហេតុ';

  @override
  String get moodStruggling => 'កំពុងជួបការលំបាក';

  @override
  String get moodUnwell => 'មិនស្រួល';

  @override
  String get moodNeutral => 'អព្យាក្រឹត';

  @override
  String get whatHappenedToday => 'តើថ្ងៃនេះមានអ្វីកើតឡើង?';

  @override
  String get trigger => 'កត្តាជំរុញ';

  @override
  String get whatHelped => 'អ្វីដែលបានជួយ';

  @override
  String get whatIllTryNextTime => 'អ្វីដែលខ្ញុំនឹងសាកល្បងលើកក្រោយ';

  @override
  String get journalPrivacyMessage =>
      'ការឆ្លុះបញ្ចាំងរបស់អ្នកជាឯកជន ហើយត្រូវបានរក្សាទុកក្នុងកំណត់ហេតុរបស់អ្នក។';

  @override
  String get unlocked => 'បានដោះសោ';

  @override
  String daysLeft(int count) {
    return 'នៅសល់ $count ថ្ងៃ';
  }

  @override
  String daysCount(int count) {
    return '$count ថ្ងៃ';
  }

  @override
  String get firstReflection => 'ការឆ្លុះបញ្ចាំង\nដំបូង';

  @override
  String get oneJournalEntry => 'កំណត់ហេតុ 1';

  @override
  String get openBook => 'បើកសៀវភៅ';

  @override
  String get tenJournalEntries => 'កំណត់ហេតុ 10';

  @override
  String get dedicatedWriter => 'អ្នកសរសេរ\nឧស្សាហ៍ព្យាយាម';

  @override
  String get thirtyJournalEntries => 'កំណត់ហេតុ 30';

  @override
  String get firstConversation => 'ការសន្ទនា\nដំបូង';

  @override
  String get oneAiCoachChat => 'ជជែកជាមួយគ្រូ AI 1 ដង';

  @override
  String get keepTalking => 'បន្តនិយាយ';

  @override
  String get fiveConversations => 'ការសន្ទនា 5';

  @override
  String get coachCompanion => 'ដៃគូ\nគ្រូណែនាំ';

  @override
  String get twentyConversations => 'ការសន្ទនា 20';

  @override
  String get checkInHabit => 'ទម្លាប់\nឆែក';

  @override
  String get sevenCheckIns => 'ការឆែក 7';

  @override
  String get consistencyPro => 'អ្នកជំនាញ\nភាពទៀងទាត់';

  @override
  String get thirtyCheckIns => 'ការឆែក 30';

  @override
  String get dedicatedJourney => 'ដំណើរ\nឧស្សាហ៍ព្យាយាម';

  @override
  String get hundredCheckIns => 'ការឆែក 100';

  @override
  String get goalGetter => 'អ្នកសម្រេចគោលដៅ';

  @override
  String get threeGoalsCompleted => 'បានបញ្ចប់គោលដៅ 3';

  @override
  String get goalAchiever => 'អ្នកសម្រេច\nគោលដៅ';

  @override
  String get tenGoalsCompleted => 'បានបញ្ចប់គោលដៅ 10';

  @override
  String get firstSavings => 'ការសន្សំ\nដំបូង';

  @override
  String get fiveHundredSaved => 'បានសន្សំ \$500';

  @override
  String get smartSaver => 'អ្នកសន្សំឆ្លាតវៃ';

  @override
  String get oneThousandSaved => 'បានសន្សំ \$1,000';

  @override
  String get bigSaver => 'អ្នកសន្សំធំ';

  @override
  String get fiveThousandSaved => 'បានសន្សំ \$5,000';

  @override
  String currencyProgress(String current, String target) {
    return '\$$current ក្នុងចំណោម \$$target';
  }

  @override
  String countProgress(int current, int target) {
    return '$current ក្នុងចំណោម $target';
  }

  @override
  String get firstMilestoneWaiting =>
      'បន្តទៅមុខ — សមិទ្ធផលដំបូងរបស់អ្នកកំពុងរង់ចាំ!';

  @override
  String get badgesAndMilestones => 'ផ្លាកសញ្ញា និងសមិទ្ធផល';

  @override
  String get yourMilestoneJourney => 'ដំណើរសមិទ្ធផលរបស់អ្នក';

  @override
  String milestonesAchieved(int count) {
    return 'សម្រេចបាន $count សមិទ្ធផល។\nចុចដើម្បីមើល';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'អ្នកបានដោះសោ $unlocked ក្នុងចំណោម $total សមិទ្ធផលក្នុងដំណើររបស់អ្នក។';
  }

  @override
  String get remaining => 'នៅសល់';

  @override
  String get complete => 'បានបញ្ចប់';

  @override
  String get nextMilestone => 'សមិទ្ធផលបន្ទាប់';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% បានសម្រេច';
  }

  @override
  String get sobrietyMilestones => 'សមិទ្ធផលមិនផឹកស្រា';

  @override
  String get journeyBadges => 'ផ្លាកសញ្ញាដំណើរ';

  @override
  String get bronze => 'សំរឹទ្ធ';

  @override
  String get silver => 'ប្រាក់';

  @override
  String get gold => 'មាស';

  @override
  String get platinum => 'ផ្លាទីន';

  @override
  String get diamond => 'ពេជ្រ';

  @override
  String get analyzingYourJourney => 'កំពុងវិភាគដំណើររបស់អ្នក...';

  @override
  String get aiCreatingSanctuary =>
      'AI របស់យើងកំពុងបង្កើតកន្លែងស្តារនីតិសម្បទាផ្ទាល់ខ្លួនរបស់អ្នក។';

  @override
  String get understandingHabits => 'កំពុងយល់ដឹងអំពីទម្លាប់...';

  @override
  String get calculatingBaseline => 'កំពុងគណនាកម្រិតមូលដ្ឋានរបស់អ្នក...';

  @override
  String get personalizingPlan => 'កំពុងកំណត់ផែនការរបស់អ្នកតាមបុគ្គល...';

  @override
  String get finalizingSanctuary =>
      'កំពុងបញ្ចប់កន្លែងស្តារនីតិសម្បទារបស់អ្នក...';

  @override
  String get creatingYourPlan => 'កំពុងបង្កើតផែនការរបស់អ្នក...';

  @override
  String get personalizedPlanError =>
      'យើងមិនអាចបង្កើតផែនការផ្ទាល់ខ្លួនរបស់អ្នកបានទេ។ សូមព្យាយាមម្តងទៀត។';

  @override
  String get retry => 'ព្យាយាមម្តងទៀត';

  @override
  String get breathInhale => 'ដកដង្ហើមចូល';

  @override
  String get breathHold => 'ទប់';

  @override
  String get breathExhale => 'ដកដង្ហើមចេញ';

  @override
  String get breathDone => 'រួចរាល់';

  @override
  String get breathGreatJob => 'ធ្វើបានល្អណាស់!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count វគ្គថ្ងៃនេះ',
      one: '$count វគ្គថ្ងៃនេះ',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'បញ្ចប់លំហាត់';

  @override
  String get done => 'រួចរាល់';

  @override
  String get noCopingTipsYet => 'មិនទាន់មានគន្លឹះដោះស្រាយទេ';

  @override
  String get copingStrategiesWillAppear =>
      'យុទ្ធសាស្ត្រដោះស្រាយផ្ទាល់ខ្លួនរបស់អ្នកនឹងបង្ហាញនៅទីនេះ នៅពេលផែនការស្តារនីតិសម្បទារបស់អ្នកបញ្ចប់ការបង្កើត។';

  @override
  String get strategiesTailoredToTriggers =>
      'យុទ្ធសាស្ត្រដែលសម្របតាមកត្តាជំរុញរបស់អ្នក';

  @override
  String get cravingsPeakAndPass => 'ចំណង់ចង់ផឹកកើនដល់កំពូល\nហើយកន្លងផុតទៅ';

  @override
  String get rideTheWaveDescription =>
      'ចំណង់ចង់ផឹកភាគច្រើនកន្លងផុតទៅក្នុងរយៈពេល 15 នាទី។ អ្នកមិនចាំបាច់ធ្វើតាមវាទេ — គ្រាន់តែឆ្លងកាត់វាជាមួយយើង។';

  @override
  String get stayWithIt => 'បន្តនៅជាមួយវា';

  @override
  String get youMadeIt => 'អ្នកបានធ្វើបាន';

  @override
  String get readyWhenYouAre => 'នៅពេលអ្នករួចរាល់';

  @override
  String get rideItAgain => 'ឆ្លងកាត់ម្តងទៀត';

  @override
  String get start15MinuteTimer => 'ចាប់ផ្តើមកម្មវិធីកំណត់ពេល 15 នាទី';

  @override
  String get rideTheWaveCompletedMessage =>
      'អ្នកបានឆ្លងកាត់រលកហើយ។ នោះគឺជាកម្លាំងពិតប្រាកដ។ 💪';

  @override
  String get myProgress => 'វឌ្ឍនភាពរបស់ខ្ញុំ';

  @override
  String get weekLabel => 'សប្តាហ៍';

  @override
  String get monthLabel => 'ខែ';

  @override
  String get allLabel => 'ទាំងអស់';

  @override
  String get daysSoberStatLabel => 'ថ្ងៃ\nមិនផឹកស្រា';

  @override
  String get savedStatLabel => 'បានសន្សំ';

  @override
  String get avoidedStatLabel => 'បានជៀសវាង';

  @override
  String get moodTrends => 'និន្នាការអារម្មណ៍';

  @override
  String get cravingsPattern => 'លំនាំចំណង់ចង់ផឹក';

  @override
  String get unlockLabel => 'ដោះសោ';

  @override
  String get unlockFullStats => 'ដោះសោស្ថិតិពេញលេញ';

  @override
  String get premiumStatsMessage =>
      'និន្នាការអារម្មណ៍ និងលំនាំចំណង់ចង់ផឹកគឺជាមុខងារ Premium។ ដំឡើងដើម្បីមើលស្ថិតិពេញលេញរបស់អ្នក។';

  @override
  String get healthMilestonesWillAppear =>
      'សមិទ្ធផលសុខភាពរបស់អ្នកនឹងបង្ហាញនៅទីនេះ។';

  @override
  String get healthMilestones => 'សមិទ្ធផលសុខភាព';

  @override
  String dayNumber(int day) {
    return 'ថ្ងៃទី $day';
  }

  @override
  String get soberLabel => 'មិនផឹកស្រា';

  @override
  String get slipLabel => 'ភ្លាត់ផឹក';

  @override
  String get noDataLabel => 'គ្មានទិន្នន័យ';

  @override
  String get milestone24Hours => '24 ម៉ោង';

  @override
  String get milestoneOneWeek => 'មួយសប្តាហ៍';

  @override
  String get milestoneOneMonth => 'មួយខែ';

  @override
  String get milestoneThreeMonths => 'បីខែ';

  @override
  String get milestoneSixMonths => 'ប្រាំមួយខែ';

  @override
  String get milestoneOneYear => 'មួយឆ្នាំ';

  @override
  String milestoneDayCount(int day) {
    return 'សមិទ្ធផលថ្ងៃទី $day';
  }

  @override
  String get maybeLaterLabel => 'ប្រហែលជានៅពេលក្រោយ';

  @override
  String get cancelLabel => 'បោះបង់';
}
