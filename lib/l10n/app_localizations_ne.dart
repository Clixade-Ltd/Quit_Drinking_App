// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Nepali (`ne`).
class AppLocalizationsNe extends AppLocalizations {
  AppLocalizationsNe([String locale = 'ne']) : super(locale);

  @override
  String get skip => 'छोड्नुहोस्';

  @override
  String get continueButton => 'जारी राख्नुहोस्';

  @override
  String get getStarted => 'सुरु गर्नुहोस्';

  @override
  String get onboardingTitle1 => 'आफ्नो जीवनको नियन्त्रण लिनुहोस्';

  @override
  String get onboardingSubtitle1 =>
      'आफ्नो यात्रालाई ट्र्याक गर्नुहोस्, हरेक उपलब्धिको उत्सव मनाउनुहोस् र हरेक दिन आफूलाई स्वस्थ बनाउँदै जानुहोस्।';

  @override
  String get onboardingTitle2 => 'तपाईंको AI रिकभरी साथी';

  @override
  String get onboardingSubtitle2 =>
      'तपाईंको यात्राअनुसार तयार गरिएका व्यक्तिगत मार्गदर्शन, स्वस्थ बानी, प्रेरणादायी रिमाइन्डर र प्रगति रिपोर्टहरू प्राप्त गर्नुहोस्।';

  @override
  String get goodMorning => 'शुभ प्रभात';

  @override
  String get goodAfternoon => 'शुभ दिउँसो';

  @override
  String get goodEvening => 'शुभ साँझ';

  @override
  String get goodNight => 'शुभ रात्री';

  @override
  String get embracingClarity =>
      'हरेक दिन एक कदम अघि बढ्दै स्पष्टता अपनाउनुहोस्।';

  @override
  String get streakLabel => 'लगातार दिन';

  @override
  String get goalLabel => 'लक्ष्य';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count दिन',
      one: '$count दिन',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'प्रिमियम योजना';

  @override
  String get premiumPlanSubtitle => 'आफ्नो पूर्ण रिकभरी अनुभव अनलक गर्नुहोस्';

  @override
  String get accountAndSupport => 'खाता र सहायता';

  @override
  String get privacyPolicy => 'गोपनीयता नीति';

  @override
  String get privacyPolicySubtitle =>
      'डाटा साझेदारी र खाता सुरक्षा व्यवस्थापन गर्नुहोस्';

  @override
  String get termsOfService => 'सेवाका सर्तहरू';

  @override
  String get termsOfServiceSubtitle =>
      'प्रायः सोधिने प्रश्नहरू, सम्पर्क र स्रोतहरू';

  @override
  String get shareApp => 'एप साझा गर्नुहोस्';

  @override
  String get shareAppSubtitle => 'एप आफ्ना साथीहरूसँग साझा गर्नुहोस्';

  @override
  String get resetData => 'डाटा रिसेट गर्नुहोस्';

  @override
  String get resetDataSubtitle =>
      'यस उपकरणमा सुरक्षित गरिएका सबै कुरा मेटाउनुहोस्';

  @override
  String get resetAllDataTitle => 'सबै डाटा रिसेट गर्ने?';

  @override
  String get resetAllDataMessage =>
      'यसले यस उपकरणमा सुरक्षित गरिएको प्रोफाइल, जर्नल प्रविष्टि र प्रगति लगायत सबै कुरा मेटाउनेछ र यसलाई फिर्ता गर्न सकिँदैन।';

  @override
  String get cancel => 'रद्द गर्नुहोस्';

  @override
  String get reset => 'रिसेट गर्नुहोस्';

  @override
  String get chooseFromGallery => 'ग्यालरीबाट छान्नुहोस्';

  @override
  String get takePhoto => 'फोटो खिच्नुहोस्';

  @override
  String get removePhoto => 'फोटो हटाउनुहोस्';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'फोटो अपडेट गर्न सकिएन: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'फोटो हटाउन सकिएन: $error';
  }

  @override
  String get photoTooLarge =>
      'कम्प्रेस गरेपछि पनि यो फोटो धेरै ठूलो छ — कृपया अर्को फोटो छान्नुहोस्।';

  @override
  String get unableToLoadProfile => 'तपाईंको प्रोफाइल लोड गर्न सकिएन';

  @override
  String get pleaseTryAgain => 'कृपया फेरि प्रयास गर्नुहोस्।';

  @override
  String get tryAgain => 'फेरि प्रयास गर्नुहोस्';

  @override
  String get profileNotFound => 'प्रोफाइल फेला परेन';

  @override
  String get refresh => 'रिफ्रेस गर्नुहोस्';

  @override
  String get noProfileDataFound =>
      'यस उपकरणमा अहिलेसम्म कुनै प्रोफाइल डाटा फेला परेन।';

  @override
  String couldNotResetData(String error) {
    return 'डाटा रिसेट गर्न सकिएन: $error';
  }

  @override
  String get navHome => 'होम';

  @override
  String get navStats => 'तथ्याङ्क';

  @override
  String get navJournal => 'जर्नल';

  @override
  String get navBadges => 'ब्याजहरू';

  @override
  String get navProfile => 'प्रोफाइल';

  @override
  String featureComingSoon(String feature) {
    return '$feature चाँडै उपलब्ध हुनेछ।';
  }

  @override
  String get appWordmark => 'स्वास्थ्य';

  @override
  String get appTitle => 'मदिरा सेवन छोड्नुहोस्';

  @override
  String get splashSubtitle => 'मदिरामुक्त जीवनतर्फ\nपहिलो कदम चाल्नुहोस्';

  @override
  String get preparingJourney => 'तपाईंको\nयात्रा तयार हुँदैछ';

  @override
  String get taskMorningMeditation => 'बिहानको ध्यान (१० मिनेट)';

  @override
  String get taskReadChapter => '\"द सोबर डायरीज\" को अध्याय ४ पढ्नुहोस्';

  @override
  String get taskEveningJournal => 'साँझको कृतज्ञता जर्नल';

  @override
  String get close => 'बन्द गर्नुहोस्';

  @override
  String get youAreDoingGreat => 'तपाईंले निकै राम्रो गरिरहनुभएको छ!';

  @override
  String get shareMilestone => 'उपलब्धि साझा गर्नुहोस्';

  @override
  String shareMilestoneMessage(int days) {
    return 'म मेरो रिकभरी यात्राको $daysऔँ दिनमा छु! 💪';
  }

  @override
  String get shareMilestoneSubject => 'मेरो रिकभरी उपलब्धि';

  @override
  String get weeklyReportReadyTitle => 'तपाईंको साप्ताहिक रिपोर्ट तयार छ';

  @override
  String get weeklyReportReadySubtitle =>
      'तपाईंको हप्ता कस्तो रह्यो हेर्न ट्याप गर्नुहोस्';

  @override
  String get howAreYouFeeling => 'तपाईंलाई कस्तो महसुस भइरहेको छ?';

  @override
  String get moodTough => 'गाह्रो';

  @override
  String get moodOkay => 'ठीकै';

  @override
  String get moodGood => 'राम्रो';

  @override
  String get moneySaved => 'बचत गरिएको पैसा';

  @override
  String get caloriesSaved => 'बचत गरिएका क्यालोरी';

  @override
  String get healthScore => 'स्वास्थ्य स्कोर';

  @override
  String get drinksAvoided => 'छोडिएका पेय';

  @override
  String get estimated => 'अनुमानित';

  @override
  String get aiGenerated => 'AI द्वारा तयार गरिएको';

  @override
  String get daysCapsLabel => 'दिन';

  @override
  String get todaysMotivation => 'आजको प्रेरणा';

  @override
  String get defaultMotivationQuote =>
      'तपाईंले आफ्नो प्रतिबद्धता सफलतापूर्वक कायम राख्नुभएको छ। सकारात्मक परिवर्तनको यो यात्रालाई निरन्तरता दिनुहोस्।';

  @override
  String get talkToCoach => 'कोचसँग कुरा गर्नुहोस्';

  @override
  String get havingACraving => 'मलाई मदिरा पिउने इच्छा भइरहेको छ';

  @override
  String get unlockWeeklyReportsTitle => 'साप्ताहिक रिपोर्ट अनलक गर्नुहोस्';

  @override
  String get unlockWeeklyReportsMessage =>
      'हरेक हप्ता आफ्ना मदिरामुक्त दिन, मुडका प्रवृत्ति र व्यक्तिगत AI प्रतिक्रिया हेर्नुहोस्। अनलक गर्न प्रिमियममा अपग्रेड गर्नुहोस्।';

  @override
  String get maybeLater => 'पछि गरौँला';

  @override
  String get upgrade => 'अपग्रेड गर्नुहोस्';

  @override
  String get weeklyReportTitle => 'साप्ताहिक रिपोर्ट';

  @override
  String get weeklyReportsPremiumTitle =>
      'साप्ताहिक रिपोर्ट प्रिमियम सुविधा हो';

  @override
  String get weeklyReportsPremiumMessage =>
      'हरेक हप्ता आफ्ना मदिरामुक्त दिन, मुडका प्रवृत्ति, मदिरा पिउने इच्छा र व्यक्तिगत AI प्रतिक्रिया हेर्नुहोस्।';

  @override
  String get upgradeToPremium => 'प्रिमियममा अपग्रेड गर्नुहोस्';

  @override
  String get couldNotGenerateReport => 'अहिले तपाईंको रिपोर्ट तयार गर्न सकिएन।';

  @override
  String get tryAgainLower => 'फेरि प्रयास गर्नुहोस्';

  @override
  String get statSoberDays => 'मदिरामुक्त दिन';

  @override
  String get statAvgMood => 'औसत मुड';

  @override
  String get statCravings => 'मदिरा पिउने इच्छा';

  @override
  String get statMoneySaved => 'बचत गरिएको पैसा';

  @override
  String get coachFeedback => 'कोचको प्रतिक्रिया';

  @override
  String get journalInsights => 'जर्नलका जानकारी';

  @override
  String get next => 'अर्को';

  @override
  String get question1Title => 'तपाईंको लक्ष्य के हो?';

  @override
  String get question1Subtitle =>
      'तपाईंका लागि सबैभन्दा महत्त्वपूर्ण\nलक्ष्य छान्नुहोस्';

  @override
  String get goalQuitCompletely => 'पूर्ण रूपमा छोड्ने';

  @override
  String get goalReduceDrinking => 'मदिरा सेवन घटाउने';

  @override
  String get goalTakeABreak => 'विश्राम लिने';

  @override
  String get goalBuildHealthierHabits => 'स्वस्थ बानीहरू बनाउने';

  @override
  String get question3Title => 'आफ्नो\nदिनचर्याबारे बताउनुहोस्';

  @override
  String get drinksPerWeek => 'प्रति हप्ता पेय';

  @override
  String get moneySpentPerWeek => 'प्रति हप्ता खर्च हुने पैसा';

  @override
  String get drinkingLevel => 'मदिरा सेवनको स्तर';

  @override
  String get triggersLabel => 'ट्रिगरहरू';

  @override
  String get levelSocial => 'सामाजिक';

  @override
  String get levelRegular => 'नियमित';

  @override
  String get levelHeavy => 'धेरै';

  @override
  String get levelDependent => 'निर्भर';

  @override
  String get triggerStress => 'तनाव';

  @override
  String get triggerLoneliness => 'एक्लोपन';

  @override
  String get triggerHabit => 'बानी';

  @override
  String get triggerSadness => 'दुःख';

  @override
  String get triggerAnger => 'रिस';

  @override
  String get triggerBoredom => 'दिक्क लाग्नु';

  @override
  String get triggerSocialPressure => 'सामाजिक दबाब';

  @override
  String get triggerCelebration => 'उत्सव';

  @override
  String get triggerSleepProblems => 'निद्राका समस्या';

  @override
  String get triggerWorkPressure => 'कामको दबाब';

  @override
  String get question4Title => 'तपाईं किन परिवर्तन गर्न चाहनुहुन्छ?';

  @override
  String get question4Subtitle =>
      'तपाईंको कारणले तपाईंलाई प्रेरित गर्न मद्दत गर्नेछ।';

  @override
  String get reasonImproveHealth => 'मेरो स्वास्थ्य सुधार्नु';

  @override
  String get reasonSaveMoney => 'पैसा बचत गर्नु';

  @override
  String get reasonFamily => 'परिवार';

  @override
  String get reasonBetterSleep => 'राम्रो निद्रा';

  @override
  String get reasonMentalClarity => 'मानसिक स्पष्टता';

  @override
  String get reasonFitness => 'फिटनेस';

  @override
  String get reasonSelfRespect => 'आत्मसम्मान';

  @override
  String get reasonCareer => 'करियर';

  @override
  String get milestoneUnlockedLabel => 'उपलब्धि अनलक भयो';

  @override
  String incredibleNamePrefix(String name) {
    return 'अविश्वसनीय, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount बचत भयो';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count वटा छोडियो';
  }

  @override
  String get shareMyMilestone => 'मेरो उपलब्धि साझा गर्नुहोस्';

  @override
  String get milestoneImageShareError =>
      'उपलब्धिको फोटो तयार गर्न सकिएन। कृपया फेरि प्रयास गर्नुहोस्।';

  @override
  String get dailyCheckInTitle => 'दैनिक चेक-इन';

  @override
  String get howAreYouFeelingToday => 'आज तपाईंलाई कस्तो महसुस भइरहेको छ?';

  @override
  String get honestAnswerHelp =>
      'तपाईंको इमानदार उत्तरले हामीलाई तपाईंलाई अझ राम्रो सहयोग गर्न मद्दत गर्छ';

  @override
  String get didYouDrinkToday => 'के तपाईंले आज मदिरा पिउनुभयो?';

  @override
  String get noLabel => 'होइन';

  @override
  String get yesLabel => 'हो';

  @override
  String get cravingLevelNow => 'अहिले मदिरा पिउने इच्छा कति छ?';

  @override
  String get anythingOnMind => 'तपाईंको मनमा केही छ?';

  @override
  String get optionalLabel => '(वैकल्पिक)';

  @override
  String get dailyNoteHint =>
      'आफ्नो दिन, ट्रिगरहरू, उपलब्धिहरूका बारेमा लेख्नुहोस्...';

  @override
  String get alreadyCheckedInToday => 'आजको चेक-इन पहिले नै गरिसक्नुभएको छ';

  @override
  String get saveCheckIn => 'चेक-इन सुरक्षित गर्नुहोस्';

  @override
  String get checkInsHelpTrack =>
      'चेक-इनहरूले समयसँगै तपाईंको प्रगति ट्र्याक गर्न मद्दत गर्छन्';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'तपाईंले आजको चेक-इन पहिले नै पूरा गरिसक्नुभएको छ।';

  @override
  String get pleaseAnswerBothQuestions =>
      'कृपया पहिले माथिका दुवै प्रश्नको उत्तर दिनुहोस्';

  @override
  String get checkInSaved => 'चेक-इन सुरक्षित भयो';

  @override
  String get cravingNone => 'कुनै छैन';

  @override
  String get cravingLow => 'कम';

  @override
  String get cravingMedium => 'मध्यम';

  @override
  String get cravingStrong => 'बलियो';

  @override
  String get moodBad => 'खराब';

  @override
  String get moodLow => 'कम';

  @override
  String get moodGreat => 'धेरै राम्रो';

  @override
  String get sosSupportTitle => 'SOS सहायता';

  @override
  String notAloneMessage(String name) {
    return 'तपाईं एक्लै हुनुहुन्न, $name';
  }

  @override
  String get cravingsPassMessage =>
      'मदिरा पिउने इच्छा बितेर जान्छ। यो क्षण पार गर्न तलको कुनै विकल्प छान्नुहोस्।';

  @override
  String get breathingExercise => 'श्वासप्रश्वास अभ्यास';

  @override
  String get breathingExerciseSubtitle => 'निर्देशित ४-७-८ प्रविधि, २ मिनेट';

  @override
  String get rideTheWave => 'लहरसँग बग्नुहोस्';

  @override
  String get rideTheWaveSubtitle => '१५ मिनेटको टाइमर — इच्छा सधैं बितेर जान्छ';

  @override
  String get copingTips => 'सामना गर्ने सुझावहरू';

  @override
  String get copingTipsSubtitle =>
      'तपाईंका ट्रिगरहरूका लागि व्यक्तिगत रणनीतिहरू';

  @override
  String get talkToAiCoach => 'AI कोचसँग कुरा गर्नुहोस्';

  @override
  String get talkToAiCoachSubtitle => 'आफ्नो रिकभरी साथीसँग च्याट गर्नुहोस्';

  @override
  String get callSomeone => 'कसैलाई फोन गर्नुहोस्';

  @override
  String get callSomeoneSubtitle =>
      'आफूले विश्वास गर्ने व्यक्तिसँग सम्पर्क गर्नुहोस्';

  @override
  String get contactsPermissionNeeded =>
      'सम्पर्कमा रहेका व्यक्तिलाई फोन गर्न Contacts अनुमति आवश्यक छ।';

  @override
  String get beatenCravingsPrefix => 'तपाईंले मदिरा पिउने इच्छालाई ';

  @override
  String beatenCravingsCount(int count) {
    return '$count पटक जित्नुभएको छ';
  }

  @override
  String get beatenCravingsSuffix => ' पहिले। तपाईं फेरि पनि गर्न सक्नुहुन्छ।';

  @override
  String get tellUsAboutYourself => 'आफ्नो बारेमा बताउनुहोस्';

  @override
  String get detailsSubtitle =>
      'यो जानकारीले तपाईंको रिकभरी यात्रा व्यक्तिगत बनाउन र सही जानकारी प्रदान गर्न मद्दत गर्छ।';

  @override
  String get nameLabel => 'नाम';

  @override
  String get nameHint => 'जस्तै, Alex Rivers';

  @override
  String get ageLabel => 'उमेर';

  @override
  String get ageHint => 'जस्तै, ३२';

  @override
  String get sexAssignedAtBirth => 'जन्मँदा तोकिएको लिङ्ग';

  @override
  String get sexFemale => 'महिला';

  @override
  String get sexMale => 'पुरुष';

  @override
  String get heightLabel => 'उचाइ';

  @override
  String get weightLabel => 'तौल';

  @override
  String get heightHint => '१७०';

  @override
  String get weightHint => '७०';

  @override
  String get dailyLimitReachedTitle => 'दैनिक सीमा पुग्यो';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'तपाईंले आजका सबै $limit निःशुल्क सन्देश प्रयोग गरिसक्नुभएको छ। असीमित कोच च्याटका लागि प्रिमियममा अपग्रेड गर्नुहोस्।';
  }

  @override
  String get coachConnectError =>
      'अहिले जडान हुन सकेन। कृपया केही बेरपछि फेरि प्रयास गर्नुहोस्।';

  @override
  String get clearConversationTitle => 'वार्तालाप हटाउने?';

  @override
  String get clearConversationMessage =>
      'यसले तपाईंको कोच च्याट इतिहास स्थायी रूपमा हटाउनेछ।';

  @override
  String get clearLabel => 'हटाउनुहोस्';

  @override
  String get recoveryCoachTitle => 'रिकभरी कोच';

  @override
  String get onlineLabel => 'अनलाइन';

  @override
  String get clearConversationMenuItem => 'वार्तालाप हटाउनुहोस्';

  @override
  String chatGreeting(String name) {
    return 'नमस्ते $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'तपाईं आफ्नो यात्राको $daysऔँ दिनमा हुनुहुन्छ। कुरा गर्न चाहनुहुँदा म यहाँ छु।';
  }

  @override
  String get quickPromptsLabel => 'छिटो सुझावहरू';

  @override
  String get promptCravingLabel => 'मदिरा पिउने इच्छा भइरहेको छ';

  @override
  String get promptCravingSubtitle => 'छिट्टै आफूलाई स्थिर बनाउनुहोस्';

  @override
  String get promptMotivationLabel => 'प्रेरणा चाहिन्छ';

  @override
  String get promptMotivationSubtitle => 'गाह्रो हुँदा थोरै हौसला';

  @override
  String get promptSocialLabel => 'सामाजिक अवस्था';

  @override
  String get promptSocialSubtitle => 'भेलालाई सहज रूपमा सामना गर्नुहोस्';

  @override
  String get promptSlippedLabel => 'मबाट गल्ती भयो';

  @override
  String get promptSlippedSubtitle => 'कुनै दोषारोपण छैन, केवल सहयोग';

  @override
  String get typeMessageHint => 'सन्देश लेख्नुहोस्...';

  @override
  String get editProfileTitle => 'प्रोफाइल सम्पादन गर्नुहोस्';

  @override
  String couldNotSaveProfile(String error) {
    return 'प्रोफाइल सुरक्षित गर्न सकिएन: $error';
  }

  @override
  String get heightCmLabel => 'उचाइ (सेमी)';

  @override
  String get weightKgLabel => 'तौल (किग्रा)';

  @override
  String get saveChangesLabel => 'परिवर्तनहरू सुरक्षित गर्नुहोस्';

  @override
  String get premiumBadgeLabel => 'प्रिमियम';

  @override
  String get featureAdvancedInsights => 'उन्नत जानकारी र विश्लेषण';

  @override
  String get featureUnlimitedJournal => 'असीमित जर्नल प्रविष्टिहरू';

  @override
  String get featureUnlimitedChat => 'AI कोचसँग असीमित च्याट';

  @override
  String get featureCommunityGroups => 'विशेष समुदाय समूहहरू';

  @override
  String get featurePrioritySupport => 'प्राथमिकता प्राप्त विशेषज्ञ सहायता';

  @override
  String get featureThemePacks => 'अनुकूलित थिम प्याकहरू';

  @override
  String get featureDataExport => 'डाटा निर्यात';

  @override
  String get featureAdFree => 'विज्ञापनरहित अनुभव';

  @override
  String get premiumMemberTitle => 'तपाईं प्रिमियम सदस्य हुनुहुन्छ';

  @override
  String get unlockFullRecoveryTitle =>
      'आफ्नो पूर्ण रिकभरी\nअनुभव अनलक गर्नुहोस्';

  @override
  String get premiumMemberSubtitle =>
      'आफ्नो रिकभरी यात्रालाई समर्थन गर्नुभएकोमा धन्यवाद — तलका सबै प्रिमियम सुविधाहरू अनलक छन्।';

  @override
  String get premiumJoinSubtitle =>
      'हाम्रो प्रिमियम उपकरण र व्यक्तिगत सहयोगमार्फत\nआफ्नो रिकभरी यात्रा तीव्र बनाइरहेका\nहजारौँ मानिसहरूको समुदायमा सामेल हुनुहोस्।';

  @override
  String get monthlyPlanLabel => 'मासिक';

  @override
  String get perMonthSuffix => '/महिना';

  @override
  String get cancelAnytimeLabel => 'जुनसुकै बेला रद्द गर्नुहोस्';

  @override
  String get yearlyPlanLabel => 'वार्षिक';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'वार्षिक रूपमा $amount मा बिल गरिनेछ';
  }

  @override
  String get bestValueLabel => 'उत्तम मूल्य';

  @override
  String get alreadyPremiumLabel => 'तपाईं प्रिमियम हुनुहुन्छ ✓';

  @override
  String get startPremiumLabel => 'प्रिमियम सुरु गर्नुहोस्';

  @override
  String get manageSubscriptionLabel =>
      'आफ्नो उपकरणको सदस्यता सेटिङबाट व्यवस्थापन वा रद्द गर्नुहोस्।';

  @override
  String get noCommitmentLabel =>
      'कुनै बाध्यता छैन। जुनसुकै बेला रद्द गर्न सक्नुहुन्छ।';

  @override
  String get continueFreePlanLabel => 'निःशुल्क योजनामा जारी राख्नुहोस्';

  @override
  String get backToHomeLabel => 'होममा फर्कनुहोस्';

  @override
  String get cancelPremiumLabel => 'प्रिमियम रद्द गर्नुहोस्';

  @override
  String get cancelPremiumTitle => 'प्रिमियम रद्द गर्ने?';

  @override
  String get cancelPremiumMessage =>
      'तपाईंले असीमित जर्नल प्रविष्टि, असीमित कोच च्याट, तथ्याङ्कका जानकारी र साप्ताहिक रिपोर्टहरूको पहुँच गुमाउनुहुनेछ। तपाईं जुनसुकै बेला पुनः सदस्यता लिन सक्नुहुन्छ।';

  @override
  String get keepPremiumLabel => 'प्रिमियम कायम राख्नुहोस्';

  @override
  String get nowPremiumMessage =>
      'अब तपाईं प्रिमियम सदस्य हुनुहुन्छ! आफ्नो पूर्ण रिकभरी अनुभवको आनन्द लिनुहोस्।';

  @override
  String get premiumCancelledMessage =>
      'प्रिमियम रद्द भयो। तपाईं निःशुल्क योजनामा फर्कनुभएको छ।';

  @override
  String get termsOfUseLabel => 'प्रयोगका सर्तहरू';

  @override
  String get navHomeLabel => 'होम';

  @override
  String get navStatsLabel => 'तथ्याङ्क';

  @override
  String get navJournalLabel => 'जर्नल';

  @override
  String get navBadgesLabel => 'ब्याजहरू';

  @override
  String get navProfileLabel => 'प्रोफाइल';

  @override
  String get recoveryGoalsTitle => 'रिकभरी लक्ष्यहरू';

  @override
  String get drinksPerWeekLabel => 'प्रति हप्ता पेय';

  @override
  String get quitReasonsLabel => 'छोड्ने कारणहरू';

  @override
  String get quitReasonsHelperText =>
      'धेरै कारणहरूलाई अल्पविरामले छुट्याउनुहोस्।';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'रिकभरी लक्ष्यहरू सुरक्षित गर्न सकिएन: $error';
  }

  @override
  String get goalHint => 'जस्तै, पूर्ण रूपमा त्याग्ने';

  @override
  String get drinksPerWeekHint => 'जस्तै, १२';

  @override
  String get quitReasonsHint => 'जस्तै, स्वास्थ्य, परिवार, पैसा';

  @override
  String get todaysPrompt => 'आजको प्रश्न';

  @override
  String get defaultJournalPrompt => 'आज तपाईंको मनमा के छ?';

  @override
  String get aiJournalInsights => 'AI जर्नल जानकारी';

  @override
  String get unlockJournalInsightsMessage =>
      'आफ्नो जर्नल प्रविष्टिबाट साप्ताहिक ढाँचा, मुडका प्रवृत्ति र व्यक्तिगत जानकारी अनलक गर्नुहोस्।';

  @override
  String get notEnoughJournalData =>
      'अहिलेसम्म पर्याप्त डाटा छैन — यस हप्ता केही प्रविष्टिहरू लेख्नुहोस् र फेरि हेर्नुहोस्।';

  @override
  String get openEntry => 'खोल्नुहोस्';

  @override
  String get editEntry => 'सम्पादन गर्नुहोस्';

  @override
  String get deleteEntry => 'मेटाउनुहोस्';

  @override
  String get searchJournalEntries => 'प्रविष्टिहरू खोज्नुहोस्...';

  @override
  String get writeNewEntry => 'नयाँ प्रविष्टि लेख्नुहोस्';

  @override
  String get recentEntries => 'हालका प्रविष्टिहरू';

  @override
  String get noJournalEntriesYet =>
      'अहिलेसम्म कुनै जर्नल प्रविष्टि छैन — माथि आफ्नो पहिलो अनुभव लेख्नुहोस्।';

  @override
  String get noEntriesMatchFilters =>
      'तपाईंका फिल्टरसँग मिल्ने कुनै प्रविष्टि छैन।';

  @override
  String get weeklyJournalLimitReached => 'साप्ताहिक सीमा पुग्यो';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'तपाईंले यस हप्ताका सबै $limit निःशुल्क जर्नल प्रविष्टि प्रयोग गरिसक्नुभएको छ। असीमित प्रविष्टिका लागि प्रिमियममा अपग्रेड गर्नुहोस्।';
  }

  @override
  String get newEntry => 'नयाँ प्रविष्टि';

  @override
  String get writeYourThoughts => 'आफ्ना विचारहरू लेख्नुहोस्';

  @override
  String get saveEntry => 'प्रविष्टि सुरक्षित गर्नुहोस्';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return 'यस हप्ता $remaining / $limit निःशुल्क प्रविष्टि बाँकी';
  }

  @override
  String get deleteEntryQuestion => 'प्रविष्टि मेटाउने?';

  @override
  String get deleteEntryConfirmation =>
      'यो प्रविष्टि स्थायी रूपमा मेटिनेछ। यसलाई फिर्ता गर्न सकिँदैन।';

  @override
  String get journalEntryNotFound => 'प्रविष्टि फेला परेन';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'यो जर्नल प्रविष्टि मेटिएको हुन सक्छ।';

  @override
  String get goBack => 'पछाडि जानुहोस्';

  @override
  String get journalEntryTitle => 'जर्नल प्रविष्टि';

  @override
  String get moodStruggling => 'संघर्ष गर्दै';

  @override
  String get moodUnwell => 'अस्वस्थ';

  @override
  String get moodNeutral => 'तटस्थ';

  @override
  String get whatHappenedToday => 'आज के भयो?';

  @override
  String get trigger => 'ट्रिगर';

  @override
  String get whatHelped => 'के कुराले मद्दत गर्‍यो';

  @override
  String get whatIllTryNextTime => 'अर्कोपटक म के प्रयास गर्नेछु';

  @override
  String get journalPrivacyMessage =>
      'तपाईंको अनुभव निजी छ र तपाईंको जर्नलमा सुरक्षित गरिएको छ।';

  @override
  String get unlocked => 'अनलक भयो';

  @override
  String daysLeft(int count) {
    return '$count दिन बाँकी';
  }

  @override
  String daysCount(int count) {
    return '$count दिन';
  }

  @override
  String get firstReflection => 'पहिलो\nआत्मचिन्तन';

  @override
  String get oneJournalEntry => '१ जर्नल प्रविष्टि';

  @override
  String get openBook => 'किताब खोल्नुहोस्';

  @override
  String get tenJournalEntries => '१० जर्नल प्रविष्टिहरू';

  @override
  String get dedicatedWriter => 'समर्पित\nलेखक';

  @override
  String get thirtyJournalEntries => '३० जर्नल प्रविष्टिहरू';

  @override
  String get firstConversation => 'पहिलो\nवार्तालाप';

  @override
  String get oneAiCoachChat => '१ AI कोच च्याट';

  @override
  String get keepTalking => 'कुरा गरिरहनुहोस्';

  @override
  String get fiveConversations => '५ वार्तालाप';

  @override
  String get coachCompanion => 'कोच\nसाथी';

  @override
  String get twentyConversations => '२० वार्तालाप';

  @override
  String get checkInHabit => 'चेक-इन\nबानी';

  @override
  String get sevenCheckIns => '७ चेक-इन';

  @override
  String get consistencyPro => 'निरन्तरताको\nविशेषज्ञ';

  @override
  String get thirtyCheckIns => '३० चेक-इन';

  @override
  String get dedicatedJourney => 'समर्पित\nयात्रा';

  @override
  String get hundredCheckIns => '१०० चेक-इन';

  @override
  String get goalGetter => 'लक्ष्य प्राप्तकर्ता';

  @override
  String get threeGoalsCompleted => '३ लक्ष्य पूरा';

  @override
  String get goalAchiever => 'लक्ष्य\nप्राप्तकर्ता';

  @override
  String get tenGoalsCompleted => '१० लक्ष्य पूरा';

  @override
  String get firstSavings => 'पहिलो\nबचत';

  @override
  String get fiveHundredSaved => '\$500 बचत';

  @override
  String get smartSaver => 'स्मार्ट बचतकर्ता';

  @override
  String get oneThousandSaved => '\$1,000 बचत';

  @override
  String get bigSaver => 'ठूलो बचतकर्ता';

  @override
  String get fiveThousandSaved => '\$5,000 बचत';

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
      'अगाडि बढिरहनुहोस् — तपाईंको पहिलो उपलब्धि तपाईंलाई पर्खिरहेको छ!';

  @override
  String get badgesAndMilestones => 'ब्याज र उपलब्धिहरू';

  @override
  String get yourMilestoneJourney => 'तपाईंको उपलब्धिको यात्रा';

  @override
  String milestonesAchieved(int count) {
    return '$count उपलब्धि पूरा भयो।\nहेर्न ट्याप गर्नुहोस्';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'तपाईंले आफ्नो यात्राका $total उपलब्धिमध्ये $unlocked अनलक गर्नुभएको छ।';
  }

  @override
  String get remaining => 'बाँकी';

  @override
  String get complete => 'पूरा';

  @override
  String get nextMilestone => 'अर्को उपलब्धि';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% पूरा';
  }

  @override
  String get sobrietyMilestones => 'मदिरामुक्त उपलब्धिहरू';

  @override
  String get journeyBadges => 'यात्राका ब्याजहरू';

  @override
  String get bronze => 'काँस्य';

  @override
  String get silver => 'रजत';

  @override
  String get gold => 'सुन';

  @override
  String get platinum => 'प्लाटिनम';

  @override
  String get diamond => 'हीरा';

  @override
  String get analyzingYourJourney => 'तपाईंको यात्राको विश्लेषण हुँदैछ...';

  @override
  String get aiCreatingSanctuary =>
      'हाम्रो AI ले तपाईंका लागि व्यक्तिगत सुरक्षित स्थान तयार गर्दैछ।';

  @override
  String get understandingHabits => 'बानीहरू बुझ्दैछ...';

  @override
  String get calculatingBaseline => 'तपाईंको आधाररेखा गणना गर्दैछ...';

  @override
  String get personalizingPlan => 'तपाईंको योजना व्यक्तिगत बनाउँदैछ...';

  @override
  String get finalizingSanctuary =>
      'तपाईंको सुरक्षित स्थान अन्तिम रूप दिँदैछ...';

  @override
  String get creatingYourPlan => 'तपाईंको योजना तयार गर्दैछ...';

  @override
  String get personalizedPlanError =>
      'तपाईंको व्यक्तिगत योजना तयार गर्न सकेनौँ। कृपया फेरि प्रयास गर्नुहोस्।';

  @override
  String get retry => 'फेरि प्रयास गर्नुहोस्';

  @override
  String get breathInhale => 'सास लिनुहोस्';

  @override
  String get breathHold => 'रोक्नुहोस्';

  @override
  String get breathExhale => 'सास छोड्नुहोस्';

  @override
  String get breathDone => 'सम्पन्न';

  @override
  String get breathGreatJob => 'धेरै राम्रो!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count सत्र आज',
      one: '$count सत्र आज',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'अभ्यास समाप्त गर्नुहोस्';

  @override
  String get done => 'सम्पन्न';

  @override
  String get noCopingTipsYet => 'अहिलेसम्म सामना गर्ने कुनै सुझाव छैन';

  @override
  String get copingStrategiesWillAppear =>
      'तपाईंको रिकभरी योजना तयार भएपछि तपाईंका लागि व्यक्तिगत सामना गर्ने रणनीतिहरू यहाँ देखिनेछन्।';

  @override
  String get strategiesTailoredToTriggers =>
      'तपाईंका ट्रिगरअनुसार तयार गरिएका रणनीतिहरू';

  @override
  String get cravingsPeakAndPass => 'इच्छा उत्कर्षमा पुग्छ\nर बितेर जान्छ';

  @override
  String get rideTheWaveDescription =>
      'धेरैजसो मदिरा पिउने इच्छा १५ मिनेटभित्र बितेर जान्छ। तपाईंले त्यसअनुसार काम गर्नुपर्दैन — हामीसँगै त्यसलाई पार गर्नुहोस्।';

  @override
  String get stayWithIt => 'यससँगै रहनुहोस्';

  @override
  String get youMadeIt => 'तपाईंले गर्नुभयो';

  @override
  String get readyWhenYouAre => 'तपाईं तयार हुँदा';

  @override
  String get rideItAgain => 'फेरि पार गर्नुहोस्';

  @override
  String get start15MinuteTimer => '१५ मिनेटको टाइमर सुरु गर्नुहोस्';

  @override
  String get rideTheWaveCompletedMessage =>
      'तपाईंले यो लहर पार गर्नुभयो। यही वास्तविक शक्ति हो। 💪';

  @override
  String get myProgress => 'मेरो प्रगति';

  @override
  String get weekLabel => 'हप्ता';

  @override
  String get monthLabel => 'महिना';

  @override
  String get allLabel => 'सबै';

  @override
  String get daysSoberStatLabel => 'मदिरामुक्त\nदिन';

  @override
  String get savedStatLabel => 'बचत';

  @override
  String get avoidedStatLabel => 'छोडिएको';

  @override
  String get moodTrends => 'मुडका प्रवृत्तिहरू';

  @override
  String get cravingsPattern => 'मदिरा पिउने इच्छाको ढाँचा';

  @override
  String get unlockLabel => 'अनलक';

  @override
  String get unlockFullStats => 'पूर्ण तथ्याङ्क अनलक गर्नुहोस्';

  @override
  String get premiumStatsMessage =>
      'मुडका प्रवृत्ति र मदिरा पिउने इच्छाका ढाँचाहरू प्रिमियम सुविधाहरू हुन्। आफ्नो पूर्ण तथ्याङ्क हेर्न अपग्रेड गर्नुहोस्।';

  @override
  String get healthMilestonesWillAppear =>
      'तपाईंका स्वास्थ्य उपलब्धिहरू यहाँ देखिनेछन्।';

  @override
  String get healthMilestones => 'स्वास्थ्य उपलब्धिहरू';

  @override
  String dayNumber(int day) {
    return '$dayऔँ दिन';
  }

  @override
  String get soberLabel => 'मदिरामुक्त';

  @override
  String get slipLabel => 'चिप्लिनु';

  @override
  String get noDataLabel => 'डाटा छैन';

  @override
  String get milestone24Hours => '२४ घण्टा';

  @override
  String get milestoneOneWeek => 'एक हप्ता';

  @override
  String get milestoneOneMonth => 'एक महिना';

  @override
  String get milestoneThreeMonths => 'तीन महिना';

  @override
  String get milestoneSixMonths => 'छ महिना';

  @override
  String get milestoneOneYear => 'एक वर्ष';

  @override
  String milestoneDayCount(int day) {
    return '$dayऔँ दिनको उपलब्धि';
  }

  @override
  String get maybeLaterLabel => 'सायद पछि';

  @override
  String get cancelLabel => 'रद्द गर्नुहोस्';
}
