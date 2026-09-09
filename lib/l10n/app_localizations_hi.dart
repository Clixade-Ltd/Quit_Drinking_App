// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get skip => 'छोड़ें';

  @override
  String get continueButton => 'जारी रखें';

  @override
  String get getStarted => 'शुरू करें';

  @override
  String get onboardingTitle1 => 'अपने जीवन पर नियंत्रण पाएं';

  @override
  String get onboardingSubtitle1 =>
      'अपनी यात्रा को ट्रैक करें, हर सफलता का जश्न मनाएं और दिन-ब-दिन स्वस्थ बनें।';

  @override
  String get onboardingTitle2 => 'आपका AI रिकवरी साथी';

  @override
  String get onboardingSubtitle2 =>
      'व्यक्तिगत मार्गदर्शन, स्वस्थ आदतें, प्रेरणा और प्रगति रिपोर्ट प्राप्त करें।';

  @override
  String get goodMorning => 'सुप्रभात';

  @override
  String get goodAfternoon => 'शुभ दोपहर';

  @override
  String get goodEvening => 'शुभ संध्या';

  @override
  String get goodNight => 'शुभ रात्रि';

  @override
  String get embracingClarity => 'स्पष्टता को अपनाएं, एक समय में एक दिन।';

  @override
  String get streakLabel => 'स्ट्रिक';

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
  String get premiumPlan => 'प्रीमियम प्लान';

  @override
  String get premiumPlanSubtitle => 'अपना संपूर्ण रिकवरी अनुभव अनलॉक करें';

  @override
  String get accountAndSupport => 'अकाउंट और सपोर्ट';

  @override
  String get privacyPolicy => 'गोपनीयता नीति';

  @override
  String get privacyPolicySubtitle =>
      'डेटा शेयरिंग और अकाउंट सुरक्षा प्रबंधित करें';

  @override
  String get termsOfService => 'सेवा की शर्तें';

  @override
  String get termsOfServiceSubtitle =>
      'अक्सर पूछे जाने वाले प्रश्न, संपर्क करें और संसाधन';

  @override
  String get shareApp => 'ऐप शेयर करें';

  @override
  String get shareAppSubtitle => 'दोस्तों के साथ ऐप शेयर करें';

  @override
  String get resetData => 'डेटा रीसेट करें';

  @override
  String get resetDataSubtitle => 'इस डिवाइस पर सहेजा गया सब कुछ हटाएं';

  @override
  String get resetAllDataTitle => 'सभी डेटा रीसेट करें?';

  @override
  String get resetAllDataMessage =>
      'यह इस डिवाइस पर सहेजी गई प्रोफाइल, जर्नल और प्रगति को पूरी तरह से मिटा देगा। इसे वापस नहीं लाया जा सकता।';

  @override
  String get cancel => 'रद्द करें';

  @override
  String get reset => 'रीसेट करें';

  @override
  String get chooseFromGallery => 'गैलरी से चुनें';

  @override
  String get takePhoto => 'फोटो खींचें';

  @override
  String get removePhoto => 'फोटो हटाएं';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'फोटो अपडेट नहीं की जा सकी: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'फोटो हटाई नहीं जा सकी: $error';
  }

  @override
  String get photoTooLarge =>
      'कंप्रेस करने के बाद भी फोटो बहुत बड़ी है — कृपया दूसरी फोटो चुनें।';

  @override
  String get unableToLoadProfile => 'आपकी प्रोफाइल लोड करने में असमर्थ';

  @override
  String get pleaseTryAgain => 'कृपया पुनः प्रयास करें।';

  @override
  String get tryAgain => 'पुनः प्रयास करें';

  @override
  String get profileNotFound => 'प्रोफाइल नहीं मिली';

  @override
  String get refresh => 'रिफ्रेश करें';

  @override
  String get noProfileDataFound =>
      'इस डिवाइस पर अभी तक कोई प्रोफाइल डेटा नहीं मिला।';

  @override
  String couldNotResetData(String error) {
    return 'डेटा रीसेट नहीं किया जा सका: $error';
  }

  @override
  String get navHome => 'होम';

  @override
  String get navStats => 'आंकड़े';

  @override
  String get navJournal => 'जर्नल';

  @override
  String get navBadges => 'बैज';

  @override
  String get navProfile => 'प्रोफाइल';

  @override
  String featureComingSoon(String feature) {
    return '$feature जल्द ही उपलब्ध होगा।';
  }

  @override
  String get appWordmark => 'कल्याण';

  @override
  String get appTitle => 'शराब पीना छोड़ें';

  @override
  String get splashSubtitle => 'शराब मुक्त जीवन की ओर\nपहला कदम बढ़ाएं';

  @override
  String get preparingJourney => 'आपकी यात्रा\nतैयार हो रही है';

  @override
  String get taskMorningMeditation => 'सुबह का ध्यान (10 मिनट)';

  @override
  String get taskReadChapter => '\"The Sober Diaries\" का अध्याय 4 पढ़ें';

  @override
  String get taskEveningJournal => 'शाम का आभार जर्नल';

  @override
  String get close => 'बंद करें';

  @override
  String get youAreDoingGreat => 'आप बहुत बढ़िया कर रहे हैं!';

  @override
  String get shareMilestone => 'माइलस्टोन शेयर करें';

  @override
  String shareMilestoneMessage(int days) {
    return 'मैं अपनी रिकवरी यात्रा के $daysवें दिन पर हूं! 💪';
  }

  @override
  String get shareMilestoneSubject => 'मेरा रिकवरी माइलस्टोन';

  @override
  String get weeklyReportReadyTitle => 'आपकी साप्ताहिक रिपोर्ट तैयार है';

  @override
  String get weeklyReportReadySubtitle =>
      'आपका सप्ताह कैसा रहा देखने के लिए टैप करें';

  @override
  String get howAreYouFeeling => 'आप कैसा महसूस कर रहे हैं?';

  @override
  String get moodTough => 'कठिन';

  @override
  String get moodOkay => 'ठीक-ठाक';

  @override
  String get moodGood => 'अच्छा';

  @override
  String get moneySaved => 'बचाए गए पैसे';

  @override
  String get caloriesSaved => 'बचाई गई कैलोरी';

  @override
  String get healthScore => 'हेल्थ स्कोर';

  @override
  String get drinksAvoided => 'बची हुई ड्रिंक्स';

  @override
  String get estimated => 'अनुमानित';

  @override
  String get aiGenerated => 'AI द्वारा जनरेट किया गया';

  @override
  String get daysCapsLabel => 'दिन';

  @override
  String get todaysMotivation => 'आज की प्रेरणा';

  @override
  String get defaultMotivationQuote =>
      'आपने अपनी प्रतिबद्धता को सफलतापूर्वक बनाए रखा है। सकारात्मक बदलाव की लहर पर आगे बढ़ते रहें।';

  @override
  String get talkToCoach => 'कोच से बात करें';

  @override
  String get havingACraving => 'मुझे तड़प/इच्छा (Craving) हो रही है';

  @override
  String get unlockWeeklyReportsTitle => 'साप्ताहिक रिपोर्ट अनलॉक करें';

  @override
  String get unlockWeeklyReportsMessage =>
      'हर हफ्ते अपने सोबर दिन, मूड ट्रेंड्स और AI फीडबैक देखें। प्रीमियम में अपग्रेड करें।';

  @override
  String get maybeLater => 'शायद बाद में';

  @override
  String get upgrade => 'अपग्रेड करें';

  @override
  String get weeklyReportTitle => 'साप्ताहिक रिपोर्ट';

  @override
  String get weeklyReportsPremiumTitle =>
      'साप्ताहिक रिपोर्ट एक प्रीमियम फीचर है';

  @override
  String get weeklyReportsPremiumMessage =>
      'अपने सोबर दिन, मूड ट्रेंड्स, इच्छाएं और AI फीडबैक देखें।';

  @override
  String get upgradeToPremium => 'प्रीमियम में अपग्रेड करें';

  @override
  String get couldNotGenerateReport => 'अभी आपकी रिपोर्ट जनरेट नहीं की जा सकी।';

  @override
  String get tryAgainLower => 'पुनः प्रयास करें';

  @override
  String get statSoberDays => 'सोबर दिन';

  @override
  String get statAvgMood => 'औसत मूड';

  @override
  String get statCravings => 'तड़प (Cravings)';

  @override
  String get statMoneySaved => 'बचाए गए पैसे';

  @override
  String get coachFeedback => 'कोच फीडबैक';

  @override
  String get journalInsights => 'जर्नल इनसाइट्स';

  @override
  String get next => 'आगे';

  @override
  String get question1Title => 'आपका लक्ष्य क्या है';

  @override
  String get question1Subtitle =>
      'वह लक्ष्य चुनें जो आपके लिए सबसे महत्वपूर्ण है';

  @override
  String get goalQuitCompletely => 'पूरी तरह से छोड़ दें';

  @override
  String get goalReduceDrinking => 'पीना कम करें';

  @override
  String get goalTakeABreak => 'एक ब्रेक लें';

  @override
  String get goalBuildHealthierHabits => 'अधिक स्वस्थ आदतें बनाएं';

  @override
  String get question3Title => 'अपनी दिनचर्या के बारे में\nबताएं';

  @override
  String get drinksPerWeek => 'प्रति सप्ताह ड्रिंक्स';

  @override
  String get moneySpentPerWeek => 'प्रति सप्ताह खर्च किए गए पैसे';

  @override
  String get drinkingLevel => 'पीने का स्तर';

  @override
  String get triggersLabel => 'ट्रिगर्स';

  @override
  String get levelSocial => 'सामाजिक';

  @override
  String get levelRegular => 'नियमित';

  @override
  String get levelHeavy => 'अधिक';

  @override
  String get levelDependent => 'निर्भर';

  @override
  String get triggerStress => 'तनाव (Stress)';

  @override
  String get triggerLoneliness => 'अकेलापन';

  @override
  String get triggerHabit => 'आदत';

  @override
  String get triggerSadness => 'उदासी';

  @override
  String get triggerAnger => 'गुस्सा';

  @override
  String get triggerBoredom => 'ऊब जाना';

  @override
  String get triggerSocialPressure => 'सामाजिक दबाव';

  @override
  String get triggerCelebration => 'जश्न';

  @override
  String get triggerSleepProblems => 'नींद की समस्याएं';

  @override
  String get triggerWorkPressure => 'काम का दबाव';

  @override
  String get question4Title => 'आप बदलाव क्यों चाहते हैं?';

  @override
  String get question4Subtitle => 'आपका कारण आपको प्रेरित रखने में मदद करेगा।';

  @override
  String get reasonImproveHealth => 'स्वास्थ्य में सुधार';

  @override
  String get reasonSaveMoney => 'पैसे बचाना';

  @override
  String get reasonFamily => 'परिवार के लिए';

  @override
  String get reasonBetterSleep => 'बेहतर नींद';

  @override
  String get reasonMentalClarity => 'मानसिक स्पष्टता';

  @override
  String get reasonFitness => 'फिटनेस';

  @override
  String get reasonSelfRespect => 'आत्मसम्मान';

  @override
  String get reasonCareer => 'करियर';

  @override
  String get milestoneUnlockedLabel => 'माइलस्टोन अनलॉक हुआ';

  @override
  String incredibleNamePrefix(String name) {
    return 'अद्भुत, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount बचाए गए';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count ड्रिंक्स से बचे';
  }

  @override
  String get shareMyMilestone => 'मेरा माइलस्टोन शेयर करें';

  @override
  String get milestoneImageShareError =>
      'माइलस्टोन इमेज नहीं बनाई जा सकी। कृपया पुनः प्रयास करें।';

  @override
  String get dailyCheckInTitle => 'दैनिक चेक-इन';

  @override
  String get howAreYouFeelingToday => 'आज आप कैसा महसूस कर रहे हैं?';

  @override
  String get honestAnswerHelp =>
      'आपका ईमानदार जवाब हमें आपकी बेहतर मदद करने में सहायता करता है';

  @override
  String get didYouDrinkToday => 'क्या आपने आज शराब पी?';

  @override
  String get noLabel => 'नहीं';

  @override
  String get yesLabel => 'हां';

  @override
  String get cravingLevelNow => 'अभी इच्छा/तड़प का स्तर क्या है?';

  @override
  String get anythingOnMind => 'मन में कुछ चल रहा है?';

  @override
  String get optionalLabel => '(वैकल्पिक)';

  @override
  String get dailyNoteHint =>
      'अपने दिन, ट्रिगर्स, सफलताओं के बारे में लिखें...';

  @override
  String get alreadyCheckedInToday => 'आज चेक-इन पूरा हो चुका है';

  @override
  String get saveCheckIn => 'चेक-इन सहेजें';

  @override
  String get checkInsHelpTrack =>
      'चेक-इन समय के साथ आपकी प्रगति को ट्रैक करने में मदद करते हैं';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'आप आज का चेक-इन पहले ही पूरा कर चुके हैं।';

  @override
  String get pleaseAnswerBothQuestions =>
      'कृपया पहले ऊपर दिए गए दोनों प्रश्नों के उत्तर दें';

  @override
  String get checkInSaved => 'चेक-इन सहेजा गया';

  @override
  String get cravingNone => 'बिल्कुल नहीं';

  @override
  String get cravingLow => 'कम';

  @override
  String get cravingMedium => 'मध्यम';

  @override
  String get cravingStrong => 'तीव्र';

  @override
  String get moodBad => 'खराब';

  @override
  String get moodLow => 'कमजोर';

  @override
  String get moodGreat => 'बहुत बढ़िया';

  @override
  String get sosSupportTitle => 'SOS सहायता';

  @override
  String notAloneMessage(String name) {
    return 'आप अकेले नहीं हैं, $name';
  }

  @override
  String get cravingsPassMessage =>
      'तड़प शांत हो जाती है। इस पल से उबरने के लिए नीचे से कुछ चुनें।';

  @override
  String get breathingExercise => 'सांस लेने का व्यायाम';

  @override
  String get breathingExerciseSubtitle => 'मार्गदर्शित 4-7-8 तकनीक, 2 मिनट';

  @override
  String get rideTheWave => 'राइड द वेव';

  @override
  String get rideTheWaveSubtitle =>
      '15 मिनट का टाइमर — इच्छा हमेशा शांत हो जाती है';

  @override
  String get copingTips => 'बचाव के तरीके';

  @override
  String get copingTipsSubtitle => 'आपके ट्रिगर्स के लिए व्यक्तिगत रणनीतियां';

  @override
  String get talkToAiCoach => 'AI कोच से बात करें';

  @override
  String get talkToAiCoachSubtitle => 'अपने रिकवरी साथी से चैट करें';

  @override
  String get callSomeone => 'किसी को कॉल करें';

  @override
  String get callSomeoneSubtitle => 'अपने विश्वसनीय संपर्क से बात करें';

  @override
  String get contactsPermissionNeeded =>
      'कॉल करने के लिए कॉन्टैक्ट्स की अनुमति आवश्यक है।';

  @override
  String get beatenCravingsPrefix => 'आपने पहले भी ';

  @override
  String beatenCravingsCount(int count) {
    return '$count बार';
  }

  @override
  String get beatenCravingsSuffix =>
      ' इच्छाओं पर जीत हासिल की है। आप फिर कर सकते हैं।';

  @override
  String get tellUsAboutYourself => 'अपने बारे में बताएं';

  @override
  String get detailsSubtitle =>
      'यह जानकारी आपकी रिकवरी यात्रा को व्यक्तिगत बनाने में मदद करती है।';

  @override
  String get nameLabel => 'नाम';

  @override
  String get nameHint => 'जैसे, एलेक्स';

  @override
  String get ageLabel => 'उम्र';

  @override
  String get ageHint => 'जैसे, 32';

  @override
  String get sexAssignedAtBirth => 'जन्म के समय लिंग';

  @override
  String get sexFemale => 'महिला';

  @override
  String get sexMale => 'पुरुष';

  @override
  String get heightLabel => 'लंबाई';

  @override
  String get weightLabel => 'वजन';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'दैनिक सीमा पूरी हो गई';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'आपने आज के सभी $limit मुफ्त संदेशों का उपयोग कर लिया है। असीमित चैट के लिए अपग्रेड करें।';
  }

  @override
  String get coachConnectError =>
      'अभी कनेक्ट नहीं हो सका। कृपया कुछ समय बाद पुनः प्रयास करें।';

  @override
  String get clearConversationTitle => 'बातचीत हटाएं?';

  @override
  String get clearConversationMessage =>
      'यह आपकी कोच चैट हिस्ट्री को हमेशा के लिए हटा देगा।';

  @override
  String get clearLabel => 'हटाएं';

  @override
  String get recoveryCoachTitle => 'रिकवरी कोच';

  @override
  String get onlineLabel => 'ऑनलाइन';

  @override
  String get clearConversationMenuItem => 'बातचीत हटाएं';

  @override
  String chatGreeting(String name) {
    return 'नमस्ते $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'आप अपनी यात्रा के $daysवें दिन पर हैं। जब भी आप बात करना चाहें मैं उपलब्ध हूं।';
  }

  @override
  String get quickPromptsLabel => 'त्वरित सुझाव';

  @override
  String get promptCravingLabel => 'तीव्र इच्छा हो रही है';

  @override
  String get promptCravingSubtitle => 'जल्दी शांत हों';

  @override
  String get promptMotivationLabel => 'प्रेरणा की जरूरत है';

  @override
  String get promptMotivationSubtitle => 'मुश्किल समय में मदद';

  @override
  String get promptSocialLabel => 'सामाजिक स्थिति';

  @override
  String get promptSocialSubtitle => 'किसी सभा/पार्टी में कैसे संभालें';

  @override
  String get promptSlippedLabel => 'मुझसे गलती हो गई';

  @override
  String get promptSlippedSubtitle => 'कोई जजमेंट नहीं, केवल सहायता';

  @override
  String get typeMessageHint => 'संदेश टाइप करें...';

  @override
  String get editProfileTitle => 'प्रोफाइल एडिट करें';

  @override
  String couldNotSaveProfile(String error) {
    return 'प्रोफाइल सहेजी नहीं जा सकी: $error';
  }

  @override
  String get heightCmLabel => 'लंबाई (सेमी)';

  @override
  String get weightKgLabel => 'वजन (किग्रा)';

  @override
  String get saveChangesLabel => 'बदलाव सहेजें';

  @override
  String get premiumBadgeLabel => 'प्रीमियम';

  @override
  String get featureAdvancedInsights => 'एडवांस्ड एनालिटिक्स';

  @override
  String get featureUnlimitedJournal => 'असीमित जर्नल प्रविष्टियां';

  @override
  String get featureUnlimitedChat => 'AI कोच के साथ असीमित चैट';

  @override
  String get featureCommunityGroups => 'विशेष कम्युनिटी ग्रुप्स';

  @override
  String get featurePrioritySupport => 'प्राथमिकता सहायता';

  @override
  String get featureThemePacks => 'कस्टम थीम पैक्स';

  @override
  String get featureDataExport => 'डेटा एक्सपोर्ट';

  @override
  String get featureAdFree => 'विज्ञापन-मुक्त अनुभव';

  @override
  String get premiumMemberTitle => 'आप एक प्रीमियम सदस्य हैं';

  @override
  String get unlockFullRecoveryTitle => 'अपना संपूर्ण रिकवरी\nअनुभव अनलॉक करें';

  @override
  String get premiumMemberSubtitle =>
      'सपोर्ट के लिए धन्यवाद — नीचे दी गई सभी प्रीमियम सुविधाएं अनलॉक हैं।';

  @override
  String get premiumJoinSubtitle =>
      'उन हजारों लोगों में शामिल हों जो अपनी रिकवरी को तेज कर रहे हैं।';

  @override
  String get monthlyPlanLabel => 'मासिक';

  @override
  String get perMonthSuffix => '/महीना';

  @override
  String get cancelAnytimeLabel => 'कभी भी रद्द करें';

  @override
  String get yearlyPlanLabel => 'वार्षिक';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'वार्षिक रूप से $amount शुल्क लिया जाएगा';
  }

  @override
  String get bestValueLabel => 'सर्वोत्तम मूल्य';

  @override
  String get alreadyPremiumLabel => 'आप प्रीमियम हैं ✓';

  @override
  String get startPremiumLabel => 'प्रीमियम शुरू करें';

  @override
  String get manageSubscriptionLabel =>
      'अपने डिवाइस की सब्सक्रिप्शन सेटिंग्स से प्रबंधित या रद्द करें।';

  @override
  String get noCommitmentLabel => 'कोई प्रतिबद्धता नहीं। कभी भी रद्द करें।';

  @override
  String get continueFreePlanLabel => 'फ्री प्लान के साथ जारी रखें';

  @override
  String get backToHomeLabel => 'होम पर वापस जाएं';

  @override
  String get cancelPremiumLabel => 'प्रीमियम रद्द करें';

  @override
  String get cancelPremiumTitle => 'प्रीमियम रद्द करें?';

  @override
  String get cancelPremiumMessage =>
      'आप असीमित जर्नल, चैट और साप्ताहिक रिपोर्ट का एक्सेस खो देंगे।';

  @override
  String get keepPremiumLabel => 'प्रीमियम बनाए रखें';

  @override
  String get nowPremiumMessage =>
      'अब आप प्रीमियम हैं! पूर्ण अनुभव का आनंद लें।';

  @override
  String get premiumCancelledMessage =>
      'प्रीमियम रद्द कर दिया गया। आप वापस फ्री प्लान पर हैं।';

  @override
  String get termsOfUseLabel => 'उपयोग की शर्तें';

  @override
  String get navHomeLabel => 'होम';

  @override
  String get navStatsLabel => 'आंकड़े';

  @override
  String get navJournalLabel => 'जर्नल';

  @override
  String get navBadgesLabel => 'बैज';

  @override
  String get navProfileLabel => 'प्रोफाइल';

  @override
  String get recoveryGoalsTitle => 'रिकवरी लक्ष्य';

  @override
  String get drinksPerWeekLabel => 'प्रति सप्ताह ड्रिंक्स';

  @override
  String get quitReasonsLabel => 'छोड़ने के कारण';

  @override
  String get quitReasonsHelperText =>
      'कई कारणों को अल्पविराम (comma) से अलग करें।';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'रिकवरी लक्ष्य सहेजे नहीं जा सके: $error';
  }

  @override
  String get goalHint => 'जैसे, पूरी तरह से परहेज';

  @override
  String get drinksPerWeekHint => 'जैसे, 12';

  @override
  String get quitReasonsHint => 'जैसे, स्वास्थ्य, परिवार, पैसा';

  @override
  String get todaysPrompt => 'आज का प्रश्न';

  @override
  String get defaultJournalPrompt => 'आज आपके मन में क्या चल रहा है?';

  @override
  String get aiJournalInsights => 'AI जर्नल इनसाइट्स';

  @override
  String get unlockJournalInsightsMessage =>
      'अपनी प्रविष्टियों से साप्ताहिक पैटर्न और मूड ट्रेंड्स अनलॉक करें।';

  @override
  String get notEnoughJournalData =>
      'अभी पर्याप्त डेटा नहीं है — इस हफ्ते कुछ प्रविष्टियां लिखें।';

  @override
  String get openEntry => 'खोलें';

  @override
  String get editEntry => 'संपादित करें';

  @override
  String get deleteEntry => 'हटाएं';

  @override
  String get searchJournalEntries => 'खोजें...';

  @override
  String get writeNewEntry => 'नई प्रविष्टि लिखें';

  @override
  String get recentEntries => 'हाल की प्रविष्टियां';

  @override
  String get noJournalEntriesYet =>
      'अभी तक कोई प्रविष्टि नहीं है — ऊपर अपने विचार लिखें।';

  @override
  String get noEntriesMatchFilters =>
      'आपकी खोज से मेल खाती कोई प्रविष्टि नहीं मिली।';

  @override
  String get weeklyJournalLimitReached => 'साप्ताहिक सीमा पूरी हो गई';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'आपने इस सप्ताह की सभी $limit मुफ्त प्रविष्टियों का उपयोग कर लिया है।';
  }

  @override
  String get newEntry => 'नई प्रविष्टि';

  @override
  String get writeYourThoughts => 'अपने विचार लिखें';

  @override
  String get saveEntry => 'प्रविष्टि सहेजें';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return 'इस सप्ताह $limit में से $remaining मुफ्त प्रविष्टियां बची हैं';
  }

  @override
  String get deleteEntryQuestion => 'प्रविष्टि हटाएं?';

  @override
  String get deleteEntryConfirmation =>
      'यह प्रविष्टि स्थायी रूप से हटा दी जाएगी।';

  @override
  String get journalEntryNotFound => 'प्रविष्टि नहीं मिली';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'यह प्रविष्टि शायद हटा दी गई है।';

  @override
  String get goBack => 'वापस जाएं';

  @override
  String get journalEntryTitle => 'जर्नल प्रविष्टि';

  @override
  String get moodStruggling => 'संघर्षरत';

  @override
  String get moodUnwell => 'अस्वस्थ';

  @override
  String get moodNeutral => 'सामान्य';

  @override
  String get whatHappenedToday => 'आज क्या हुआ?';

  @override
  String get trigger => 'ट्रिगर';

  @override
  String get whatHelped => 'किस चीज से मदद मिली';

  @override
  String get whatIllTryNextTime => 'अगली बार मैं क्या प्रयास करूंगा';

  @override
  String get journalPrivacyMessage =>
      'आपके विचार निजी हैं और सुरक्षित रूप से सहेजे गए हैं।';

  @override
  String get unlocked => 'अनलॉक हुआ';

  @override
  String daysLeft(int count) {
    return '$count दिन शेष';
  }

  @override
  String daysCount(int count) {
    return '$count दिन';
  }

  @override
  String get firstReflection => 'पहला\nविचार';

  @override
  String get oneJournalEntry => '1 जर्नल प्रविष्टि';

  @override
  String get openBook => 'खुली किताब';

  @override
  String get tenJournalEntries => '10 जर्नल प्रविष्टियां';

  @override
  String get dedicatedWriter => 'समर्पित\nलेखक';

  @override
  String get thirtyJournalEntries => '30 जर्नल प्रविष्टियां';

  @override
  String get firstConversation => 'पहली\nबातचीत';

  @override
  String get oneAiCoachChat => '1 AI कोच चैट';

  @override
  String get keepTalking => 'बातचीत जारी रखें';

  @override
  String get fiveConversations => '5 बातचीत';

  @override
  String get coachCompanion => 'कोच\nसाथी';

  @override
  String get twentyConversations => '20 बातचीत';

  @override
  String get checkInHabit => 'चेक-इन\nआदत';

  @override
  String get sevenCheckIns => '7 चेक-इन';

  @override
  String get consistencyPro => 'निरंतरता\nप्रो';

  @override
  String get thirtyCheckIns => '30 चेक-इन';

  @override
  String get dedicatedJourney => 'समर्पित\nयात्रा';

  @override
  String get hundredCheckIns => '100 चेक-इन';

  @override
  String get goalGetter => 'गोल गेटर';

  @override
  String get threeGoalsCompleted => '3 लक्ष्य पूरे हुए';

  @override
  String get goalAchiever => 'लक्ष्य\nप्राप्तकर्ता';

  @override
  String get tenGoalsCompleted => '10 लक्ष्य पूरे हुए';

  @override
  String get firstSavings => 'पहली\nबचत';

  @override
  String get fiveHundredSaved => '\$500 बचाए';

  @override
  String get smartSaver => 'स्मार्ट सेवर';

  @override
  String get oneThousandSaved => '\$1,000 बचाए';

  @override
  String get bigSaver => 'बिग सेवर';

  @override
  String get fiveThousandSaved => '\$5,000 बचाए';

  @override
  String currencyProgress(String current, String target) {
    return '\$$target में से \$$current';
  }

  @override
  String countProgress(int current, int target) {
    return '$target में से $current';
  }

  @override
  String get firstMilestoneWaiting =>
      'आगे बढ़ते रहें — आपका पहला माइलस्टोन आपका इंतजार कर रहा है!';

  @override
  String get badgesAndMilestones => 'बैज और माइलस्टोन्स';

  @override
  String get yourMilestoneJourney => 'आपकी माइलस्टोन यात्रा';

  @override
  String milestonesAchieved(int count) {
    return '$count माइलस्टोन प्राप्त किए।\nदेखने के लिए टैप करें';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'आपने अपनी यात्रा में $total में से $unlocked माइलस्टोन अनलॉक किए हैं।';
  }

  @override
  String get remaining => 'शेष';

  @override
  String get complete => 'पूर्ण';

  @override
  String get nextMilestone => 'अगला माइलस्टोन';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% पूरा';
  }

  @override
  String get sobrietyMilestones => 'सोब्रायटी माइलस्टोन्स';

  @override
  String get journeyBadges => 'यात्रा बैज';

  @override
  String get bronze => 'कांस्य (Bronze)';

  @override
  String get silver => 'रजत (Silver)';

  @override
  String get gold => 'स्वर्ण (Gold)';

  @override
  String get platinum => 'प्लेटिनम';

  @override
  String get diamond => 'डायमंड';

  @override
  String get analyzingYourJourney =>
      'आपकी यात्रा का विश्लेषण किया जा रहा है...';

  @override
  String get aiCreatingSanctuary => 'हमारा AI आपकी व्यक्तिगत जगह बना रहा है।';

  @override
  String get understandingHabits => 'आदतों को समझा जा रहा है...';

  @override
  String get calculatingBaseline => 'बेसलाइन की गणना की जा रही है...';

  @override
  String get personalizingPlan => 'प्लान को व्यक्तिगत बनाया जा रहा है...';

  @override
  String get finalizingSanctuary => 'तैयारियां पूरी की जा रही हैं...';

  @override
  String get creatingYourPlan => 'आपका प्लान बनाया जा रहा है...';

  @override
  String get personalizedPlanError =>
      'आपका व्यक्तिगत प्लान नहीं बनाया जा सका। पुनः प्रयास करें।';

  @override
  String get retry => 'पुनः प्रयास करें';

  @override
  String get breathInhale => 'सांस अंदर लें';

  @override
  String get breathHold => 'रोक कर रखें';

  @override
  String get breathExhale => 'सांस बाहर छोड़ें';

  @override
  String get breathDone => 'पूर्ण';

  @override
  String get breathGreatJob => 'बहुत बढ़िया!';

  @override
  String breathSessionsToday(int count) {
    return 'आज $count सत्र पूरे हुए';
  }

  @override
  String get endExercise => 'व्यायाम समाप्त करें';

  @override
  String get done => 'हो गया';

  @override
  String get noCopingTipsYet => 'अभी कोई सुझाव नहीं हैं';

  @override
  String get copingStrategiesWillAppear =>
      'आपकी रणनीतियां प्लान तैयार होने के बाद यहां दिखाई देंगी।';

  @override
  String get strategiesTailoredToTriggers =>
      'आपके ट्रिगर्स के अनुकूल रणनीतियां';

  @override
  String get cravingsPeakAndPass => 'इच्छाएं बढ़ती हैं\nऔर शांत हो जाती हैं';

  @override
  String get rideTheWaveDescription =>
      'अधिकांश तड़प 15 मिनट के भीतर शांत हो जाती है। हमारे साथ बने रहें।';

  @override
  String get stayWithIt => 'धैर्य बनाए रखें';

  @override
  String get youMadeIt => 'आपने कर दिखाया';

  @override
  String get readyWhenYouAre => 'जब आप तैयार हों';

  @override
  String get rideItAgain => 'पुनः प्रयास करें';

  @override
  String get start15MinuteTimer => '15-मिनट का टाइमर शुरू करें';

  @override
  String get rideTheWaveCompletedMessage =>
      'आपने इच्छा को हरा दिया। यह सच्ची ताकत है। 💪';

  @override
  String get myProgress => 'मेरी प्रगति';

  @override
  String get weekLabel => 'सप्ताह';

  @override
  String get monthLabel => 'महीना';

  @override
  String get allLabel => 'सभी';

  @override
  String get daysSoberStatLabel => 'सोबर\nदिन';

  @override
  String get savedStatLabel => 'बचाए गए';

  @override
  String get avoidedStatLabel => 'बचे हुए';

  @override
  String get moodTrends => 'मूड ट्रेंड्स';

  @override
  String get cravingsPattern => 'इच्छा का पैटर्न';

  @override
  String get unlockLabel => 'अनलॉक करें';

  @override
  String get unlockFullStats => 'पूरे आंकड़े अनलॉक करें';

  @override
  String get premiumStatsMessage =>
      'मूड और इच्छा के पैटर्न प्रीमियम फीचर्स हैं।';

  @override
  String get healthMilestonesWillAppear =>
      'आपके स्वास्थ्य माइलस्टोन्स यहां दिखाई देंगे।';

  @override
  String get healthMilestones => 'स्वास्थ्य माइलस्टोन्स';

  @override
  String dayNumber(int day) {
    return 'दिन $day';
  }

  @override
  String get soberLabel => 'सोबर';

  @override
  String get slipLabel => 'गलती/चूक';

  @override
  String get noDataLabel => 'कोई डेटा नहीं';

  @override
  String get milestone24Hours => '24 घंटे';

  @override
  String get milestoneOneWeek => 'एक सप्ताह';

  @override
  String get milestoneOneMonth => 'एक महीना';

  @override
  String get milestoneThreeMonths => 'तीन महीने';

  @override
  String get milestoneSixMonths => 'छह महीने';

  @override
  String get milestoneOneYear => 'एक वर्ष';

  @override
  String milestoneDayCount(int day) {
    return 'दिन $day का माइलस्टोन';
  }

  @override
  String get maybeLaterLabel => 'शायद बाद में';

  @override
  String get cancelLabel => 'रद्द करें';
}
