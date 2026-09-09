// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tamil (`ta`).
class AppLocalizationsTa extends AppLocalizations {
  AppLocalizationsTa([String locale = 'ta']) : super(locale);

  @override
  String get skip => 'தவிர்க்கவும்';

  @override
  String get continueButton => 'தொடரவும்';

  @override
  String get getStarted => 'தொடங்குங்கள்';

  @override
  String get onboardingTitle1 =>
      'உங்கள் வாழ்க்கையின் கட்டுப்பாட்டை எடுத்துக்கொள்ளுங்கள்';

  @override
  String get onboardingSubtitle1 =>
      'உங்கள் பயணத்தைக் கண்காணித்து, ஒவ்வொரு சாதனையையும் கொண்டாடி, ஒவ்வொரு நாளும் ஆரோக்கியமாகுங்கள்.';

  @override
  String get onboardingTitle2 => 'உங்கள் AI மீட்பு துணை';

  @override
  String get onboardingSubtitle2 =>
      'உங்கள் பயணத்திற்கு ஏற்ப வடிவமைக்கப்பட்ட தனிப்பட்ட வழிகாட்டுதல், ஆரோக்கியமான பழக்கங்கள், ஊக்க நினைவூட்டல்கள் மற்றும் முன்னேற்ற அறிக்கைகளைப் பெறுங்கள்.';

  @override
  String get goodMorning => 'காலை வணக்கம்';

  @override
  String get goodAfternoon => 'மதிய வணக்கம்';

  @override
  String get goodEvening => 'மாலை வணக்கம்';

  @override
  String get goodNight => 'இரவு வணக்கம்';

  @override
  String get embracingClarity => 'ஒவ்வொரு நாளும் தெளிவை நோக்கி முன்னேறுங்கள்.';

  @override
  String get streakLabel => 'தொடர்ச்சி';

  @override
  String get goalLabel => 'இலக்கு';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count நாட்கள்',
      one: '$count நாள்',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'Premium திட்டம்';

  @override
  String get premiumPlanSubtitle =>
      'உங்கள் முழுமையான மீட்பு அனுபவத்தைத் திறக்கவும்';

  @override
  String get accountAndSupport => 'கணக்கு மற்றும் ஆதரவு';

  @override
  String get privacyPolicy => 'தனியுரிமைக் கொள்கை';

  @override
  String get privacyPolicySubtitle =>
      'தரவு பகிர்வு மற்றும் கணக்கு பாதுகாப்பை நிர்வகிக்கவும்';

  @override
  String get termsOfService => 'சேவை விதிமுறைகள்';

  @override
  String get termsOfServiceSubtitle =>
      'அடிக்கடி கேட்கப்படும் கேள்விகள், எங்களைத் தொடர்புகொள்ளுதல் மற்றும் வளங்கள்';

  @override
  String get shareApp => 'பயன்பாட்டைப் பகிரவும்';

  @override
  String get shareAppSubtitle => 'பயன்பாட்டை உங்கள் நண்பர்களுடன் பகிரவும்';

  @override
  String get resetData => 'தரவை மீட்டமைக்கவும்';

  @override
  String get resetDataSubtitle =>
      'இந்த சாதனத்தில் சேமிக்கப்பட்ட அனைத்தையும் அழிக்கவும்';

  @override
  String get resetAllDataTitle => 'அனைத்து தரவையும் மீட்டமைக்கவா?';

  @override
  String get resetAllDataMessage =>
      'இது இந்த சாதனத்தில் சேமிக்கப்பட்ட சுயவிவரம், ஜர்னல் பதிவுகள் மற்றும் முன்னேற்றம் அனைத்தையும் அழிக்கும் — இதை மீண்டும் மாற்ற முடியாது.';

  @override
  String get cancel => 'ரத்துசெய்';

  @override
  String get reset => 'மீட்டமை';

  @override
  String get chooseFromGallery => 'Gallery-யிலிருந்து தேர்வு செய்யவும்';

  @override
  String get takePhoto => 'புகைப்படம் எடுக்கவும்';

  @override
  String get removePhoto => 'புகைப்படத்தை அகற்றவும்';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'புகைப்படத்தைப் புதுப்பிக்க முடியவில்லை: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'புகைப்படத்தை அகற்ற முடியவில்லை: $error';
  }

  @override
  String get photoTooLarge =>
      'சுருக்கிய பிறகும் இந்தப் புகைப்படம் மிகவும் பெரியதாக உள்ளது — வேறு புகைப்படத்தை முயற்சிக்கவும்.';

  @override
  String get unableToLoadProfile => 'உங்கள் சுயவிவரத்தை ஏற்ற முடியவில்லை';

  @override
  String get pleaseTryAgain => 'மீண்டும் முயற்சிக்கவும்.';

  @override
  String get tryAgain => 'மீண்டும் முயற்சிக்கவும்';

  @override
  String get profileNotFound => 'சுயவிவரம் கிடைக்கவில்லை';

  @override
  String get refresh => 'புதுப்பிக்கவும்';

  @override
  String get noProfileDataFound =>
      'இந்த சாதனத்தில் இதுவரை சுயவிவரத் தரவு எதுவும் இல்லை.';

  @override
  String couldNotResetData(String error) {
    return 'தரவை மீட்டமைக்க முடியவில்லை: $error';
  }

  @override
  String get navHome => 'முகப்பு';

  @override
  String get navStats => 'புள்ளிவிவரங்கள்';

  @override
  String get navJournal => 'ஜர்னல்';

  @override
  String get navBadges => 'பேட்ஜ்கள்';

  @override
  String get navProfile => 'சுயவிவரம்';

  @override
  String featureComingSoon(String feature) {
    return '$feature விரைவில் கிடைக்கும்.';
  }

  @override
  String get appWordmark => 'நலவாழ்வு';

  @override
  String get appTitle => 'மது அருந்துவதை நிறுத்துங்கள்';

  @override
  String get splashSubtitle =>
      'மது இல்லாத வாழ்க்கையை நோக்கி\nமுதல் அடியை எடுத்து வையுங்கள்';

  @override
  String get preparingJourney => 'உங்கள் பயணத்தைத்\nதயார்படுத்துகிறது';

  @override
  String get taskMorningMeditation => 'காலை தியானம் (10 நிமி)';

  @override
  String get taskReadChapter =>
      '\"The Sober Diaries\" புத்தகத்தின் அத்தியாயம் 4-ஐப் படிக்கவும்';

  @override
  String get taskEveningJournal => 'மாலை நன்றியுணர்வு ஜர்னல்';

  @override
  String get close => 'மூடவும்';

  @override
  String get youAreDoingGreat => 'நீங்கள் சிறப்பாகச் செய்கிறீர்கள்!';

  @override
  String get shareMilestone => 'மைல்கல்லைப் பகிரவும்';

  @override
  String shareMilestoneMessage(int days) {
    return 'எனது மீட்பு பயணத்தின் $days-வது நாளில் இருக்கிறேன்! 💪';
  }

  @override
  String get shareMilestoneSubject => 'எனது மீட்பு பயண மைல்கல்';

  @override
  String get weeklyReportReadyTitle => 'உங்கள் வாராந்திர அறிக்கை தயாராக உள்ளது';

  @override
  String get weeklyReportReadySubtitle =>
      'உங்கள் வாரம் எப்படி இருந்தது என்பதைப் பார்க்க தட்டவும்';

  @override
  String get howAreYouFeeling => 'நீங்கள் எப்படி உணர்கிறீர்கள்?';

  @override
  String get moodTough => 'கடினமாக உள்ளது';

  @override
  String get moodOkay => 'பரவாயில்லை';

  @override
  String get moodGood => 'நன்று';

  @override
  String get moneySaved => 'சேமித்த பணம்';

  @override
  String get caloriesSaved => 'சேமிக்கப்பட்ட கலோரிகள்';

  @override
  String get healthScore => 'ஆரோக்கிய மதிப்பெண்';

  @override
  String get drinksAvoided => 'தவிர்த்த பானங்கள்';

  @override
  String get estimated => 'மதிப்பிடப்பட்டது';

  @override
  String get aiGenerated => 'AI உருவாக்கியது';

  @override
  String get daysCapsLabel => 'நாட்கள்';

  @override
  String get todaysMotivation => 'இன்றைய ஊக்கம்';

  @override
  String get defaultMotivationQuote =>
      'உங்கள் உறுதியை வெற்றிகரமாகக் காப்பாற்றியுள்ளீர்கள். நேர்மறையான மாற்றத்தின் அலை மீது தொடர்ந்து பயணியுங்கள்.';

  @override
  String get talkToCoach => 'Coach-உடன் பேசவும்';

  @override
  String get havingACraving => 'எனக்கு மது அருந்த வேண்டும் என்ற ஆசை வருகிறது';

  @override
  String get unlockWeeklyReportsTitle => 'வாராந்திர அறிக்கைகளைத் திறக்கவும்';

  @override
  String get unlockWeeklyReportsMessage =>
      'ஒவ்வொரு வாரமும் உங்கள் மது இல்லாத நாட்கள், மனநிலைப் போக்குகள் மற்றும் தனிப்பட்ட AI கருத்துகளைப் பார்க்கவும். திறக்க Premium-க்கு மேம்படுத்தவும்.';

  @override
  String get maybeLater => 'பின்னர் பார்க்கலாம்';

  @override
  String get upgrade => 'மேம்படுத்தவும்';

  @override
  String get weeklyReportTitle => 'வாராந்திர அறிக்கை';

  @override
  String get weeklyReportsPremiumTitle =>
      'வாராந்திர அறிக்கைகள் Premium அம்சமாகும்';

  @override
  String get weeklyReportsPremiumMessage =>
      'ஒவ்வொரு வாரமும் உங்கள் மது இல்லாத நாட்கள், மனநிலைப் போக்குகள், மது அருந்தும் ஆசைகள் மற்றும் தனிப்பட்ட AI கருத்துகளைப் பார்க்கவும்.';

  @override
  String get upgradeToPremium => 'Premium-க்கு மேம்படுத்தவும்';

  @override
  String get couldNotGenerateReport =>
      'இப்போது உங்கள் அறிக்கையை உருவாக்க முடியவில்லை.';

  @override
  String get tryAgainLower => 'மீண்டும் முயற்சிக்கவும்';

  @override
  String get statSoberDays => 'மது இல்லாத நாட்கள்';

  @override
  String get statAvgMood => 'சராசரி மனநிலை';

  @override
  String get statCravings => 'மது அருந்தும் ஆசைகள்';

  @override
  String get statMoneySaved => 'சேமித்த பணம்';

  @override
  String get coachFeedback => 'Coach கருத்து';

  @override
  String get journalInsights => 'ஜர்னல் நுண்ணறிவுகள்';

  @override
  String get next => 'அடுத்து';

  @override
  String get question1Title => 'உங்கள் இலக்கு என்ன';

  @override
  String get question1Subtitle =>
      'உங்களுக்கு மிகவும் முக்கியமான\nஇலக்கைத் தேர்ந்தெடுக்கவும்';

  @override
  String get goalQuitCompletely => 'முழுமையாக நிறுத்துதல்';

  @override
  String get goalReduceDrinking => 'மது அருந்துவதைக் குறைத்தல்';

  @override
  String get goalTakeABreak => 'இடைவேளை எடுத்துக்கொள்ளுதல்';

  @override
  String get goalBuildHealthierHabits => 'ஆரோக்கியமான பழக்கங்களை உருவாக்குதல்';

  @override
  String get question3Title => 'உங்கள்\nவழக்கத்தைப் பற்றி சொல்லுங்கள்';

  @override
  String get drinksPerWeek => 'வாரத்திற்கு அருந்தும் பானங்கள்';

  @override
  String get moneySpentPerWeek => 'வாரத்திற்கு செலவிடும் பணம்';

  @override
  String get drinkingLevel => 'மது அருந்தும் நிலை';

  @override
  String get triggersLabel => 'தூண்டுதல்கள்';

  @override
  String get levelSocial => 'சமூக ரீதியானது';

  @override
  String get levelRegular => 'வழக்கமானது';

  @override
  String get levelHeavy => 'அதிகம்';

  @override
  String get levelDependent => 'சார்ந்திருப்பது';

  @override
  String get triggerStress => 'மன அழுத்தம்';

  @override
  String get triggerLoneliness => 'தனிமை';

  @override
  String get triggerHabit => 'பழக்கம்';

  @override
  String get triggerSadness => 'சோகம்';

  @override
  String get triggerAnger => 'கோபம்';

  @override
  String get triggerBoredom => 'சலிப்பு';

  @override
  String get triggerSocialPressure => 'சமூக அழுத்தம்';

  @override
  String get triggerCelebration => 'கொண்டாட்டம்';

  @override
  String get triggerSleepProblems => 'தூக்கப் பிரச்சினைகள்';

  @override
  String get triggerWorkPressure => 'வேலை அழுத்தம்';

  @override
  String get question4Title => 'நீங்கள் ஏன் மாற்றத்தை விரும்புகிறீர்கள்?';

  @override
  String get question4Subtitle =>
      'உங்கள் காரணம் உங்களை ஊக்கத்துடன் வைத்திருக்க உதவும்.';

  @override
  String get reasonImproveHealth => 'என் ஆரோக்கியத்தை மேம்படுத்துதல்';

  @override
  String get reasonSaveMoney => 'பணத்தைச் சேமித்தல்';

  @override
  String get reasonFamily => 'குடும்பம்';

  @override
  String get reasonBetterSleep => 'சிறந்த தூக்கம்';

  @override
  String get reasonMentalClarity => 'மனத் தெளிவு';

  @override
  String get reasonFitness => 'உடற்தகுதி';

  @override
  String get reasonSelfRespect => 'சுயமரியாதை';

  @override
  String get reasonCareer => 'தொழில்';

  @override
  String get milestoneUnlockedLabel => 'மைல்கல் திறக்கப்பட்டது';

  @override
  String incredibleNamePrefix(String name) {
    return 'அற்புதம், $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount சேமிக்கப்பட்டது';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count தவிர்க்கப்பட்டது';
  }

  @override
  String get shareMyMilestone => 'என் மைல்கல்லைப் பகிரவும்';

  @override
  String get milestoneImageShareError =>
      'மைல்கல் படத்தை உருவாக்க முடியவில்லை. மீண்டும் முயற்சிக்கவும்.';

  @override
  String get dailyCheckInTitle => 'தினசரி Check-in';

  @override
  String get howAreYouFeelingToday => 'இன்று நீங்கள் எப்படி உணர்கிறீர்கள்?';

  @override
  String get honestAnswerHelp =>
      'உங்கள் நேர்மையான பதில் உங்களுக்கு சிறப்பாக ஆதரவளிக்க எங்களுக்கு உதவும்';

  @override
  String get didYouDrinkToday => 'இன்று மது அருந்தினீர்களா?';

  @override
  String get noLabel => 'இல்லை';

  @override
  String get yesLabel => 'ஆம்';

  @override
  String get cravingLevelNow => 'இப்போது மது அருந்தும் ஆசை எந்த அளவில் உள்ளது?';

  @override
  String get anythingOnMind => 'உங்கள் மனதில் ஏதேனும் உள்ளதா?';

  @override
  String get optionalLabel => '(விருப்பத்திற்குரியது)';

  @override
  String get dailyNoteHint =>
      'உங்கள் நாள், தூண்டுதல்கள், வெற்றிகள் பற்றி எழுதுங்கள்...';

  @override
  String get alreadyCheckedInToday =>
      'இன்றைய Check-in ஏற்கனவே செய்துவிட்டீர்கள்';

  @override
  String get saveCheckIn => 'Check-in-ஐ சேமிக்கவும்';

  @override
  String get checkInsHelpTrack =>
      'Check-in-கள் காலப்போக்கில் உங்கள் முன்னேற்றத்தைக் கண்காணிக்க உதவும்';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'இன்றைய Check-in-ஐ ஏற்கனவே முடித்துவிட்டீர்கள்.';

  @override
  String get pleaseAnswerBothQuestions =>
      'முதலில் மேலே உள்ள இரண்டு கேள்விகளுக்கும் பதிலளிக்கவும்';

  @override
  String get checkInSaved => 'Check-in சேமிக்கப்பட்டது';

  @override
  String get cravingNone => 'எதுவுமில்லை';

  @override
  String get cravingLow => 'குறைவு';

  @override
  String get cravingMedium => 'நடுத்தரம்';

  @override
  String get cravingStrong => 'அதிகம்';

  @override
  String get moodBad => 'மோசம்';

  @override
  String get moodLow => 'குறைவு';

  @override
  String get moodGreat => 'மிக நன்று';

  @override
  String get sosSupportTitle => 'SOS ஆதரவு';

  @override
  String notAloneMessage(String name) {
    return 'நீங்கள் தனியாக இல்லை, $name';
  }

  @override
  String get cravingsPassMessage =>
      'மது அருந்தும் ஆசைகள் கடந்து போகும். இந்த தருணத்தை சமாளிக்க கீழே உள்ள ஒன்றைத் தேர்ந்தெடுக்கவும்.';

  @override
  String get breathingExercise => 'சுவாசப் பயிற்சி';

  @override
  String get breathingExerciseSubtitle =>
      'வழிகாட்டப்பட்ட 4-7-8 நுட்பம், 2 நிமிடங்கள்';

  @override
  String get rideTheWave => 'அலையை எதிர்கொள்ளுங்கள்';

  @override
  String get rideTheWaveSubtitle =>
      '15 நிமிட டைமர் — ஆசைகள் எப்போதும் கடந்து போகும்';

  @override
  String get copingTips => 'சமாளிக்கும் குறிப்புகள்';

  @override
  String get copingTipsSubtitle =>
      'உங்கள் தூண்டுதல்களுக்கு ஏற்ப தனிப்பயனாக்கப்பட்ட உத்திகள்';

  @override
  String get talkToAiCoach => 'AI Coach-உடன் பேசவும்';

  @override
  String get talkToAiCoachSubtitle => 'உங்கள் மீட்பு துணையுடன் Chat செய்யவும்';

  @override
  String get callSomeone => 'யாருக்காவது அழைக்கவும்';

  @override
  String get callSomeoneSubtitle => 'உங்கள் நம்பகமான தொடர்பை அணுகவும்';

  @override
  String get contactsPermissionNeeded =>
      'ஒரு தொடர்புக்கு அழைக்க Contacts அனுமதி தேவை.';

  @override
  String get beatenCravingsPrefix => 'நீங்கள் மது அருந்தும் ஆசையை ';

  @override
  String beatenCravingsCount(int count) {
    return '$count முறை வென்றுள்ளீர்கள்';
  }

  @override
  String get beatenCravingsSuffix => ' முன்பும். மீண்டும் உங்களால் முடியும்.';

  @override
  String get tellUsAboutYourself => 'உங்களைப் பற்றி சொல்லுங்கள்';

  @override
  String get detailsSubtitle =>
      'இந்தத் தகவல் உங்கள் மீட்பு பயணத்தைத் தனிப்பயனாக்கவும் துல்லியமான நுண்ணறிவுகளை வழங்கவும் உதவும்.';

  @override
  String get nameLabel => 'பெயர்';

  @override
  String get nameHint => 'எ.கா., Alex Rivers';

  @override
  String get ageLabel => 'வயது';

  @override
  String get ageHint => 'எ.கா., 32';

  @override
  String get sexAssignedAtBirth => 'பிறப்பில் குறிப்பிடப்பட்ட பாலினம்';

  @override
  String get sexFemale => 'பெண்';

  @override
  String get sexMale => 'ஆண்';

  @override
  String get heightLabel => 'உயரம்';

  @override
  String get weightLabel => 'எடை';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'தினசரி வரம்பு எட்டப்பட்டது';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'இன்று கிடைக்கும் $limit இலவச செய்திகளையும் பயன்படுத்திவிட்டீர்கள். வரம்பற்ற Coach Chat-க்கு Premium-க்கு மேம்படுத்தவும்.';
  }

  @override
  String get coachConnectError =>
      'இப்போது இணைக்க முடியவில்லை. சிறிது நேரம் கழித்து மீண்டும் முயற்சிக்கவும்.';

  @override
  String get clearConversationTitle => 'உரையாடலை அழிக்கவா?';

  @override
  String get clearConversationMessage =>
      'இது உங்கள் Coach Chat வரலாற்றை நிரந்தரமாக அகற்றும்.';

  @override
  String get clearLabel => 'அழிக்கவும்';

  @override
  String get recoveryCoachTitle => 'மீட்பு Coach';

  @override
  String get onlineLabel => 'ஆன்லைன்';

  @override
  String get clearConversationMenuItem => 'உரையாடலை அழிக்கவும்';

  @override
  String chatGreeting(String name) {
    return 'வணக்கம் $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'நீங்கள் உங்கள் பயணத்தின் $days-வது நாளில் இருக்கிறீர்கள். விஷயங்களைப் பற்றி பேச விரும்பும் போதெல்லாம் நான் இங்கே இருக்கிறேன்.';
  }

  @override
  String get quickPromptsLabel => 'விரைவு தேர்வுகள்';

  @override
  String get promptCravingLabel => 'மது அருந்தும் ஆசை உள்ளது';

  @override
  String get promptCravingSubtitle => 'விரைவாக அமைதியடையுங்கள்';

  @override
  String get promptMotivationLabel => 'ஊக்கம் தேவை';

  @override
  String get promptMotivationSubtitle => 'கடினமாக இருக்கும்போது ஒரு ஊக்கம்';

  @override
  String get promptSocialLabel => 'சமூக சூழ்நிலை';

  @override
  String get promptSocialSubtitle => 'ஒரு சந்திப்பைச் சமாளிக்கவும்';

  @override
  String get promptSlippedLabel => 'நான் தவறிவிட்டேன்';

  @override
  String get promptSlippedSubtitle => 'தீர்ப்பு இல்லை, ஆதரவு மட்டுமே';

  @override
  String get typeMessageHint => 'செய்தியை உள்ளிடவும்...';

  @override
  String get editProfileTitle => 'சுயவிவரத்தைத் திருத்தவும்';

  @override
  String couldNotSaveProfile(String error) {
    return 'சுயவிவரத்தைச் சேமிக்க முடியவில்லை: $error';
  }

  @override
  String get heightCmLabel => 'உயரம் (cm)';

  @override
  String get weightKgLabel => 'எடை (kg)';

  @override
  String get saveChangesLabel => 'மாற்றங்களைச் சேமிக்கவும்';

  @override
  String get premiumBadgeLabel => 'PREMIUM';

  @override
  String get featureAdvancedInsights =>
      'மேம்பட்ட நுண்ணறிவுகள் மற்றும் பகுப்பாய்வுகள்';

  @override
  String get featureUnlimitedJournal => 'வரம்பற்ற ஜர்னல் பதிவுகள்';

  @override
  String get featureUnlimitedChat => 'AI Coach உடன் வரம்பற்ற Chat';

  @override
  String get featureCommunityGroups => 'பிரத்தியேக Community Groups';

  @override
  String get featurePrioritySupport => 'முன்னுரிமை நிபுணர் ஆதரவு';

  @override
  String get featureThemePacks => 'தனிப்பயன் Theme Packs';

  @override
  String get featureDataExport => 'தரவு ஏற்றுமதி';

  @override
  String get featureAdFree => 'விளம்பரமில்லா அனுபவம்';

  @override
  String get premiumMemberTitle => 'நீங்கள் Premium உறுப்பினர்';

  @override
  String get unlockFullRecoveryTitle =>
      'உங்கள் முழுமையான மீட்பு\nஅனுபவத்தைத் திறக்கவும்';

  @override
  String get premiumMemberSubtitle =>
      'உங்கள் மீட்பு பயணத்தை ஆதரித்ததற்கு நன்றி — கீழே உள்ள அனைத்து Premium அம்சங்களும் திறக்கப்பட்டுள்ளன.';

  @override
  String get premiumJoinSubtitle =>
      'எங்கள் Premium கருவிகள் மற்றும் தனிப்பட்ட ஆதரவுடன்\nதங்கள் குணமடையும் பயணத்தை வேகப்படுத்தும்\nஆயிரக்கணக்கானோரின் சமூகத்தில் இணையுங்கள்.';

  @override
  String get monthlyPlanLabel => 'மாதாந்திர';

  @override
  String get perMonthSuffix => '/மாதம்';

  @override
  String get cancelAnytimeLabel => 'எப்போது வேண்டுமானாலும் ரத்து செய்யலாம்';

  @override
  String get yearlyPlanLabel => 'வருடாந்திர';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'ஆண்டுக்கு $amount கட்டணம் வசூலிக்கப்படும்';
  }

  @override
  String get bestValueLabel => 'சிறந்த மதிப்பு';

  @override
  String get alreadyPremiumLabel => 'நீங்கள் Premium ✓';

  @override
  String get startPremiumLabel => 'Premium தொடங்கவும்';

  @override
  String get manageSubscriptionLabel =>
      'உங்கள் சாதனத்தின் subscription settings-இல் இருந்து நிர்வகிக்கவும் அல்லது ரத்து செய்யவும்.';

  @override
  String get noCommitmentLabel =>
      'எந்தக் கட்டுப்பாடும் இல்லை. எப்போது வேண்டுமானாலும் ரத்து செய்யலாம்.';

  @override
  String get continueFreePlanLabel => 'Free Plan-ஐத் தொடரவும்';

  @override
  String get backToHomeLabel => 'முகப்புக்குத் திரும்பவும்';

  @override
  String get cancelPremiumLabel => 'Premium-ஐ ரத்து செய்யவும்';

  @override
  String get cancelPremiumTitle => 'Premium-ஐ ரத்து செய்யவா?';

  @override
  String get cancelPremiumMessage =>
      'வரம்பற்ற ஜர்னல் பதிவுகள், வரம்பற்ற Coach Chat, புள்ளிவிவர நுண்ணறிவுகள் மற்றும் வாராந்திர அறிக்கைகளுக்கான அணுகலை இழப்பீர்கள். எப்போது வேண்டுமானாலும் மீண்டும் subscription எடுக்கலாம்.';

  @override
  String get keepPremiumLabel => 'Premium-ஐ வைத்திருக்கவும்';

  @override
  String get nowPremiumMessage =>
      'இப்போது நீங்கள் Premium! உங்கள் முழுமையான மீட்பு அனுபவத்தை அனுபவிக்கவும்.';

  @override
  String get premiumCancelledMessage =>
      'Premium ரத்து செய்யப்பட்டது. நீங்கள் மீண்டும் Free Plan-க்கு வந்துவிட்டீர்கள்.';

  @override
  String get termsOfUseLabel => 'பயன்பாட்டு விதிமுறைகள்';

  @override
  String get navHomeLabel => 'முகப்பு';

  @override
  String get navStatsLabel => 'புள்ளிவிவரங்கள்';

  @override
  String get navJournalLabel => 'ஜர்னல்';

  @override
  String get navBadgesLabel => 'பேட்ஜ்கள்';

  @override
  String get navProfileLabel => 'சுயவிவரம்';

  @override
  String get recoveryGoalsTitle => 'மீட்பு இலக்குகள்';

  @override
  String get drinksPerWeekLabel => 'வாரத்திற்கு அருந்தும் பானங்கள்';

  @override
  String get quitReasonsLabel => 'நிறுத்துவதற்கான காரணங்கள்';

  @override
  String get quitReasonsHelperText => 'பல காரணங்களை கமாவால் பிரிக்கவும்.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'மீட்பு இலக்குகளைச் சேமிக்க முடியவில்லை: $error';
  }

  @override
  String get goalHint => 'எ.கா., முழுமையாக நிறுத்துதல்';

  @override
  String get drinksPerWeekHint => 'எ.கா., 12';

  @override
  String get quitReasonsHint => 'எ.கா., ஆரோக்கியம், குடும்பம், பணம்';

  @override
  String get todaysPrompt => 'இன்றைய கேள்வி';

  @override
  String get defaultJournalPrompt => 'இன்று உங்கள் மனதில் என்ன இருக்கிறது?';

  @override
  String get aiJournalInsights => 'AI ஜர்னல் நுண்ணறிவுகள்';

  @override
  String get unlockJournalInsightsMessage =>
      'உங்கள் ஜர்னல் பதிவுகளிலிருந்து வாராந்திர முறைகள், மனநிலைப் போக்குகள் மற்றும் தனிப்பட்ட நுண்ணறிவுகளைத் திறக்கவும்.';

  @override
  String get notEnoughJournalData =>
      'இன்னும் போதுமான தரவு இல்லை — இந்த வாரம் சில பதிவுகளை எழுதி மீண்டும் பார்க்கவும்.';

  @override
  String get openEntry => 'திறக்கவும்';

  @override
  String get editEntry => 'திருத்தவும்';

  @override
  String get deleteEntry => 'நீக்கவும்';

  @override
  String get searchJournalEntries => 'பதிவுகளைத் தேடவும்...';

  @override
  String get writeNewEntry => 'புதிய பதிவு எழுதவும்';

  @override
  String get recentEntries => 'சமீபத்திய பதிவுகள்';

  @override
  String get noJournalEntriesYet =>
      'இன்னும் ஜர்னல் பதிவுகள் இல்லை — மேலே உங்கள் முதல் சிந்தனைப் பதிவை எழுதுங்கள்.';

  @override
  String get noEntriesMatchFilters =>
      'உங்கள் வடிகட்டிகளுடன் எந்தப் பதிவும் பொருந்தவில்லை.';

  @override
  String get weeklyJournalLimitReached => 'வாராந்திர வரம்பு எட்டப்பட்டது';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'இந்த வாரம் கிடைக்கும் $limit இலவச ஜர்னல் பதிவுகளையும் பயன்படுத்திவிட்டீர்கள். வரம்பற்ற பதிவுகளுக்கு Premium-க்கு மேம்படுத்தவும்.';
  }

  @override
  String get newEntry => 'புதிய பதிவு';

  @override
  String get writeYourThoughts => 'உங்கள் எண்ணங்களை எழுதுங்கள்';

  @override
  String get saveEntry => 'பதிவைச் சேமிக்கவும்';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return 'இந்த வாரம் $limit இலவச பதிவுகளில் $remaining மீதமுள்ளது';
  }

  @override
  String get deleteEntryQuestion => 'பதிவை நீக்கவா?';

  @override
  String get deleteEntryConfirmation =>
      'இந்தப் பதிவு நிரந்தரமாக நீக்கப்படும். இதை மீண்டும் மாற்ற முடியாது.';

  @override
  String get journalEntryNotFound => 'பதிவு கிடைக்கவில்லை';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'இந்த ஜர்னல் பதிவு நீக்கப்பட்டிருக்கலாம்.';

  @override
  String get goBack => 'பின்செல்லவும்';

  @override
  String get journalEntryTitle => 'ஜர்னல் பதிவு';

  @override
  String get moodStruggling => 'சிரமப்படுகிறேன்';

  @override
  String get moodUnwell => 'உடல்நலம் சரியில்லை';

  @override
  String get moodNeutral => 'நடுநிலை';

  @override
  String get whatHappenedToday => 'இன்று என்ன நடந்தது?';

  @override
  String get trigger => 'தூண்டுதல்';

  @override
  String get whatHelped => 'எது உதவியது';

  @override
  String get whatIllTryNextTime => 'அடுத்த முறை நான் முயற்சிப்பது';

  @override
  String get journalPrivacyMessage =>
      'உங்கள் சிந்தனை தனிப்பட்டது மற்றும் உங்கள் ஜர்னலில் சேமிக்கப்படுகிறது.';

  @override
  String get unlocked => 'திறக்கப்பட்டது';

  @override
  String daysLeft(int count) {
    return '$count நாட்கள் மீதம்';
  }

  @override
  String daysCount(int count) {
    return '$count நாட்கள்';
  }

  @override
  String get firstReflection => 'முதல்\nசிந்தனை';

  @override
  String get oneJournalEntry => '1 ஜர்னல் பதிவு';

  @override
  String get openBook => 'புத்தகத்தைத் திறக்கவும்';

  @override
  String get tenJournalEntries => '10 ஜர்னல் பதிவுகள்';

  @override
  String get dedicatedWriter => 'அர்ப்பணிப்புள்ள\nஎழுத்தாளர்';

  @override
  String get thirtyJournalEntries => '30 ஜர்னல் பதிவுகள்';

  @override
  String get firstConversation => 'முதல்\nஉரையாடல்';

  @override
  String get oneAiCoachChat => '1 AI Coach Chat';

  @override
  String get keepTalking => 'தொடர்ந்து பேசுங்கள்';

  @override
  String get fiveConversations => '5 உரையாடல்கள்';

  @override
  String get coachCompanion => 'Coach\nதுணை';

  @override
  String get twentyConversations => '20 உரையாடல்கள்';

  @override
  String get checkInHabit => 'Check-in\nபழக்கம்';

  @override
  String get sevenCheckIns => '7 Check-in-கள்';

  @override
  String get consistencyPro => 'தொடர்ச்சியில்\nவல்லவர்';

  @override
  String get thirtyCheckIns => '30 Check-in-கள்';

  @override
  String get dedicatedJourney => 'அர்ப்பணிப்புள்ள\nபயணம்';

  @override
  String get hundredCheckIns => '100 Check-in-கள்';

  @override
  String get goalGetter => 'இலக்கை அடைவவர்';

  @override
  String get threeGoalsCompleted => '3 இலக்குகள் முடிக்கப்பட்டன';

  @override
  String get goalAchiever => 'இலக்கை\nஅடைந்தவர்';

  @override
  String get tenGoalsCompleted => '10 இலக்குகள் முடிக்கப்பட்டன';

  @override
  String get firstSavings => 'முதல்\nசேமிப்பு';

  @override
  String get fiveHundredSaved => '\$500 சேமிக்கப்பட்டது';

  @override
  String get smartSaver => 'சிறந்த சேமிப்பாளர்';

  @override
  String get oneThousandSaved => '\$1,000 சேமிக்கப்பட்டது';

  @override
  String get bigSaver => 'பெரிய சேமிப்பாளர்';

  @override
  String get fiveThousandSaved => '\$5,000 சேமிக்கப்பட்டது';

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
      'தொடர்ந்து செல்லுங்கள் — உங்கள் முதல் மைல்கல் உங்களுக்காகக் காத்திருக்கிறது!';

  @override
  String get badgesAndMilestones => 'பேட்ஜ்கள் மற்றும் மைல்கற்கள்';

  @override
  String get yourMilestoneJourney => 'உங்கள் மைல்கல் பயணம்';

  @override
  String milestonesAchieved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'கள்',
      one: '',
    );
    return '$count மைல்கல்$_temp0 அடையப்பட்டது.\nபார்க்க தட்டவும்';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'உங்கள் பயணத்தில் உள்ள $total மைல்கற்களில் $unlocked மைல்கற்களைத் திறந்துள்ளீர்கள்.';
  }

  @override
  String get remaining => 'மீதமுள்ளது';

  @override
  String get complete => 'முடிந்தது';

  @override
  String get nextMilestone => 'அடுத்த மைல்கல்';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% முடிந்தது';
  }

  @override
  String get sobrietyMilestones => 'மது இல்லாத மைல்கற்கள்';

  @override
  String get journeyBadges => 'பயண பேட்ஜ்கள்';

  @override
  String get bronze => 'வெண்கலம்';

  @override
  String get silver => 'வெள்ளி';

  @override
  String get gold => 'தங்கம்';

  @override
  String get platinum => 'பிளாட்டினம்';

  @override
  String get diamond => 'வைரம்';

  @override
  String get analyzingYourJourney =>
      'உங்கள் பயணத்தைப் பகுப்பாய்வு செய்கிறது...';

  @override
  String get aiCreatingSanctuary =>
      'எங்கள் AI உங்களுக்கான தனிப்பட்ட பாதுகாப்பான இடத்தை உருவாக்குகிறது.';

  @override
  String get understandingHabits => 'பழக்கங்களைப் புரிந்துகொள்கிறது...';

  @override
  String get calculatingBaseline => 'உங்கள் அடிப்படை நிலையை கணக்கிடுகிறது...';

  @override
  String get personalizingPlan => 'உங்கள் திட்டத்தைத் தனிப்பயனாக்குகிறது...';

  @override
  String get finalizingSanctuary =>
      'உங்கள் பாதுகாப்பான இடத்தை இறுதிப்படுத்துகிறது...';

  @override
  String get creatingYourPlan => 'உங்கள் திட்டத்தை உருவாக்குகிறது...';

  @override
  String get personalizedPlanError =>
      'உங்கள் தனிப்பட்ட திட்டத்தை உருவாக்க முடியவில்லை. மீண்டும் முயற்சிக்கவும்.';

  @override
  String get retry => 'மீண்டும் முயற்சிக்கவும்';

  @override
  String get breathInhale => 'உள்ளிழுக்கவும்';

  @override
  String get breathHold => 'நிறுத்தி வைக்கவும்';

  @override
  String get breathExhale => 'வெளியேற்றவும்';

  @override
  String get breathDone => 'முடிந்தது';

  @override
  String get breathGreatJob => 'சிறப்பாக செய்தீர்கள்!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count அமர்வுகள் இன்று',
      one: '$count அமர்வு இன்று',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'பயிற்சியை முடிக்கவும்';

  @override
  String get done => 'முடிந்தது';

  @override
  String get noCopingTipsYet => 'இன்னும் சமாளிக்கும் குறிப்புகள் இல்லை';

  @override
  String get copingStrategiesWillAppear =>
      'உங்கள் மீட்பு திட்டம் உருவாக்கப்பட்டதும், உங்கள் தனிப்பட்ட சமாளிக்கும் உத்திகள் இங்கே தோன்றும்.';

  @override
  String get strategiesTailoredToTriggers =>
      'உங்கள் தூண்டுதல்களுக்கு ஏற்ப வடிவமைக்கப்பட்ட உத்திகள்';

  @override
  String get cravingsPeakAndPass =>
      'மது அருந்தும் ஆசைகள் உச்சத்தை அடைந்து\nகடந்து போகும்';

  @override
  String get rideTheWaveDescription =>
      'பெரும்பாலான ஆசைகள் 15 நிமிடங்களுக்குள் கடந்து போகும். நீங்கள் அதன்படி செயல்பட வேண்டியதில்லை — எங்களுடன் அதை எதிர்கொள்ளுங்கள்.';

  @override
  String get stayWithIt => 'தொடர்ந்து இருங்கள்';

  @override
  String get youMadeIt => 'நீங்கள் சாதித்துவிட்டீர்கள்';

  @override
  String get readyWhenYouAre => 'நீங்கள் தயாரானதும்';

  @override
  String get rideItAgain => 'மீண்டும் எதிர்கொள்ளுங்கள்';

  @override
  String get start15MinuteTimer => '15 நிமிட டைமரைத் தொடங்கவும்';

  @override
  String get rideTheWaveCompletedMessage =>
      'நீங்கள் அந்த அலையை எதிர்கொண்டீர்கள். அதுதான் உண்மையான வலிமை. 💪';

  @override
  String get myProgress => 'என் முன்னேற்றம்';

  @override
  String get weekLabel => 'வாரம்';

  @override
  String get monthLabel => 'மாதம்';

  @override
  String get allLabel => 'அனைத்தும்';

  @override
  String get daysSoberStatLabel => 'மது இல்லாத\nநாட்கள்';

  @override
  String get savedStatLabel => 'சேமிக்கப்பட்டது';

  @override
  String get avoidedStatLabel => 'தவிர்க்கப்பட்டது';

  @override
  String get moodTrends => 'மனநிலைப் போக்குகள்';

  @override
  String get cravingsPattern => 'மது அருந்தும் ஆசை முறை';

  @override
  String get unlockLabel => 'திறக்கவும்';

  @override
  String get unlockFullStats => 'முழு புள்ளிவிவரங்களைத் திறக்கவும்';

  @override
  String get premiumStatsMessage =>
      'மனநிலைப் போக்குகள் மற்றும் மது அருந்தும் ஆசை முறைகள் Premium அம்சங்களாகும். முழு புள்ளிவிவரங்களைக் காண மேம்படுத்தவும்.';

  @override
  String get healthMilestonesWillAppear =>
      'உங்கள் ஆரோக்கிய மைல்கற்கள் இங்கே தோன்றும்.';

  @override
  String get healthMilestones => 'ஆரோக்கிய மைல்கற்கள்';

  @override
  String dayNumber(int day) {
    return 'நாள் $day';
  }

  @override
  String get soberLabel => 'மது இல்லாமல்';

  @override
  String get slipLabel => 'தவறிவிட்டேன்';

  @override
  String get noDataLabel => 'தரவு இல்லை';

  @override
  String get milestone24Hours => '24 மணி நேரம்';

  @override
  String get milestoneOneWeek => 'ஒரு வாரம்';

  @override
  String get milestoneOneMonth => 'ஒரு மாதம்';

  @override
  String get milestoneThreeMonths => 'மூன்று மாதங்கள்';

  @override
  String get milestoneSixMonths => 'ஆறு மாதங்கள்';

  @override
  String get milestoneOneYear => 'ஒரு வருடம்';

  @override
  String milestoneDayCount(int day) {
    return 'நாள் $day மைல்கல்';
  }

  @override
  String get maybeLaterLabel => 'ஒருவேளை பின்னர்';

  @override
  String get cancelLabel => 'ரத்து செய்';
}
