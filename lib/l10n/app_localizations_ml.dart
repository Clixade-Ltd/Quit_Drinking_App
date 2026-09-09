// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malayalam (`ml`).
class AppLocalizationsMl extends AppLocalizations {
  AppLocalizationsMl([String locale = 'ml']) : super(locale);

  @override
  String get skip => 'ഒഴിവാക്കുക';

  @override
  String get continueButton => 'തുടരുക';

  @override
  String get getStarted => 'ആരംഭിക്കുക';

  @override
  String get onboardingTitle1 =>
      'നിങ്ങളുടെ ജീവിതത്തിന്റെ നിയന്ത്രണം ഏറ്റെടുക്കൂ';

  @override
  String get onboardingSubtitle1 =>
      'നിങ്ങളുടെ യാത്ര പിന്തുടരൂ, ഓരോ നേട്ടവും ആഘോഷിക്കൂ, ഓരോ ദിവസവും കൂടുതൽ ആരോഗ്യകരമാകൂ.';

  @override
  String get onboardingTitle2 => 'നിങ്ങളുടെ AI വീണ്ടെടുക്കൽ സഹായി';

  @override
  String get onboardingSubtitle2 =>
      'നിങ്ങളുടെ യാത്രയ്ക്കനുസരിച്ച് വ്യക്തിഗതമാക്കിയ മാർഗനിർദേശവും ആരോഗ്യകരമായ ശീലങ്ങളും പ്രചോദന ഓർമ്മപ്പെടുത്തലുകളും പുരോഗതി റിപ്പോർട്ടുകളും നേടൂ.';

  @override
  String get goodMorning => 'സുപ്രഭാതം';

  @override
  String get goodAfternoon => 'ശുഭ ഉച്ചതിരിഞ്ഞ്';

  @override
  String get goodEvening => 'ശുഭ സായാഹ്നം';

  @override
  String get goodNight => 'ശുഭ രാത്രി';

  @override
  String get embracingClarity => 'ഓരോ ദിവസവും വ്യക്തതയിലേക്ക്.';

  @override
  String get streakLabel => 'തുടർച്ച';

  @override
  String get goalLabel => 'ലക്ഷ്യം';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ദിവസങ്ങൾ',
      one: '$count ദിവസം',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'പ്രീമിയം പ്ലാൻ';

  @override
  String get premiumPlanSubtitle =>
      'നിങ്ങളുടെ പൂർണ്ണ വീണ്ടെടുക്കൽ അനുഭവം അൺലോക്ക് ചെയ്യൂ';

  @override
  String get accountAndSupport => 'അക്കൗണ്ട് & പിന്തുണ';

  @override
  String get privacyPolicy => 'സ്വകാര്യതാ നയം';

  @override
  String get privacyPolicySubtitle =>
      'ഡാറ്റ പങ്കിടലും അക്കൗണ്ട് സുരക്ഷയും നിയന്ത്രിക്കുക';

  @override
  String get termsOfService => 'സേവന നിബന്ധനകൾ';

  @override
  String get termsOfServiceSubtitle =>
      'പതിവുചോദ്യങ്ങൾ, ഞങ്ങളെ ബന്ധപ്പെടുക, വിഭവങ്ങൾ';

  @override
  String get shareApp => 'ആപ്പ് പങ്കിടുക';

  @override
  String get shareAppSubtitle => 'നിങ്ങളുടെ സുഹൃത്തുക്കളുമായി ആപ്പ് പങ്കിടുക';

  @override
  String get resetData => 'ഡാറ്റ പുനഃസജ്ജമാക്കുക';

  @override
  String get resetDataSubtitle =>
      'ഈ ഉപകരണത്തിൽ സംരക്ഷിച്ചിരിക്കുന്നതെല്ലാം മായ്ക്കുക';

  @override
  String get resetAllDataTitle => 'എല്ലാ ഡാറ്റയും പുനഃസജ്ജമാക്കണോ?';

  @override
  String get resetAllDataMessage =>
      'ഇത് ഈ ഉപകരണത്തിൽ സംരക്ഷിച്ചിരിക്കുന്ന പ്രൊഫൈൽ, ജേണൽ എൻട്രികൾ, പുരോഗതി എന്നിവയുൾപ്പെടെ എല്ലാം മായ്ക്കും — ഇത് പഴയപടിയാക്കാനാകില്ല.';

  @override
  String get cancel => 'റദ്ദാക്കുക';

  @override
  String get reset => 'പുനഃസജ്ജമാക്കുക';

  @override
  String get chooseFromGallery => 'ഗാലറിയിൽ നിന്ന് തിരഞ്ഞെടുക്കുക';

  @override
  String get takePhoto => 'ഫോട്ടോ എടുക്കുക';

  @override
  String get removePhoto => 'ഫോട്ടോ നീക്കം ചെയ്യുക';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'ഫോട്ടോ അപ്ഡേറ്റ് ചെയ്യാനായില്ല: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'ഫോട്ടോ നീക്കം ചെയ്യാനായില്ല: $error';
  }

  @override
  String get photoTooLarge =>
      'കംപ്രസ് ചെയ്ത ശേഷവും ഈ ഫോട്ടോ വളരെ വലുതാണ് — മറ്റൊന്ന് ശ്രമിക്കുക.';

  @override
  String get unableToLoadProfile => 'നിങ്ങളുടെ പ്രൊഫൈൽ ലോഡ് ചെയ്യാനായില്ല';

  @override
  String get pleaseTryAgain => 'ദയവായി വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get tryAgain => 'വീണ്ടും ശ്രമിക്കുക';

  @override
  String get profileNotFound => 'പ്രൊഫൈൽ കണ്ടെത്തിയില്ല';

  @override
  String get refresh => 'പുതുക്കുക';

  @override
  String get noProfileDataFound =>
      'ഈ ഉപകരണത്തിൽ ഇതുവരെ പ്രൊഫൈൽ ഡാറ്റയൊന്നും കണ്ടെത്തിയില്ല.';

  @override
  String couldNotResetData(String error) {
    return 'ഡാറ്റ പുനഃസജ്ജമാക്കാനായില്ല: $error';
  }

  @override
  String get navHome => 'ഹോം';

  @override
  String get navStats => 'സ്ഥിതിവിവരക്കണക്കുകൾ';

  @override
  String get navJournal => 'ജേണൽ';

  @override
  String get navBadges => 'ബാഡ്ജുകൾ';

  @override
  String get navProfile => 'പ്രൊഫൈൽ';

  @override
  String featureComingSoon(String feature) {
    return '$feature ഉടൻ ലഭ്യമാകും.';
  }

  @override
  String get appWordmark => 'ക്ഷേമം';

  @override
  String get appTitle => 'മദ്യപാനം നിർത്തുക';

  @override
  String get splashSubtitle => 'മദ്യരഹിത ജീവിതത്തിലേക്ക്\nആദ്യ ചുവടുവെക്കൂ';

  @override
  String get preparingJourney => 'നിങ്ങളുടെ യാത്ര\nതയ്യാറാക്കുന്നു';

  @override
  String get taskMorningMeditation => 'പ്രഭാത ധ്യാനം (10 മിനിറ്റ്)';

  @override
  String get taskReadChapter =>
      '\"മദ്യരഹിത ദിനപുസ്തകം\" എന്ന പുസ്തകത്തിന്റെ അധ്യായം 4 വായിക്കുക';

  @override
  String get taskEveningJournal => 'സായാഹ്ന നന്ദി ജേണൽ';

  @override
  String get close => 'അടയ്ക്കുക';

  @override
  String get youAreDoingGreat => 'നിങ്ങൾ വളരെ നന്നായി ചെയ്യുന്നു!';

  @override
  String get shareMilestone => 'നേട്ടം പങ്കിടുക';

  @override
  String shareMilestoneMessage(int days) {
    return 'എന്റെ വീണ്ടെടുക്കൽ യാത്രയുടെ $days-ാം ദിവസത്തിലാണ് ഞാൻ! 💪';
  }

  @override
  String get shareMilestoneSubject => 'എന്റെ വീണ്ടെടുക്കൽ നേട്ടം';

  @override
  String get weeklyReportReadyTitle =>
      'നിങ്ങളുടെ പ്രതിവാര റിപ്പോർട്ട് തയ്യാറാണ്';

  @override
  String get weeklyReportReadySubtitle =>
      'നിങ്ങളുടെ ആഴ്ച എങ്ങനെയായിരുന്നെന്ന് കാണാൻ ടാപ്പ് ചെയ്യുക';

  @override
  String get howAreYouFeeling => 'നിങ്ങൾക്ക് എങ്ങനെ തോന്നുന്നു?';

  @override
  String get moodTough => 'ബുദ്ധിമുട്ടാണ്';

  @override
  String get moodOkay => 'ശരി';

  @override
  String get moodGood => 'നല്ലത്';

  @override
  String get moneySaved => 'ലാഭിച്ച പണം';

  @override
  String get caloriesSaved => 'ലാഭിച്ച കലോറി';

  @override
  String get healthScore => 'ആരോഗ്യ സ്കോർ';

  @override
  String get drinksAvoided => 'ഒഴിവാക്കിയ പാനീയങ്ങൾ';

  @override
  String get estimated => 'ഏകദേശ കണക്ക്';

  @override
  String get aiGenerated => 'AI സൃഷ്ടിച്ചത്';

  @override
  String get daysCapsLabel => 'ദിവസങ്ങൾ';

  @override
  String get todaysMotivation => 'ഇന്നത്തെ പ്രചോദനം';

  @override
  String get defaultMotivationQuote =>
      'നിങ്ങളുടെ പ്രതിബദ്ധത വിജയകരമായി നിലനിർത്തിയിരിക്കുന്നു. ഈ പോസിറ്റീവ് മാറ്റത്തിന്റെ തരംഗത്തിൽ മുന്നോട്ട് പോകൂ.';

  @override
  String get talkToCoach => 'കോച്ചുമായി സംസാരിക്കുക';

  @override
  String get havingACraving => 'എനിക്ക് മദ്യത്തിനുള്ള ആഗ്രഹം അനുഭവപ്പെടുന്നു';

  @override
  String get unlockWeeklyReportsTitle =>
      'പ്രതിവാര റിപ്പോർട്ടുകൾ അൺലോക്ക് ചെയ്യുക';

  @override
  String get unlockWeeklyReportsMessage =>
      'ഓരോ ആഴ്ചയും നിങ്ങളുടെ മദ്യരഹിത ദിവസങ്ങളും മാനസികാവസ്ഥയിലെ പ്രവണതകളും വ്യക്തിഗതമാക്കിയ AI ഫീഡ്ബാക്കും കാണുക. അൺലോക്ക് ചെയ്യാൻ Premium-ലേക്ക് അപ്ഗ്രേഡ് ചെയ്യുക.';

  @override
  String get maybeLater => 'പിന്നീട്';

  @override
  String get upgrade => 'അപ്‌ഗ്രേഡ് ചെയ്യുക';

  @override
  String get weeklyReportTitle => 'പ്രതിവാര റിപ്പോർട്ട്';

  @override
  String get weeklyReportsPremiumTitle =>
      'പ്രതിവാര റിപ്പോർട്ടുകൾ Premium സവിശേഷതയാണ്';

  @override
  String get weeklyReportsPremiumMessage =>
      'ഓരോ ആഴ്ചയും നിങ്ങളുടെ മദ്യരഹിത ദിവസങ്ങൾ, മാനസികാവസ്ഥയിലെ പ്രവണതകൾ, ആഗ്രഹങ്ങൾ, വ്യക്തിഗതമാക്കിയ AI ഫീഡ്ബാക്ക് എന്നിവ കാണുക.';

  @override
  String get upgradeToPremium => 'Premium-ലേക്ക് അപ്ഗ്രേഡ് ചെയ്യുക';

  @override
  String get couldNotGenerateReport =>
      'ഇപ്പോൾ നിങ്ങളുടെ റിപ്പോർട്ട് സൃഷ്ടിക്കാനായില്ല.';

  @override
  String get tryAgainLower => 'വീണ്ടും ശ്രമിക്കുക';

  @override
  String get statSoberDays => 'മദ്യരഹിത ദിവസങ്ങൾ';

  @override
  String get statAvgMood => 'ശരാശരി മാനസികാവസ്ഥ';

  @override
  String get statCravings => 'ആഗ്രഹങ്ങൾ';

  @override
  String get statMoneySaved => 'ലാഭിച്ച പണം';

  @override
  String get coachFeedback => 'കോച്ച് ഫീഡ്ബാക്ക്';

  @override
  String get journalInsights => 'ജേണൽ ഇൻസൈറ്റുകൾ';

  @override
  String get next => 'അടുത്തത്';

  @override
  String get question1Title => 'നിങ്ങളുടെ ലക്ഷ്യം എന്താണ്';

  @override
  String get question1Subtitle =>
      'നിങ്ങൾക്ക് ഏറ്റവും പ്രധാനപ്പെട്ട\nലക്ഷ്യം തിരഞ്ഞെടുക്കുക';

  @override
  String get goalQuitCompletely => 'പൂർണ്ണമായി നിർത്തുക';

  @override
  String get goalReduceDrinking => 'മദ്യപാനം കുറയ്ക്കുക';

  @override
  String get goalTakeABreak => 'ഒരു ഇടവേള എടുക്കുക';

  @override
  String get goalBuildHealthierHabits => 'ആരോഗ്യകരമായ ശീലങ്ങൾ വളർത്തുക';

  @override
  String get question3Title => 'നിങ്ങളുടെ\nദൈനംദിനക്രമത്തെക്കുറിച്ച് പറയൂ';

  @override
  String get drinksPerWeek => 'ആഴ്ചയിലെ പാനീയങ്ങൾ';

  @override
  String get moneySpentPerWeek => 'ആഴ്ചയിൽ ചെലവഴിക്കുന്ന പണം';

  @override
  String get drinkingLevel => 'മദ്യപാനത്തിന്റെ തോത്';

  @override
  String get triggersLabel => 'ട്രിഗറുകൾ';

  @override
  String get levelSocial => 'സാമൂഹികം';

  @override
  String get levelRegular => 'പതിവ്';

  @override
  String get levelHeavy => 'കൂടുതൽ';

  @override
  String get levelDependent => 'ആശ്രിതം';

  @override
  String get triggerStress => 'സമ്മർദ്ദം';

  @override
  String get triggerLoneliness => 'ഏകാന്തത';

  @override
  String get triggerHabit => 'ശീലം';

  @override
  String get triggerSadness => 'ദുഃഖം';

  @override
  String get triggerAnger => 'കോപം';

  @override
  String get triggerBoredom => 'വിരസത';

  @override
  String get triggerSocialPressure => 'സാമൂഹിക സമ്മർദ്ദം';

  @override
  String get triggerCelebration => 'ആഘോഷം';

  @override
  String get triggerSleepProblems => 'ഉറക്ക പ്രശ്നങ്ങൾ';

  @override
  String get triggerWorkPressure => 'ജോലി സമ്മർദ്ദം';

  @override
  String get question4Title => 'നിങ്ങൾ എന്തുകൊണ്ട് മാറാൻ ആഗ്രഹിക്കുന്നു?';

  @override
  String get question4Subtitle =>
      'നിങ്ങളുടെ കാരണം നിങ്ങളെ പ്രചോദിപ്പിക്കാൻ സഹായിക്കും.';

  @override
  String get reasonImproveHealth => 'എന്റെ ആരോഗ്യം മെച്ചപ്പെടുത്തുക';

  @override
  String get reasonSaveMoney => 'പണം ലാഭിക്കുക';

  @override
  String get reasonFamily => 'കുടുംബം';

  @override
  String get reasonBetterSleep => 'മെച്ചപ്പെട്ട ഉറക്കം';

  @override
  String get reasonMentalClarity => 'മാനസിക വ്യക്തത';

  @override
  String get reasonFitness => 'ശാരീരികക്ഷമത';

  @override
  String get reasonSelfRespect => 'ആത്മാഭിമാനം';

  @override
  String get reasonCareer => 'കരിയർ';

  @override
  String get milestoneUnlockedLabel => 'നേട്ടം അൺലോക്ക് ചെയ്തു';

  @override
  String incredibleNamePrefix(String name) {
    return 'അത്ഭുതം, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount ലാഭിച്ചു';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count ഒഴിവാക്കി';
  }

  @override
  String get shareMyMilestone => 'എന്റെ നേട്ടം പങ്കിടുക';

  @override
  String get milestoneImageShareError =>
      'നേട്ടത്തിന്റെ ചിത്രം സൃഷ്ടിക്കാനായില്ല. ദയവായി വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get dailyCheckInTitle => 'ദൈനംദിന ചെക്ക്-ഇൻ';

  @override
  String get howAreYouFeelingToday => 'ഇന്ന് നിങ്ങൾക്ക് എങ്ങനെ തോന്നുന്നു?';

  @override
  String get honestAnswerHelp =>
      'നിങ്ങളുടെ സത്യസന്ധമായ ഉത്തരം നിങ്ങളെ കൂടുതൽ നന്നായി പിന്തുണയ്ക്കാൻ ഞങ്ങളെ സഹായിക്കുന്നു';

  @override
  String get didYouDrinkToday => 'നിങ്ങൾ ഇന്ന് മദ്യപിച്ചോ?';

  @override
  String get noLabel => 'ഇല്ല';

  @override
  String get yesLabel => 'അതെ';

  @override
  String get cravingLevelNow =>
      'ഇപ്പോൾ മദ്യത്തിനുള്ള ആഗ്രഹത്തിന്റെ തോത് എത്രയാണ്?';

  @override
  String get anythingOnMind => 'നിങ്ങളുടെ മനസ്സിലുള്ള എന്തെങ്കിലും ഉണ്ടോ?';

  @override
  String get optionalLabel => '(ഓപ്ഷണൽ)';

  @override
  String get dailyNoteHint =>
      'നിങ്ങളുടെ ദിവസം, ട്രിഗറുകൾ, വിജയങ്ങൾ എന്നിവയെക്കുറിച്ച് എഴുതുക...';

  @override
  String get alreadyCheckedInToday => 'ഇന്ന് ഇതിനകം ചെക്ക്-ഇൻ ചെയ്തു';

  @override
  String get saveCheckIn => 'ചെക്ക്-ഇൻ സംരക്ഷിക്കുക';

  @override
  String get checkInsHelpTrack =>
      'കാലക്രമേണ നിങ്ങളുടെ പുരോഗതി പിന്തുടരാൻ ചെക്ക്-ഇന്നുകൾ സഹായിക്കുന്നു';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'ഇന്നത്തെ ചെക്ക്-ഇൻ നിങ്ങൾ ഇതിനകം പൂർത്തിയാക്കി.';

  @override
  String get pleaseAnswerBothQuestions =>
      'ആദ്യം മുകളിലെ രണ്ട് ചോദ്യങ്ങൾക്കും ഉത്തരം നൽകുക';

  @override
  String get checkInSaved => 'ചെക്ക്-ഇൻ സംരക്ഷിച്ചു';

  @override
  String get cravingNone => 'ഇല്ല';

  @override
  String get cravingLow => 'കുറവ്';

  @override
  String get cravingMedium => 'മിതമായ';

  @override
  String get cravingStrong => 'ശക്തമായ';

  @override
  String get moodBad => 'മോശം';

  @override
  String get moodLow => 'കുറവ്';

  @override
  String get moodGreat => 'വളരെ നല്ലത്';

  @override
  String get sosSupportTitle => 'SOS പിന്തുണ';

  @override
  String notAloneMessage(String name) {
    return 'നിങ്ങൾ ഒറ്റയ്ക്കല്ല, $name';
  }

  @override
  String get cravingsPassMessage =>
      'ആഗ്രഹങ്ങൾ കടന്നുപോകും. ഈ നിമിഷം മറികടക്കാൻ സഹായിക്കുന്നതിന് താഴെ നിന്ന് എന്തെങ്കിലും തിരഞ്ഞെടുക്കുക.';

  @override
  String get breathingExercise => 'ശ്വസന വ്യായാമം';

  @override
  String get breathingExerciseSubtitle =>
      'മാർഗനിർദേശമുള്ള 4-7-8 സാങ്കേതികവിദ്യ, 2 മിനിറ്റ്';

  @override
  String get rideTheWave => 'തരംഗത്തെ അതിജീവിക്കുക';

  @override
  String get rideTheWaveSubtitle =>
      '15 മിനിറ്റ് ടൈമർ — ആഗ്രഹങ്ങൾ എല്ലായ്പ്പോഴും കടന്നുപോകും';

  @override
  String get copingTips => 'നേരിടാനുള്ള നുറുങ്ങുകൾ';

  @override
  String get copingTipsSubtitle =>
      'നിങ്ങളുടെ ട്രിഗറുകൾക്കായി വ്യക്തിഗതമാക്കിയ തന്ത്രങ്ങൾ';

  @override
  String get talkToAiCoach => 'AI കോച്ചുമായി സംസാരിക്കുക';

  @override
  String get talkToAiCoachSubtitle =>
      'നിങ്ങളുടെ വീണ്ടെടുക്കൽ സഹയാത്രികനുമായി ചാറ്റ് ചെയ്യുക';

  @override
  String get callSomeone => 'ആരെയെങ്കിലും വിളിക്കുക';

  @override
  String get callSomeoneSubtitle =>
      'നിങ്ങൾ വിശ്വസിക്കുന്ന വ്യക്തിയെ ബന്ധപ്പെടുക';

  @override
  String get contactsPermissionNeeded =>
      'ഒരു കോൺടാക്റ്റിനെ വിളിക്കാൻ കോൺടാക്റ്റ് അനുമതി ആവശ്യമാണ്.';

  @override
  String get beatenCravingsPrefix => 'നിങ്ങൾ ആഗ്രഹങ്ങളെ ';

  @override
  String beatenCravingsCount(int count) {
    return '$count തവണ അതിജീവിച്ചു';
  }

  @override
  String get beatenCravingsSuffix => ' മുമ്പ്. നിങ്ങൾക്ക് വീണ്ടും ചെയ്യാം.';

  @override
  String get tellUsAboutYourself => 'നിങ്ങളെക്കുറിച്ച് ഞങ്ങളോട് പറയൂ';

  @override
  String get detailsSubtitle =>
      'നിങ്ങളുടെ വീണ്ടെടുക്കൽ യാത്ര വ്യക്തിഗതമാക്കാനും കൃത്യമായ വിവരങ്ങൾ നൽകാനും ഈ വിവരങ്ങൾ ഞങ്ങളെ സഹായിക്കുന്നു.';

  @override
  String get nameLabel => 'പേര്';

  @override
  String get nameHint => 'ഉദാ., Alex Rivers';

  @override
  String get ageLabel => 'പ്രായം';

  @override
  String get ageHint => 'ഉദാ., 32';

  @override
  String get sexAssignedAtBirth => 'ജനനസമയത്ത് നിശ്ചയിച്ച ലിംഗം';

  @override
  String get sexFemale => 'സ്ത്രീ';

  @override
  String get sexMale => 'പുരുഷൻ';

  @override
  String get heightLabel => 'ഉയരം';

  @override
  String get weightLabel => 'ഭാരം';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'ദൈനംദിന പരിധി കഴിഞ്ഞു';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'ഇന്ന് ലഭ്യമായ എല്ലാ $limit സൗജന്യ സന്ദേശങ്ങളും നിങ്ങൾ ഉപയോഗിച്ചു. പരിധിയില്ലാത്ത കോച്ച് ചാറ്റിനായി Premium-ലേക്ക് അപ്ഗ്രേഡ് ചെയ്യുക.';
  }

  @override
  String get coachConnectError =>
      'ഇപ്പോൾ ബന്ധിപ്പിക്കാനായില്ല. കുറച്ച് സമയത്തിന് ശേഷം വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get clearConversationTitle => 'സംഭാഷണം മായ്ക്കണോ?';

  @override
  String get clearConversationMessage =>
      'ഇത് നിങ്ങളുടെ കോച്ച് ചാറ്റ് ചരിത്രം ശാശ്വതമായി നീക്കം ചെയ്യും.';

  @override
  String get clearLabel => 'മായ്ക്കുക';

  @override
  String get recoveryCoachTitle => 'വീണ്ടെടുക്കൽ കോച്ച്';

  @override
  String get onlineLabel => 'ഓൺലൈൻ';

  @override
  String get clearConversationMenuItem => 'സംഭാഷണം മായ്ക്കുക';

  @override
  String chatGreeting(String name) {
    return 'ഹായ് $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'നിങ്ങളുടെ യാത്രയുടെ $days-ാം ദിവസത്തിലാണ് നിങ്ങൾ. കാര്യങ്ങൾ സംസാരിക്കണമെന്ന് തോന്നുമ്പോഴെല്ലാം ഞാൻ ഇവിടെയുണ്ട്.';
  }

  @override
  String get quickPromptsLabel => 'ദ്രുത നിർദ്ദേശങ്ങൾ';

  @override
  String get promptCravingLabel => 'മദ്യത്തിനുള്ള ആഗ്രഹം';

  @override
  String get promptCravingSubtitle => 'വേഗത്തിൽ സ്വയം ശാന്തമാക്കൂ';

  @override
  String get promptMotivationLabel => 'പ്രചോദനം വേണം';

  @override
  String get promptMotivationSubtitle => 'ബുദ്ധിമുട്ടുള്ളപ്പോൾ ഒരു ഉത്തേജനം';

  @override
  String get promptSocialLabel => 'സാമൂഹിക സാഹചര്യം';

  @override
  String get promptSocialSubtitle => 'ഒരു കൂടിക്കാഴ്ച കൈകാര്യം ചെയ്യുക';

  @override
  String get promptSlippedLabel => 'ഞാൻ വഴുതി';

  @override
  String get promptSlippedSubtitle => 'വിധിയില്ല, പിന്തുണ മാത്രം';

  @override
  String get typeMessageHint => 'ഒരു സന്ദേശം ടൈപ്പ് ചെയ്യുക...';

  @override
  String get editProfileTitle => 'പ്രൊഫൈൽ എഡിറ്റ് ചെയ്യുക';

  @override
  String couldNotSaveProfile(String error) {
    return 'പ്രൊഫൈൽ സംരക്ഷിക്കാനായില്ല: $error';
  }

  @override
  String get heightCmLabel => 'ഉയരം (cm)';

  @override
  String get weightKgLabel => 'ഭാരം (kg)';

  @override
  String get saveChangesLabel => 'മാറ്റങ്ങൾ സംരക്ഷിക്കുക';

  @override
  String get premiumBadgeLabel => 'PREMIUM';

  @override
  String get featureAdvancedInsights => 'വിപുലമായ ഇൻസൈറ്റുകളും അനലിറ്റിക്സും';

  @override
  String get featureUnlimitedJournal => 'പരിധിയില്ലാത്ത ജേണൽ എൻട്രികൾ';

  @override
  String get featureUnlimitedChat => 'AI കോച്ചുമായി പരിധിയില്ലാത്ത ചാറ്റ്';

  @override
  String get featureCommunityGroups => 'എക്സ്ക്ലൂസീവ് കമ്മ്യൂണിറ്റി ഗ്രൂപ്പുകൾ';

  @override
  String get featurePrioritySupport => 'മുൻഗണനാ വിദഗ്ധ പിന്തുണ';

  @override
  String get featureThemePacks => 'കസ്റ്റം തീം പാക്കുകൾ';

  @override
  String get featureDataExport => 'ഡാറ്റ എക്സ്പോർട്ട്';

  @override
  String get featureAdFree => 'പരസ്യരഹിത അനുഭവം';

  @override
  String get premiumMemberTitle => 'നിങ്ങൾ Premium അംഗമാണ്';

  @override
  String get unlockFullRecoveryTitle =>
      'നിങ്ങളുടെ പൂർണ്ണ വീണ്ടെടുക്കൽ\nഅനുഭവം അൺലോക്ക് ചെയ്യുക';

  @override
  String get premiumMemberSubtitle =>
      'നിങ്ങളുടെ വീണ്ടെടുക്കൽ യാത്രയെ പിന്തുണച്ചതിന് നന്ദി — താഴെയുള്ള എല്ലാ Premium സവിശേഷതകളും അൺലോക്ക് ചെയ്തിട്ടുണ്ട്.';

  @override
  String get premiumJoinSubtitle =>
      'ഞങ്ങളുടെ Premium ഉപകരണങ്ങളും വ്യക്തിഗതമാക്കിയ പിന്തുണയും ഉപയോഗിച്ച്\nതങ്ങളുടെ വീണ്ടെടുക്കൽ യാത്ര വേഗത്തിലാക്കുന്ന\nആയിരക്കണക്കിന് ആളുകളുടെ സമൂഹത്തിൽ ചേരൂ.';

  @override
  String get monthlyPlanLabel => 'പ്രതിമാസം';

  @override
  String get perMonthSuffix => '/മാസം';

  @override
  String get cancelAnytimeLabel => 'എപ്പോൾ വേണമെങ്കിലും റദ്ദാക്കാം';

  @override
  String get yearlyPlanLabel => 'വാർഷികം';

  @override
  String billedAnnuallyLabel(String amount) {
    return '$amount എന്ന നിരക്കിൽ വാർഷികമായി ഈടാക്കും';
  }

  @override
  String get bestValueLabel => 'മികച്ച മൂല്യം';

  @override
  String get alreadyPremiumLabel => 'നിങ്ങൾ Premium ആണ് ✓';

  @override
  String get startPremiumLabel => 'Premium ആരംഭിക്കുക';

  @override
  String get manageSubscriptionLabel =>
      'നിങ്ങളുടെ ഉപകരണത്തിന്റെ സബ്സ്ക്രിപ്ഷൻ ക്രമീകരണങ്ങളിൽ നിന്ന് നിയന്ത്രിക്കുകയോ റദ്ദാക്കുകയോ ചെയ്യുക.';

  @override
  String get noCommitmentLabel =>
      'പ്രതിബദ്ധതയില്ല. എപ്പോൾ വേണമെങ്കിലും റദ്ദാക്കാം.';

  @override
  String get continueFreePlanLabel => 'സൗജന്യ പ്ലാനിൽ തുടരുക';

  @override
  String get backToHomeLabel => 'ഹോമിലേക്ക് മടങ്ങുക';

  @override
  String get cancelPremiumLabel => 'Premium റദ്ദാക്കുക';

  @override
  String get cancelPremiumTitle => 'Premium റദ്ദാക്കണോ?';

  @override
  String get cancelPremiumMessage =>
      'പരിധിയില്ലാത്ത ജേണൽ എൻട്രികൾ, പരിധിയില്ലാത്ത കോച്ച് ചാറ്റ്, സ്റ്റാറ്റ്സ് ഇൻസൈറ്റുകൾ, പ്രതിവാര റിപ്പോർട്ടുകൾ എന്നിവയിലേക്കുള്ള ആക്സസ് നിങ്ങൾക്ക് നഷ്ടപ്പെടും. നിങ്ങൾക്ക് എപ്പോൾ വേണമെങ്കിലും വീണ്ടും സബ്സ്ക്രൈബ് ചെയ്യാം.';

  @override
  String get keepPremiumLabel => 'Premium നിലനിർത്തുക';

  @override
  String get nowPremiumMessage =>
      'നിങ്ങൾ ഇപ്പോൾ Premium ആണ്! നിങ്ങളുടെ പൂർണ്ണ വീണ്ടെടുക്കൽ അനുഭവം ആസ്വദിക്കൂ.';

  @override
  String get premiumCancelledMessage =>
      'Premium റദ്ദാക്കി. നിങ്ങൾ സൗജന്യ പ്ലാനിലേക്ക് മടങ്ങിയിരിക്കുന്നു.';

  @override
  String get termsOfUseLabel => 'ഉപയോഗ നിബന്ധനകൾ';

  @override
  String get navHomeLabel => 'ഹോം';

  @override
  String get navStatsLabel => 'സ്ഥിതിവിവരക്കണക്കുകൾ';

  @override
  String get navJournalLabel => 'ജേണൽ';

  @override
  String get navBadgesLabel => 'ബാഡ്ജുകൾ';

  @override
  String get navProfileLabel => 'പ്രൊഫൈൽ';

  @override
  String get recoveryGoalsTitle => 'വീണ്ടെടുക്കൽ ലക്ഷ്യങ്ങൾ';

  @override
  String get drinksPerWeekLabel => 'ആഴ്ചയിലെ പാനീയങ്ങൾ';

  @override
  String get quitReasonsLabel => 'നിർത്താനുള്ള കാരണങ്ങൾ';

  @override
  String get quitReasonsHelperText =>
      'ഒന്നിലധികം കാരണങ്ങൾ കോമ ഉപയോഗിച്ച് വേർതിരിക്കുക.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'വീണ്ടെടുക്കൽ ലക്ഷ്യങ്ങൾ സംരക്ഷിക്കാനായില്ല: $error';
  }

  @override
  String get goalHint => 'ഉദാ., പൂർണ്ണമായും നിർത്തുക';

  @override
  String get drinksPerWeekHint => 'ഉദാ., 12';

  @override
  String get quitReasonsHint => 'ഉദാ., ആരോഗ്യം, കുടുംബം, പണം';

  @override
  String get todaysPrompt => 'ഇന്നത്തെ ചോദ്യം';

  @override
  String get defaultJournalPrompt => 'ഇന്ന് നിങ്ങളുടെ മനസ്സിൽ എന്താണ്?';

  @override
  String get aiJournalInsights => 'AI ജേണൽ ഇൻസൈറ്റുകൾ';

  @override
  String get unlockJournalInsightsMessage =>
      'നിങ്ങളുടെ ജേണൽ എൻട്രികളിൽ നിന്നുള്ള പ്രതിവാര പാറ്റേണുകളും മാനസികാവസ്ഥയിലെ പ്രവണതകളും വ്യക്തിഗതമാക്കിയ ഇൻസൈറ്റുകളും അൺലോക്ക് ചെയ്യുക.';

  @override
  String get notEnoughJournalData =>
      'ഇതുവരെ മതിയായ ഡാറ്റയില്ല — ഈ ആഴ്ച കുറച്ച് എൻട്രികൾ എഴുതുകയും പിന്നീട് വീണ്ടും പരിശോധിക്കുകയും ചെയ്യുക.';

  @override
  String get openEntry => 'തുറക്കുക';

  @override
  String get editEntry => 'എഡിറ്റ് ചെയ്യുക';

  @override
  String get deleteEntry => 'ഇല്ലാതാക്കുക';

  @override
  String get searchJournalEntries => 'എൻട്രികൾ തിരയുക...';

  @override
  String get writeNewEntry => 'പുതിയ എൻട്രി എഴുതുക';

  @override
  String get recentEntries => 'സമീപകാല എൻട്രികൾ';

  @override
  String get noJournalEntriesYet =>
      'ഇതുവരെ ജേണൽ എൻട്രികളില്ല — മുകളിൽ നിങ്ങളുടെ ആദ്യ പ്രതിഫലനം എഴുതുക.';

  @override
  String get noEntriesMatchFilters =>
      'നിങ്ങളുടെ ഫിൽട്ടറുകളുമായി പൊരുത്തപ്പെടുന്ന എൻട്രികളില്ല.';

  @override
  String get weeklyJournalLimitReached => 'പ്രതിവാര പരിധി കഴിഞ്ഞു';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'ഈ ആഴ്ചയിലെ എല്ലാ $limit സൗജന്യ ജേണൽ എൻട്രികളും നിങ്ങൾ ഉപയോഗിച്ചു. പരിധിയില്ലാത്ത എൻട്രികൾക്കായി Premium-ലേക്ക് അപ്ഗ്രേഡ് ചെയ്യുക.';
  }

  @override
  String get newEntry => 'പുതിയ എൻട്രി';

  @override
  String get writeYourThoughts => 'നിങ്ങളുടെ ചിന്തകൾ എഴുതുക';

  @override
  String get saveEntry => 'എൻട്രി സംരക്ഷിക്കുക';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return 'ഈ ആഴ്ച $limit സൗജന്യ എൻട്രികളിൽ $remaining ബാക്കി';
  }

  @override
  String get deleteEntryQuestion => 'എൻട്രി ഇല്ലാതാക്കണോ?';

  @override
  String get deleteEntryConfirmation =>
      'ഈ എൻട്രി ശാശ്വതമായി ഇല്ലാതാക്കപ്പെടും. ഇത് പഴയപടിയാക്കാനാകില്ല.';

  @override
  String get journalEntryNotFound => 'എൻട്രി കണ്ടെത്തിയില്ല';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'ഈ ജേണൽ എൻട്രി ഇല്ലാതാക്കിയിരിക്കാം.';

  @override
  String get goBack => 'തിരികെ പോകുക';

  @override
  String get journalEntryTitle => 'ജേണൽ എൻട്രി';

  @override
  String get moodStruggling => 'പോരാടുന്നു';

  @override
  String get moodUnwell => 'അസ്വാസ്ഥ്യം';

  @override
  String get moodNeutral => 'നിഷ്പക്ഷം';

  @override
  String get whatHappenedToday => 'ഇന്ന് എന്താണ് സംഭവിച്ചത്?';

  @override
  String get trigger => 'ട്രിഗർ';

  @override
  String get whatHelped => 'എന്താണ് സഹായിച്ചത്';

  @override
  String get whatIllTryNextTime => 'അടുത്ത തവണ ഞാൻ ശ്രമിക്കുന്നത്';

  @override
  String get journalPrivacyMessage =>
      'നിങ്ങളുടെ പ്രതിഫലനം സ്വകാര്യമാണ്, നിങ്ങളുടെ ജേണലിൽ സംരക്ഷിച്ചിരിക്കുന്നു.';

  @override
  String get unlocked => 'അൺലോക്ക് ചെയ്തു';

  @override
  String daysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '',
      one: '',
    );
    return '$count ദിവസം$_temp0 ബാക്കി';
  }

  @override
  String daysCount(int count) {
    return '$count ദിവസങ്ങൾ';
  }

  @override
  String get firstReflection => 'ആദ്യ\nപ്രതിഫലനം';

  @override
  String get oneJournalEntry => '1 ജേണൽ എൻട്രി';

  @override
  String get openBook => 'പുസ്തകം തുറക്കുക';

  @override
  String get tenJournalEntries => '10 ജേണൽ എൻട്രികൾ';

  @override
  String get dedicatedWriter => 'സമർപ്പിത\nഎഴുത്തുകാരൻ';

  @override
  String get thirtyJournalEntries => '30 ജേണൽ എൻട്രികൾ';

  @override
  String get firstConversation => 'ആദ്യ\nസംഭാഷണം';

  @override
  String get oneAiCoachChat => '1 AI കോച്ച് ചാറ്റ്';

  @override
  String get keepTalking => 'സംസാരിക്കുന്നത് തുടരുക';

  @override
  String get fiveConversations => '5 സംഭാഷണങ്ങൾ';

  @override
  String get coachCompanion => 'കോച്ച്\nസഹായി';

  @override
  String get twentyConversations => '20 സംഭാഷണങ്ങൾ';

  @override
  String get checkInHabit => 'ചെക്ക്-ഇൻ\nശീലം';

  @override
  String get sevenCheckIns => '7 ചെക്ക്-ഇന്നുകൾ';

  @override
  String get consistencyPro => 'സ്ഥിരതയുടെ\nവിദഗ്ധൻ';

  @override
  String get thirtyCheckIns => '30 ചെക്ക്-ഇന്നുകൾ';

  @override
  String get dedicatedJourney => 'സമർപ്പിത\nയാത്ര';

  @override
  String get hundredCheckIns => '100 ചെക്ക്-ഇന്നുകൾ';

  @override
  String get goalGetter => 'ലക്ഷ്യസാധകൻ';

  @override
  String get threeGoalsCompleted => '3 ലക്ഷ്യങ്ങൾ പൂർത്തിയാക്കി';

  @override
  String get goalAchiever => 'ലക്ഷ്യ\nസാധകൻ';

  @override
  String get tenGoalsCompleted => '10 ലക്ഷ്യങ്ങൾ പൂർത്തിയാക്കി';

  @override
  String get firstSavings => 'ആദ്യ\nസമ്പാദ്യം';

  @override
  String get fiveHundredSaved => '\$500 ലാഭിച്ചു';

  @override
  String get smartSaver => 'ബുദ്ധിമാനായ സമ്പാദകൻ';

  @override
  String get oneThousandSaved => '\$1,000 ലാഭിച്ചു';

  @override
  String get bigSaver => 'വലിയ സമ്പാദകൻ';

  @override
  String get fiveThousandSaved => '\$5,000 ലാഭിച്ചു';

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
      'തുടരൂ — നിങ്ങളുടെ ആദ്യ നേട്ടം നിങ്ങളെ കാത്തിരിക്കുന്നു!';

  @override
  String get badgesAndMilestones => 'ബാഡ്ജുകളും നേട്ടങ്ങളും';

  @override
  String get yourMilestoneJourney => 'നിങ്ങളുടെ നേട്ട യാത്ര';

  @override
  String milestonesAchieved(int count) {
    return '$count നേട്ടങ്ങൾ കൈവരിച്ചു.\nകാണാൻ ടാപ്പ് ചെയ്യുക';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'നിങ്ങളുടെ യാത്രയിൽ ആകെ $total നേട്ടങ്ങളിൽ $unlocked എണ്ണം നിങ്ങൾ അൺലോക്ക് ചെയ്തു.';
  }

  @override
  String get remaining => 'ബാക്കി';

  @override
  String get complete => 'പൂർത്തിയായി';

  @override
  String get nextMilestone => 'അടുത്ത നേട്ടം';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% പൂർത്തിയായി';
  }

  @override
  String get sobrietyMilestones => 'മദ്യരഹിത നേട്ടങ്ങൾ';

  @override
  String get journeyBadges => 'യാത്രാ ബാഡ്ജുകൾ';

  @override
  String get bronze => 'വെങ്കലം';

  @override
  String get silver => 'വെള്ളി';

  @override
  String get gold => 'സ്വർണം';

  @override
  String get platinum => 'പ്ലാറ്റിനം';

  @override
  String get diamond => 'വജ്രം';

  @override
  String get analyzingYourJourney => 'നിങ്ങളുടെ യാത്ര വിശകലനം ചെയ്യുന്നു...';

  @override
  String get aiCreatingSanctuary =>
      'നിങ്ങൾക്കായി വ്യക്തിഗതമാക്കിയ ഒരു സുരക്ഷിത ഇടം ഞങ്ങളുടെ AI സൃഷ്ടിക്കുന്നു.';

  @override
  String get understandingHabits => 'ശീലങ്ങൾ മനസ്സിലാക്കുന്നു...';

  @override
  String get calculatingBaseline => 'നിങ്ങളുടെ അടിസ്ഥാന നില കണക്കാക്കുന്നു...';

  @override
  String get personalizingPlan => 'നിങ്ങളുടെ പ്ലാൻ വ്യക്തിഗതമാക്കുന്നു...';

  @override
  String get finalizingSanctuary =>
      'നിങ്ങളുടെ സുരക്ഷിത ഇടം പൂർത്തിയാക്കുന്നു...';

  @override
  String get creatingYourPlan => 'നിങ്ങളുടെ പ്ലാൻ സൃഷ്ടിക്കുന്നു...';

  @override
  String get personalizedPlanError =>
      'നിങ്ങളുടെ വ്യക്തിഗതമാക്കിയ പ്ലാൻ സൃഷ്ടിക്കാനായില്ല. ദയവായി വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get retry => 'വീണ്ടും ശ്രമിക്കുക';

  @override
  String get breathInhale => 'ശ്വസിക്കുക';

  @override
  String get breathHold => 'പിടിക്കുക';

  @override
  String get breathExhale => 'ശ്വാസം പുറത്തുവിടുക';

  @override
  String get breathDone => 'പൂർത്തിയായി';

  @override
  String get breathGreatJob => 'മികച്ച ജോലി!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count സെഷനുകൾ ഇന്ന്',
      one: '$count സെഷൻ ഇന്ന്',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'വ്യായാമം അവസാനിപ്പിക്കുക';

  @override
  String get done => 'പൂർത്തിയായി';

  @override
  String get noCopingTipsYet => 'ഇതുവരെ നേരിടാനുള്ള നുറുങ്ങുകളില്ല';

  @override
  String get copingStrategiesWillAppear =>
      'നിങ്ങളുടെ വീണ്ടെടുക്കൽ പ്ലാൻ സൃഷ്ടിക്കുന്നത് പൂർത്തിയായാൽ വ്യക്തിഗതമാക്കിയ നേരിടൽ തന്ത്രങ്ങൾ ഇവിടെ കാണിക്കും.';

  @override
  String get strategiesTailoredToTriggers =>
      'നിങ്ങളുടെ ട്രിഗറുകൾക്കനുസരിച്ചുള്ള തന്ത്രങ്ങൾ';

  @override
  String get cravingsPeakAndPass => 'ആഗ്രഹങ്ങൾ ഉയർന്ന്\nകടന്നുപോകും';

  @override
  String get rideTheWaveDescription =>
      'മിക്ക ആഗ്രഹങ്ങളും 15 മിനിറ്റിനുള്ളിൽ കടന്നുപോകും. അതനുസരിച്ച് പ്രവർത്തിക്കേണ്ടതില്ല — ഞങ്ങളോടൊപ്പം അതിനെ അതിജീവിക്കുക.';

  @override
  String get stayWithIt => 'തുടരുക';

  @override
  String get youMadeIt => 'നിങ്ങൾ വിജയിച്ചു';

  @override
  String get readyWhenYouAre => 'നിങ്ങൾ തയ്യാറാകുമ്പോൾ';

  @override
  String get rideItAgain => 'വീണ്ടും അതിജീവിക്കുക';

  @override
  String get start15MinuteTimer => '15 മിനിറ്റ് ടൈമർ ആരംഭിക്കുക';

  @override
  String get rideTheWaveCompletedMessage =>
      'നിങ്ങൾ ആ തരംഗത്തെ അതിജീവിച്ചു. അതാണ് യഥാർത്ഥ ശക്തി. 💪';

  @override
  String get myProgress => 'എന്റെ പുരോഗതി';

  @override
  String get weekLabel => 'ആഴ്ച';

  @override
  String get monthLabel => 'മാസം';

  @override
  String get allLabel => 'എല്ലാം';

  @override
  String get daysSoberStatLabel => 'മദ്യരഹിത\nദിവസങ്ങൾ';

  @override
  String get savedStatLabel => 'ലാഭിച്ചത്';

  @override
  String get avoidedStatLabel => 'ഒഴിവാക്കിയത്';

  @override
  String get moodTrends => 'മാനസികാവസ്ഥാ പ്രവണതകൾ';

  @override
  String get cravingsPattern => 'ആഗ്രഹങ്ങളുടെ മാതൃക';

  @override
  String get unlockLabel => 'അൺലോക്ക് ചെയ്യുക';

  @override
  String get unlockFullStats => 'പൂർണ്ണ സ്ഥിതിവിവരക്കണക്കുകൾ അൺലോക്ക് ചെയ്യുക';

  @override
  String get premiumStatsMessage =>
      'മാനസികാവസ്ഥാ പ്രവണതകളും ആഗ്രഹങ്ങളുടെ മാതൃകകളും Premium സവിശേഷതകളാണ്. നിങ്ങളുടെ പൂർണ്ണ സ്ഥിതിവിവരക്കണക്കുകൾ കാണാൻ അപ്ഗ്രേഡ് ചെയ്യുക.';

  @override
  String get healthMilestonesWillAppear =>
      'നിങ്ങളുടെ ആരോഗ്യ നേട്ടങ്ങൾ ഇവിടെ കാണിക്കും.';

  @override
  String get healthMilestones => 'ആരോഗ്യ നേട്ടങ്ങൾ';

  @override
  String dayNumber(int day) {
    return '$day-ാം ദിവസം';
  }

  @override
  String get soberLabel => 'മദ്യരഹിതം';

  @override
  String get slipLabel => 'വഴുതി';

  @override
  String get noDataLabel => 'ഡാറ്റയില്ല';

  @override
  String get milestone24Hours => '24 മണിക്കൂർ';

  @override
  String get milestoneOneWeek => 'ഒരു ആഴ്ച';

  @override
  String get milestoneOneMonth => 'ഒരു മാസം';

  @override
  String get milestoneThreeMonths => 'മൂന്ന് മാസം';

  @override
  String get milestoneSixMonths => 'ആറ് മാസം';

  @override
  String get milestoneOneYear => 'ഒരു വർഷം';

  @override
  String milestoneDayCount(int day) {
    return '$day-ാം ദിവസത്തെ നേട്ടം';
  }

  @override
  String get maybeLaterLabel => 'ഒരുപക്ഷേ പിന്നീട്';

  @override
  String get cancelLabel => 'റദ്ദാക്കുക';
}
