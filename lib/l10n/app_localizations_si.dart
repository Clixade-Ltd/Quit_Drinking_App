// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Sinhala Sinhalese (`si`).
class AppLocalizationsSi extends AppLocalizations {
  AppLocalizationsSi([String locale = 'si']) : super(locale);

  @override
  String get skip => 'මඟහරින්න';

  @override
  String get continueButton => 'ඉදිරියට';

  @override
  String get getStarted => 'ආරම්භ කරන්න';

  @override
  String get onboardingTitle1 => 'ඔබේ ජීවිතය පාලනය කරගන්න';

  @override
  String get onboardingSubtitle1 =>
      'ඔබේ ගමන නිරීක්ෂණය කරන්න, සෑම ජයග්‍රහණයක්ම සමරන්න, දිනෙන් දින සෞඛ්‍ය සම්පන්න වන්න.';

  @override
  String get onboardingTitle2 => 'ඔබේ AI ප්‍රතිසාධන සහකරු';

  @override
  String get onboardingSubtitle2 =>
      'ඔබේ ගමනට ගැළපෙන පුද්ගලීකරණය කළ මඟපෙන්වීම්, සෞඛ්‍ය සම්පන්න පුරුදු, අභිප්‍රේරණ මතක් කිරීම් සහ ප්‍රගති වාර්තා ලබා ගන්න.';

  @override
  String get goodMorning => 'සුභ උදෑසනක්';

  @override
  String get goodAfternoon => 'සුභ දහවලක්';

  @override
  String get goodEvening => 'සුභ සන්ධ්‍යාවක්';

  @override
  String get goodNight => 'සුභ රාත්‍රියක්';

  @override
  String get embracingClarity => 'දිනෙන් දින පැහැදිලි බව වැළඳ ගනිමින්.';

  @override
  String get streakLabel => 'අඛණ්ඩ දින';

  @override
  String get goalLabel => 'ඉලක්කය';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count දින',
      one: '$count දිනයක්',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'Premium සැලසුම';

  @override
  String get premiumPlanSubtitle =>
      'ඔබේ සම්පූර්ණ ප්‍රතිසාධන අත්දැකීම විවෘත කරන්න';

  @override
  String get accountAndSupport => 'ගිණුම සහ සහාය';

  @override
  String get privacyPolicy => 'රහස්‍යතා ප්‍රතිපත්තිය';

  @override
  String get privacyPolicySubtitle =>
      'දත්ත බෙදාගැනීම සහ ගිණුම් ආරක්ෂාව කළමනාකරණය කරන්න';

  @override
  String get termsOfService => 'සේවා කොන්දේසි';

  @override
  String get termsOfServiceSubtitle => 'නිතර අසන ප්‍රශ්න, අප අමතන්න සහ සම්පත්';

  @override
  String get shareApp => 'යෙදුම බෙදාගන්න';

  @override
  String get shareAppSubtitle => 'යෙදුම ඔබේ මිතුරන් සමඟ බෙදාගන්න';

  @override
  String get resetData => 'දත්ත යළි සකසන්න';

  @override
  String get resetDataSubtitle => 'මෙම උපාංගයේ සුරකින ලද සියල්ල මකා දමන්න';

  @override
  String get resetAllDataTitle => 'සියලු දත්ත යළි සකසන්නද?';

  @override
  String get resetAllDataMessage =>
      'මෙය මෙම උපාංගයේ සුරකින ලද පැතිකඩ, දිනපොත් සටහන් සහ ප්‍රගතිය ඇතුළු සියල්ල මකා දමයි — මෙය ආපසු හැරවිය නොහැක.';

  @override
  String get cancel => 'අවලංගු කරන්න';

  @override
  String get reset => 'යළි සකසන්න';

  @override
  String get chooseFromGallery => 'ගැලරියෙන් තෝරන්න';

  @override
  String get takePhoto => 'ඡායාරූපයක් ගන්න';

  @override
  String get removePhoto => 'ඡායාරූපය ඉවත් කරන්න';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'ඡායාරූපය යාවත්කාලීන කළ නොහැකි විය: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'ඡායාරූපය ඉවත් කළ නොහැකි විය: $error';
  }

  @override
  String get photoTooLarge =>
      'සම්පීඩනය කිරීමෙන් පසුවත් එම ඡායාරූපය විශාල වැඩියි — කරුණාකර වෙනත් එකක් උත්සාහ කරන්න.';

  @override
  String get unableToLoadProfile => 'ඔබේ පැතිකඩ පූරණය කළ නොහැක';

  @override
  String get pleaseTryAgain => 'කරුණාකර නැවත උත්සාහ කරන්න.';

  @override
  String get tryAgain => 'නැවත උත්සාහ කරන්න';

  @override
  String get profileNotFound => 'පැතිකඩ හමු නොවීය';

  @override
  String get refresh => 'නැවුම් කරන්න';

  @override
  String get noProfileDataFound => 'මෙම උපාංගයේ තවමත් පැතිකඩ දත්ත හමු නොවීය.';

  @override
  String couldNotResetData(String error) {
    return 'දත්ත යළි සැකසිය නොහැකි විය: $error';
  }

  @override
  String get navHome => 'මුල් පිටුව';

  @override
  String get navStats => 'සංඛ්‍යාලේඛන';

  @override
  String get navJournal => 'දිනපොත';

  @override
  String get navBadges => 'ලාංඡන';

  @override
  String get navProfile => 'පැතිකඩ';

  @override
  String featureComingSoon(String feature) {
    return '$feature ළඟදීම ලබා ගත හැක.';
  }

  @override
  String get appWordmark => 'සුවතාව';

  @override
  String get appTitle => 'මත්පැන් අත්හරින්න';

  @override
  String get splashSubtitle => 'මත්පැන් රහිත ජීවිතයක්\nවෙත පළමු පියවර තබන්න';

  @override
  String get preparingJourney => 'ඔබේ\nගමන සූදානම් කරමින්';

  @override
  String get taskMorningMeditation => 'උදෑසන භාවනාව (මිනිත්තු 10)';

  @override
  String get taskReadChapter =>
      '\"The Sober Diaries\" හි 4 වන පරිච්ඡේදය කියවන්න';

  @override
  String get taskEveningJournal => 'සවස කෘතඥතා දිනපොත';

  @override
  String get close => 'වසන්න';

  @override
  String get youAreDoingGreat => 'ඔබ ඉතා හොඳින් කරගෙන යනවා!';

  @override
  String get shareMilestone => 'සන්ධිස්ථානය බෙදාගන්න';

  @override
  String shareMilestoneMessage(int days) {
    return 'මම මගේ ප්‍රතිසාධන ගමනේ $days වන දිනයේ සිටිමි! 💪';
  }

  @override
  String get shareMilestoneSubject => 'මගේ ප්‍රතිසාධන සන්ධිස්ථානය';

  @override
  String get weeklyReportReadyTitle => 'ඔබේ සතිපතා වාර්තාව සූදානම්';

  @override
  String get weeklyReportReadySubtitle =>
      'ඔබේ සතිය ගත වූ ආකාරය බැලීමට තට්ටු කරන්න';

  @override
  String get howAreYouFeeling => 'ඔබට හැඟෙන්නේ කෙසේද?';

  @override
  String get moodTough => 'අමාරුයි';

  @override
  String get moodOkay => 'හොඳයි';

  @override
  String get moodGood => 'හොඳයි';

  @override
  String get moneySaved => 'ඉතිරි කළ මුදල';

  @override
  String get caloriesSaved => 'ඉතිරි කළ කැලරි';

  @override
  String get healthScore => 'සෞඛ්‍ය ලකුණු';

  @override
  String get drinksAvoided => 'වළක්වාගත් පානයන්';

  @override
  String get estimated => 'ඇස්තමේන්තුගත';

  @override
  String get aiGenerated => 'AI මගින් ජනනය කරන ලදී';

  @override
  String get daysCapsLabel => 'දින';

  @override
  String get todaysMotivation => 'අදගේ අභිප්‍රේරණය';

  @override
  String get defaultMotivationQuote =>
      'ඔබේ කැපවීම සාර්ථකව පවත්වාගෙන ගොස් ඇත. ධනාත්මක වෙනස දිගටම පවත්වාගෙන යන්න.';

  @override
  String get talkToCoach => 'පුහුණුකරු සමඟ කතා කරන්න';

  @override
  String get havingACraving => 'මට දැන් දැඩි ආශාවක් දැනෙනවා';

  @override
  String get unlockWeeklyReportsTitle => 'සතිපතා වාර්තා විවෘත කරන්න';

  @override
  String get unlockWeeklyReportsMessage =>
      'සෑම සතියකම ඔබේ මත්පැන් රහිත දින, මනෝභාව ප්‍රවණතා සහ පුද්ගලීකරණය කළ AI ප්‍රතිචාර බලන්න. විවෘත කිරීමට Premium වෙත යාවත්කාලීන කරන්න.';

  @override
  String get maybeLater => 'පසුව බලමු';

  @override
  String get upgrade => 'යාවත්කාලීන කරන්න';

  @override
  String get weeklyReportTitle => 'සතිපතා වාර්තාව';

  @override
  String get weeklyReportsPremiumTitle => 'සතිපතා වාර්තා Premium විශේෂාංගයකි';

  @override
  String get weeklyReportsPremiumMessage =>
      'සෑම සතියකම ඔබේ මත්පැන් රහිත දින, මනෝභාව ප්‍රවණතා, දැඩි ආශාවන් සහ පුද්ගලීකරණය කළ AI ප්‍රතිචාර බලන්න.';

  @override
  String get upgradeToPremium => 'Premium වෙත යාවත්කාලීන කරන්න';

  @override
  String get couldNotGenerateReport => 'දැනට ඔබේ වාර්තාව ජනනය කළ නොහැකි විය.';

  @override
  String get tryAgainLower => 'නැවත උත්සාහ කරන්න';

  @override
  String get statSoberDays => 'මත්පැන් රහිත දින';

  @override
  String get statAvgMood => 'සාමාන්‍ය මනෝභාවය';

  @override
  String get statCravings => 'දැඩි ආශාවන්';

  @override
  String get statMoneySaved => 'ඉතිරි කළ මුදල';

  @override
  String get coachFeedback => 'පුහුණුකරුගේ ප්‍රතිචාරය';

  @override
  String get journalInsights => 'දිනපොත් අවබෝධය';

  @override
  String get next => 'ඊළඟ';

  @override
  String get question1Title => 'ඔබේ ඉලක්කය කුමක්ද';

  @override
  String get question1Subtitle => 'ඔබට වඩාත්ම වැදගත්\nඉලක්කය තෝරන්න';

  @override
  String get goalQuitCompletely => 'සම්පූර්ණයෙන්ම අත්හරින්න';

  @override
  String get goalReduceDrinking => 'පානය අඩු කරන්න';

  @override
  String get goalTakeABreak => 'විවේකයක් ගන්න';

  @override
  String get goalBuildHealthierHabits => 'වඩා සෞඛ්‍ය සම්පන්න පුරුදු ගොඩනඟන්න';

  @override
  String get question3Title => 'ඔබේ දෛනික\nපුරුද්ද ගැන කියන්න';

  @override
  String get drinksPerWeek => 'සතියකට පානයන්';

  @override
  String get moneySpentPerWeek => 'සතියකට වැය කරන මුදල';

  @override
  String get drinkingLevel => 'පානය කිරීමේ මට්ටම';

  @override
  String get triggersLabel => 'ප්‍රේරක';

  @override
  String get levelSocial => 'සමාජීය';

  @override
  String get levelRegular => 'සාමාන්‍ය';

  @override
  String get levelHeavy => 'අධික';

  @override
  String get levelDependent => 'යැපෙන';

  @override
  String get triggerStress => 'ආතතිය';

  @override
  String get triggerLoneliness => 'තනිකම';

  @override
  String get triggerHabit => 'පුරුද්ද';

  @override
  String get triggerSadness => 'දුක';

  @override
  String get triggerAnger => 'කෝපය';

  @override
  String get triggerBoredom => 'කම්මැලිකම';

  @override
  String get triggerSocialPressure => 'සමාජ පීඩනය';

  @override
  String get triggerCelebration => 'සැමරුම්';

  @override
  String get triggerSleepProblems => 'නින්දේ ගැටලු';

  @override
  String get triggerWorkPressure => 'රැකියා පීඩනය';

  @override
  String get question4Title => 'ඔබ වෙනස් වීමට\nඅවශ්‍ය වන්නේ ඇයි?';

  @override
  String get question4Subtitle => 'ඔබේ හේතුව ඔබව අභිප්‍රේරණය කිරීමට උපකාරී වේ.';

  @override
  String get reasonImproveHealth => 'මගේ සෞඛ්‍යය වැඩිදියුණු කරන්න';

  @override
  String get reasonSaveMoney => 'මුදල් ඉතිරි කරන්න';

  @override
  String get reasonFamily => 'පවුල';

  @override
  String get reasonBetterSleep => 'වඩා හොඳ නින්දක්';

  @override
  String get reasonMentalClarity => 'මානසික පැහැදිලි බව';

  @override
  String get reasonFitness => 'ශාරීරික යෝග්‍යතාව';

  @override
  String get reasonSelfRespect => 'ස්වයං ගෞරවය';

  @override
  String get reasonCareer => 'වෘත්තිය';

  @override
  String get milestoneUnlockedLabel => 'සන්ධිස්ථානය විවෘත විය';

  @override
  String incredibleNamePrefix(String name) {
    return 'විශිෂ්ටයි, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount ඉතිරි කර ඇත';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$countක් වළක්වා ඇත';
  }

  @override
  String get shareMyMilestone => 'මගේ සන්ධිස්ථානය බෙදාගන්න';

  @override
  String get milestoneImageShareError =>
      'සන්ධිස්ථාන රූපය නිර්මාණය කළ නොහැකි විය. කරුණාකර නැවත උත්සාහ කරන්න.';

  @override
  String get dailyCheckInTitle => 'දෛනික Check-in';

  @override
  String get howAreYouFeelingToday => 'අද ඔබට හැඟෙන්නේ කෙසේද?';

  @override
  String get honestAnswerHelp =>
      'ඔබේ අවංක පිළිතුර අපට ඔබට වඩා හොඳින් සහාය වීමට උපකාරී වේ';

  @override
  String get didYouDrinkToday => 'ඔබ අද පානය කළාද?';

  @override
  String get noLabel => 'නැත';

  @override
  String get yesLabel => 'ඔව්';

  @override
  String get cravingLevelNow => 'දැන් දැඩි ආශාවේ මට්ටම කොපමණද?';

  @override
  String get anythingOnMind => 'ඔබේ සිතේ යමක් තිබේද?';

  @override
  String get optionalLabel => '(විකල්ප)';

  @override
  String get dailyNoteHint => 'ඔබේ දවස, ප්‍රේරක, ජයග්‍රහණ ගැන ලියන්න...';

  @override
  String get alreadyCheckedInToday => 'අද දැනටමත් Check-in කර ඇත';

  @override
  String get saveCheckIn => 'Check-in සුරකින්න';

  @override
  String get checkInsHelpTrack =>
      'Check-in මඟින් කාලයත් සමඟ ඔබේ ප්‍රගතිය නිරීක්ෂණය කිරීමට උපකාරී වේ';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'ඔබ අද Check-in එක දැනටමත් සම්පූර්ණ කර ඇත.';

  @override
  String get pleaseAnswerBothQuestions =>
      'කරුණාකර ඉහත ප්‍රශ්න දෙකටම පළමුව පිළිතුරු දෙන්න';

  @override
  String get checkInSaved => 'Check-in සුරකින ලදී';

  @override
  String get cravingNone => 'කිසිවක් නැත';

  @override
  String get cravingLow => 'අඩු';

  @override
  String get cravingMedium => 'මධ්‍යම';

  @override
  String get cravingStrong => 'දැඩි';

  @override
  String get moodBad => 'නරක';

  @override
  String get moodLow => 'අඩු';

  @override
  String get moodGreat => 'ඉතා හොඳයි';

  @override
  String get sosSupportTitle => 'SOS සහාය';

  @override
  String notAloneMessage(String name) {
    return 'ඔබ තනිවම නොවේ, $name';
  }

  @override
  String get cravingsPassMessage =>
      'දැඩි ආශාවන් පහව යයි. මේ මොහොත හරහා යාමට පහත විකල්පයකින් එකක් තෝරන්න.';

  @override
  String get breathingExercise => 'හුස්ම ගැනීමේ අභ්‍යාසය';

  @override
  String get breathingExerciseSubtitle => 'මඟපෙන්වන 4-7-8 තාක්ෂණය, මිනිත්තු 2';

  @override
  String get rideTheWave => 'ආශාවේ රැල්ල සමඟ යන්න';

  @override
  String get rideTheWaveSubtitle =>
      'මිනිත්තු 15 ටයිමරය — දැඩි ආශාවන් සැමවිටම පහව යයි';

  @override
  String get copingTips => 'සමනය කිරීමේ උපදෙස්';

  @override
  String get copingTipsSubtitle => 'ඔබේ ප්‍රේරක සඳහා පුද්ගලීකරණය කළ උපායමාර්ග';

  @override
  String get talkToAiCoach => 'AI පුහුණුකරු සමඟ කතා කරන්න';

  @override
  String get talkToAiCoachSubtitle => 'ඔබේ ප්‍රතිසාධන සහකරු සමඟ කතා කරන්න';

  @override
  String get callSomeone => 'කෙනෙකු අමතන්න';

  @override
  String get callSomeoneSubtitle => 'ඔබේ විශ්වාසවන්ත සම්බන්ධතාව අමතන්න';

  @override
  String get contactsPermissionNeeded =>
      'සම්බන්ධතාවක් ඇමතීමට Contacts අවසරය අවශ්‍ය වේ.';

  @override
  String get beatenCravingsPrefix => 'ඔබ දැඩි ආශාවන් පරාජය කර ඇත ';

  @override
  String beatenCravingsCount(int count) {
    return '$count වරක්';
  }

  @override
  String get beatenCravingsSuffix => ' මීට පෙර. ඔබට එය නැවත කළ හැක.';

  @override
  String get tellUsAboutYourself => 'ඔබ ගැන අපට කියන්න';

  @override
  String get detailsSubtitle =>
      'මෙම තොරතුරු ඔබේ ප්‍රතිසාධන ගමන පුද්ගලීකරණය කිරීමට සහ නිවැරදි අවබෝධයන් ලබා දීමට උපකාරී වේ.';

  @override
  String get nameLabel => 'නම';

  @override
  String get nameHint => 'උදා., Alex Rivers';

  @override
  String get ageLabel => 'වයස';

  @override
  String get ageHint => 'උදා., 32';

  @override
  String get sexAssignedAtBirth => 'උපතේදී ලබා දුන් ලිංගය';

  @override
  String get sexFemale => 'කාන්තාව';

  @override
  String get sexMale => 'පිරිමි';

  @override
  String get heightLabel => 'උස';

  @override
  String get weightLabel => 'බර';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'දෛනික සීමාවට ළඟා වී ඇත';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'ඔබ අද නොමිලේ ලැබෙන පණිවිඩ $limit සියල්ල භාවිතා කර ඇත. අසීමිත පුහුණුකරු චැට් සඳහා Premium වෙත යාවත්කාලීන කරන්න.';
  }

  @override
  String get coachConnectError =>
      'දැනට සම්බන්ධ විය නොහැක. කරුණාකර මොහොතකින් නැවත උත්සාහ කරන්න.';

  @override
  String get clearConversationTitle => 'සංවාදය මකා දමන්නද?';

  @override
  String get clearConversationMessage =>
      'මෙය ඔබේ පුහුණුකරු චැට් ඉතිහාසය ස්ථිරවම මකා දමනු ඇත.';

  @override
  String get clearLabel => 'මකන්න';

  @override
  String get recoveryCoachTitle => 'ප්‍රතිසාධන පුහුණුකරු';

  @override
  String get onlineLabel => 'මාර්ගගතයි';

  @override
  String get clearConversationMenuItem => 'සංවාදය මකන්න';

  @override
  String chatGreeting(String name) {
    return 'ආයුබෝවන් $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'ඔබේ ගමනේ $days වන දිනයේ සිටී. ඔබට කතා කිරීමට අවශ්‍ය ඕනෑම අවස්ථාවක මම මෙහි සිටිමි.';
  }

  @override
  String get quickPromptsLabel => 'ඉක්මන් විකල්ප';

  @override
  String get promptCravingLabel => 'දැඩි ආශාවක් ඇති වී ඇත';

  @override
  String get promptCravingSubtitle => 'ඉක්මනින් සන්සුන් වන්න';

  @override
  String get promptMotivationLabel => 'අභිප්‍රේරණය අවශ්‍යයි';

  @override
  String get promptMotivationSubtitle => 'අමාරු අවස්ථාවක ශක්තියක්';

  @override
  String get promptSocialLabel => 'සමාජ තත්ත්වයක්';

  @override
  String get promptSocialSubtitle => 'හමුවකට සාර්ථකව මුහුණ දෙන්න';

  @override
  String get promptSlippedLabel => 'මට වැරදුණා';

  @override
  String get promptSlippedSubtitle => 'විනිශ්චයක් නැත, සහාය පමණි';

  @override
  String get typeMessageHint => 'පණිවිඩයක් ටයිප් කරන්න...';

  @override
  String get editProfileTitle => 'පැතිකඩ සංස්කරණය';

  @override
  String couldNotSaveProfile(String error) {
    return 'පැතිකඩ සුරැකිය නොහැකි විය: $error';
  }

  @override
  String get heightCmLabel => 'උස (cm)';

  @override
  String get weightKgLabel => 'බර (kg)';

  @override
  String get saveChangesLabel => 'වෙනස්කම් සුරකින්න';

  @override
  String get premiumBadgeLabel => 'PREMIUM';

  @override
  String get featureAdvancedInsights => 'උසස් අවබෝධ සහ විශ්ලේෂණ';

  @override
  String get featureUnlimitedJournal => 'අසීමිත දිනපොත් සටහන්';

  @override
  String get featureUnlimitedChat => 'AI පුහුණුකරු සමඟ අසීමිත චැට්';

  @override
  String get featureCommunityGroups => 'විශේෂ ප්‍රජා කණ්ඩායම්';

  @override
  String get featurePrioritySupport => 'ප්‍රමුඛ විශේෂඥ සහාය';

  @override
  String get featureThemePacks => 'අභිරුචි තේමා පැකේජ';

  @override
  String get featureDataExport => 'දත්ත අපනයනය';

  @override
  String get featureAdFree => 'දැන්වීම් රහිත අත්දැකීම';

  @override
  String get premiumMemberTitle => 'ඔබ Premium සාමාජිකයෙකි';

  @override
  String get unlockFullRecoveryTitle =>
      'ඔබේ සම්පූර්ණ ප්‍රතිසාධන\nඅත්දැකීම විවෘත කරන්න';

  @override
  String get premiumMemberSubtitle =>
      'ඔබේ ප්‍රතිසාධන ගමනට සහාය වීම ගැන ස්තූතියි — පහත සියලුම Premium විශේෂාංග විවෘත කර ඇත.';

  @override
  String get premiumJoinSubtitle =>
      'අපගේ Premium මෙවලම් සහ පුද්ගලීකරණය කළ\nසහාය සමඟ තම සුවවීමේ ගමන වේගවත් කරන\nදහස් ගණනක ප්‍රජාවකට එක්වන්න.';

  @override
  String get monthlyPlanLabel => 'මාසික';

  @override
  String get perMonthSuffix => '/මාසයට';

  @override
  String get cancelAnytimeLabel => 'ඕනෑම වේලාවක අවලංගු කරන්න';

  @override
  String get yearlyPlanLabel => 'වාර්ෂික';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'වාර්ෂිකව $amount ලෙස අය කෙරේ';
  }

  @override
  String get bestValueLabel => 'හොඳම වටිනාකම';

  @override
  String get alreadyPremiumLabel => 'ඔබ Premium ✓';

  @override
  String get startPremiumLabel => 'Premium ආරම්භ කරන්න';

  @override
  String get manageSubscriptionLabel =>
      'ඔබේ උපාංගයේ subscription settings වෙතින් කළමනාකරණය හෝ අවලංගු කරන්න.';

  @override
  String get noCommitmentLabel =>
      'කිසිදු බැඳීමක් නැත. ඕනෑම වේලාවක අවලංගු කරන්න.';

  @override
  String get continueFreePlanLabel => 'නොමිලේ සැලසුම සමඟ ඉදිරියට යන්න';

  @override
  String get backToHomeLabel => 'මුල් පිටුවට යන්න';

  @override
  String get cancelPremiumLabel => 'Premium අවලංගු කරන්න';

  @override
  String get cancelPremiumTitle => 'Premium අවලංගු කරන්නද?';

  @override
  String get cancelPremiumMessage =>
      'ඔබට අසීමිත දිනපොත් සටහන්, අසීමිත පුහුණුකරු චැට්, සංඛ්‍යාලේඛන අවබෝධ සහ සතිපතා වාර්තා වෙත ප්‍රවේශය අහිමි වේ. ඔබට ඕනෑම වේලාවක නැවත subscribe විය හැක.';

  @override
  String get keepPremiumLabel => 'Premium තබාගන්න';

  @override
  String get nowPremiumMessage =>
      'ඔබ දැන් Premium! ඔබේ සම්පූර්ණ ප්‍රතිසාධන අත්දැකීම භුක්ති විඳින්න.';

  @override
  String get premiumCancelledMessage =>
      'Premium අවලංගු කරන ලදී. ඔබ නැවත නොමිලේ සැලසුමට පැමිණ ඇත.';

  @override
  String get termsOfUseLabel => 'භාවිත කොන්දේසි';

  @override
  String get navHomeLabel => 'මුල් පිටුව';

  @override
  String get navStatsLabel => 'සංඛ්‍යාලේඛන';

  @override
  String get navJournalLabel => 'දිනපොත';

  @override
  String get navBadgesLabel => 'ලාංඡන';

  @override
  String get navProfileLabel => 'පැතිකඩ';

  @override
  String get recoveryGoalsTitle => 'ප්‍රතිසාධන ඉලක්ක';

  @override
  String get drinksPerWeekLabel => 'සතියකට පානයන්';

  @override
  String get quitReasonsLabel => 'අත්හැරීමට හේතු';

  @override
  String get quitReasonsHelperText => 'හේතු කිහිපයක් කොමාවකින් වෙන් කරන්න.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'ප්‍රතිසාධන ඉලක්ක සුරැකිය නොහැකි විය: $error';
  }

  @override
  String get goalHint => 'උදා., සම්පූර්ණයෙන් වැළකීම';

  @override
  String get drinksPerWeekHint => 'උදා., 12';

  @override
  String get quitReasonsHint => 'උදා., සෞඛ්‍යය, පවුල, මුදල්';

  @override
  String get todaysPrompt => 'අදගේ ප්‍රශ්නය';

  @override
  String get defaultJournalPrompt => 'අද ඔබේ සිතේ ඇත්තේ කුමක්ද?';

  @override
  String get aiJournalInsights => 'AI දිනපොත් අවබෝධ';

  @override
  String get unlockJournalInsightsMessage =>
      'ඔබේ දිනපොත් සටහන්වල සතිපතා රටා, මනෝභාව ප්‍රවණතා සහ පුද්ගලීකරණය කළ අවබෝධ විවෘත කරන්න.';

  @override
  String get notEnoughJournalData =>
      'තවම ප්‍රමාණවත් දත්ත නැත — මෙම සතියේ සටහන් කිහිපයක් ලියා නැවත බලන්න.';

  @override
  String get openEntry => 'විවෘත කරන්න';

  @override
  String get editEntry => 'සංස්කරණය';

  @override
  String get deleteEntry => 'මකන්න';

  @override
  String get searchJournalEntries => 'සටහන් සොයන්න...';

  @override
  String get writeNewEntry => 'නව සටහනක් ලියන්න';

  @override
  String get recentEntries => 'මෑත සටහන්';

  @override
  String get noJournalEntriesYet =>
      'තවම දිනපොත් සටහන් නැත — ඉහත ඔබේ පළමු අදහස ලියන්න.';

  @override
  String get noEntriesMatchFilters => 'ඔබේ පෙරහන්වලට ගැළපෙන සටහන් නැත.';

  @override
  String get weeklyJournalLimitReached => 'සතිපතා සීමාවට ළඟා වී ඇත';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'ඔබ මෙම සතියේ නොමිලේ ලැබෙන දිනපොත් සටහන් $limit සියල්ල භාවිතා කර ඇත. අසීමිත සටහන් සඳහා Premium වෙත යාවත්කාලීන කරන්න.';
  }

  @override
  String get newEntry => 'නව සටහන';

  @override
  String get writeYourThoughts => 'ඔබේ අදහස් ලියන්න';

  @override
  String get saveEntry => 'සටහන සුරකින්න';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return 'මෙම සතියේ නොමිලේ සටහන් $remaining / $limitක් ඉතිරිව ඇත';
  }

  @override
  String get deleteEntryQuestion => 'සටහන මකා දමන්නද?';

  @override
  String get deleteEntryConfirmation =>
      'මෙම සටහන ස්ථිරවම මකා දමනු ඇත. මෙය ආපසු හැරවිය නොහැක.';

  @override
  String get journalEntryNotFound => 'සටහන හමු නොවීය';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'මෙම දිනපොත් සටහන මකා දමා තිබිය හැක.';

  @override
  String get goBack => 'ආපසු යන්න';

  @override
  String get journalEntryTitle => 'දිනපොත් සටහන';

  @override
  String get moodStruggling => 'අරගල කරමින්';

  @override
  String get moodUnwell => 'අසනීපයි';

  @override
  String get moodNeutral => 'මධ්‍යස්ථ';

  @override
  String get whatHappenedToday => 'අද සිදු වූයේ කුමක්ද?';

  @override
  String get trigger => 'ප්‍රේරකය';

  @override
  String get whatHelped => 'උදව් වූ දේ';

  @override
  String get whatIllTryNextTime => 'ඊළඟ වතාවේ මම උත්සාහ කරන දේ';

  @override
  String get journalPrivacyMessage =>
      'ඔබේ අදහස පුද්ගලික වන අතර ඔබේ දිනපොතේ සුරකිනු ලැබේ.';

  @override
  String get unlocked => 'විවෘත කර ඇත';

  @override
  String daysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '',
      one: '',
    );
    return '$count දින$_temp0ක් ඉතිරිව ඇත';
  }

  @override
  String daysCount(int count) {
    return 'දින $count';
  }

  @override
  String get firstReflection => 'පළමු\nආවර්ජනය';

  @override
  String get oneJournalEntry => 'දිනපොත් සටහන් 1';

  @override
  String get openBook => 'පොත විවෘත කරන්න';

  @override
  String get tenJournalEntries => 'දිනපොත් සටහන් 10';

  @override
  String get dedicatedWriter => 'කැපවූ\nලේඛකයා';

  @override
  String get thirtyJournalEntries => 'දිනපොත් සටහන් 30';

  @override
  String get firstConversation => 'පළමු\nසංවාදය';

  @override
  String get oneAiCoachChat => 'AI පුහුණුකරු සමඟ චැට් 1';

  @override
  String get keepTalking => 'දිගටම කතා කරන්න';

  @override
  String get fiveConversations => 'සංවාද 5';

  @override
  String get coachCompanion => 'පුහුණුකරු\nසහකරු';

  @override
  String get twentyConversations => 'සංවාද 20';

  @override
  String get checkInHabit => 'Check-in\nපුරුද්ද';

  @override
  String get sevenCheckIns => 'Check-in 7';

  @override
  String get consistencyPro => 'අඛණ්ඩතාවයේ\nවිශේෂඥයා';

  @override
  String get thirtyCheckIns => 'Check-in 30';

  @override
  String get dedicatedJourney => 'කැපවූ\nගමන';

  @override
  String get hundredCheckIns => 'Check-in 100';

  @override
  String get goalGetter => 'ඉලක්ක ජයගන්නා';

  @override
  String get threeGoalsCompleted => 'ඉලක්ක 3 සම්පූර්ණ කර ඇත';

  @override
  String get goalAchiever => 'ඉලක්ක\nජයගන්නා';

  @override
  String get tenGoalsCompleted => 'ඉලක්ක 10 සම්පූර්ණ කර ඇත';

  @override
  String get firstSavings => 'පළමු\nඉතිරිය';

  @override
  String get fiveHundredSaved => '\$500 ඉතිරි කර ඇත';

  @override
  String get smartSaver => 'දක්ෂ ඉතිරිකරුවා';

  @override
  String get oneThousandSaved => '\$1,000 ඉතිරි කර ඇත';

  @override
  String get bigSaver => 'විශාල ඉතිරිකරුවා';

  @override
  String get fiveThousandSaved => '\$5,000 ඉතිරි කර ඇත';

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
      'දිගටම යන්න — ඔබේ පළමු සන්ධිස්ථානය ඔබ එනතුරු බලා සිටී!';

  @override
  String get badgesAndMilestones => 'ලාංඡන සහ සන්ධිස්ථාන';

  @override
  String get yourMilestoneJourney => 'ඔබේ සන්ධිස්ථාන ගමන';

  @override
  String milestonesAchieved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '',
      one: '',
    );
    return 'සන්ධිස්ථාන $countක්$_temp0 සම්පූර්ණ කර ඇත.\nබැලීමට තට්ටු කරන්න';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'ඔබේ ගමනේ සන්ධිස්ථාන $totalකින් $unlockedක් විවෘත කර ඇත.';
  }

  @override
  String get remaining => 'ඉතිරි';

  @override
  String get complete => 'සම්පූර්ණ';

  @override
  String get nextMilestone => 'ඊළඟ සන්ධිස්ථානය';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% සම්පූර්ණයි';
  }

  @override
  String get sobrietyMilestones => 'මත්පැන් රහිත සන්ධිස්ථාන';

  @override
  String get journeyBadges => 'ගමන් ලාංඡන';

  @override
  String get bronze => 'ලෝකඩ';

  @override
  String get silver => 'රිදී';

  @override
  String get gold => 'රන්';

  @override
  String get platinum => 'ප්ලැටිනම්';

  @override
  String get diamond => 'දියමන්ති';

  @override
  String get analyzingYourJourney => 'ඔබේ ගමන විශ්ලේෂණය කරමින්...';

  @override
  String get aiCreatingSanctuary =>
      'අපගේ AI ඔබ වෙනුවෙන් පුද්ගලීකරණය කළ ආරක්ෂිත අවකාශයක් නිර්මාණය කරමින් සිටී.';

  @override
  String get understandingHabits => 'පුරුදු අවබෝධ කරගනිමින්...';

  @override
  String get calculatingBaseline => 'ඔබේ මූලික මට්ටම ගණනය කරමින්...';

  @override
  String get personalizingPlan => 'ඔබේ සැලැස්ම පුද්ගලීකරණය කරමින්...';

  @override
  String get finalizingSanctuary => 'ඔබේ ආරක්ෂිත අවකාශය අවසන් කරමින්...';

  @override
  String get creatingYourPlan => 'ඔබේ සැලැස්ම නිර්මාණය කරමින්...';

  @override
  String get personalizedPlanError =>
      'ඔබේ පුද්ගලීකරණය කළ සැලැස්ම නිර්මාණය කළ නොහැකි විය. කරුණාකර නැවත උත්සාහ කරන්න.';

  @override
  String get retry => 'නැවත උත්සාහ කරන්න';

  @override
  String get breathInhale => 'ආශ්වාස කරන්න';

  @override
  String get breathHold => 'රඳවා ගන්න';

  @override
  String get breathExhale => 'ප්‍රශ්වාස කරන්න';

  @override
  String get breathDone => 'අවසන්';

  @override
  String get breathGreatJob => 'විශිෂ්ටයි!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'අද සැසි $countක්',
      one: 'අද සැසියක්',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'අභ්‍යාසය අවසන් කරන්න';

  @override
  String get done => 'අවසන්';

  @override
  String get noCopingTipsYet => 'තවම සමනය කිරීමේ උපදෙස් නැත';

  @override
  String get copingStrategiesWillAppear =>
      'ඔබේ ප්‍රතිසාධන සැලැස්ම ජනනය කිරීම අවසන් වූ පසු ඔබේ පුද්ගලීකරණය කළ සමනය කිරීමේ උපායමාර්ග මෙහි පෙන්වනු ඇත.';

  @override
  String get strategiesTailoredToTriggers => 'ඔබේ ප්‍රේරකවලට ගැළපෙන උපායමාර්ග';

  @override
  String get cravingsPeakAndPass => 'දැඩි ආශාවන් උපරිම වී\nපසුව පහව යයි';

  @override
  String get rideTheWaveDescription =>
      'බොහෝ දැඩි ආශාවන් මිනිත්තු 15ක් ඇතුළත පහව යයි. ඔබ ඒ අනුව ක්‍රියා කිරීමට අවශ්‍ය නැත — අප සමඟ එය පසුකර යන්න.';

  @override
  String get stayWithIt => 'එය සමඟ රැඳී සිටින්න';

  @override
  String get youMadeIt => 'ඔබ එය කළා';

  @override
  String get readyWhenYouAre => 'ඔබ සූදානම් වූ විට';

  @override
  String get rideItAgain => 'නැවත උත්සාහ කරන්න';

  @override
  String get start15MinuteTimer => 'මිනිත්තු 15 ටයිමරය ආරම්භ කරන්න';

  @override
  String get rideTheWaveCompletedMessage =>
      'ඔබ එම රැල්ල පසුකර ගියා. එය සැබෑ ශක්තියකි. 💪';

  @override
  String get myProgress => 'මගේ ප්‍රගතිය';

  @override
  String get weekLabel => 'සතිය';

  @override
  String get monthLabel => 'මාසය';

  @override
  String get allLabel => 'සියල්ල';

  @override
  String get daysSoberStatLabel => 'මත්පැන් රහිත\nදින';

  @override
  String get savedStatLabel => 'ඉතිරි කළ';

  @override
  String get avoidedStatLabel => 'වළක්වාගත්';

  @override
  String get moodTrends => 'මනෝභාව ප්‍රවණතා';

  @override
  String get cravingsPattern => 'දැඩි ආශා රටාව';

  @override
  String get unlockLabel => 'විවෘත කරන්න';

  @override
  String get unlockFullStats => 'සම්පූර්ණ සංඛ්‍යාලේඛන විවෘත කරන්න';

  @override
  String get premiumStatsMessage =>
      'මනෝභාව ප්‍රවණතා සහ දැඩි ආශා රටා Premium විශේෂාංග වේ. ඔබේ සම්පූර්ණ සංඛ්‍යාලේඛන බැලීමට යාවත්කාලීන කරන්න.';

  @override
  String get healthMilestonesWillAppear =>
      'ඔබේ සෞඛ්‍ය සන්ධිස්ථාන මෙහි පෙන්වනු ඇත.';

  @override
  String get healthMilestones => 'සෞඛ්‍ය සන්ධිස්ථාන';

  @override
  String dayNumber(int day) {
    return 'දිනය $day';
  }

  @override
  String get soberLabel => 'මත්පැන් රහිත';

  @override
  String get slipLabel => 'ලිස්සා යාම';

  @override
  String get noDataLabel => 'දත්ත නැත';

  @override
  String get milestone24Hours => 'පැය 24';

  @override
  String get milestoneOneWeek => 'සතියක්';

  @override
  String get milestoneOneMonth => 'මාසයක්';

  @override
  String get milestoneThreeMonths => 'මාස තුනක්';

  @override
  String get milestoneSixMonths => 'මාස හයක්';

  @override
  String get milestoneOneYear => 'වසරක්';

  @override
  String milestoneDayCount(int day) {
    return 'දිනය $day සන්ධිස්ථානය';
  }

  @override
  String get maybeLaterLabel => 'සමහරවිට පසුව';

  @override
  String get cancelLabel => 'අවලංගු කරන්න';
}
